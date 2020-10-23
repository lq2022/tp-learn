<?php

namespace app\common\model;

use think\facade\Hook;

class Operation extends Common
{
    const MENU_START = 1;   //起始结点
    const MENU_MANAGE = 2;  //管理平台起始id
    const PERM_TYPE_SUB = 1; //主体权限
    const PERM_TYPE_HALFSUB = 2;  //半主体权限，在权限菜单上提现，但是不在左侧菜单上体现
    const PERM_TYPE_REL = 3;    //附加权限
    
    // 不需要权限判断的控制器和方法
    private $noPerm = [
        self::MENU_MANAGE => [
            'Index' => ['index','tagselectbrands','tagselectgoods','clearcache','welcome'],
            'Order' => ['statistics'],
            'Images' => ['uploadimage','listimage','manage','cropper'],
            'OperationLog' => ['getlastlog'],
            'Files' => ['uploadVideo'],
            'User' => ['userloglist','statistics'],
            'MessageCenter' => ['message','messageview','messagedel']
        ],
    ];

    // 判断控制器和方法是否不需要校验
    public function checkNeedPerm($p_id,$cont_name,$act_name)
    {
        if (isset($this->noPerm[$p_id][$cont_name])) {
            if (in_array($act_name, $this->noPerm[$p_id][$cont_name])) {
                return true;
            }
        }
        return false;
    }

    /**
     * 返回管理端的菜单信息
     * @param $manage_id
     * @param string $controllerName
     * @param string $actionName
     */
    public function manageMenu($manage_id, $controllerName="", $actionName="")
    {
        $parent_menu_id = self::MENU_MANAGE;
        $onMenu = [];
        cache('manage_operation_'.$manage_id,null);
        // dump(cache('manage_operation_'.$manage_id));
        //此处缓存曾导致菜单列表为空
        if(cache('?manage_operation_'.$manage_id)){
            $list = cache('manage_operation_'.$manage_id);
        }else{
            $manageModel = new Manage();
            $manageRoleRel = new ManageRoleRel();
 
            //如果是超管
            if($manage_id == $manageModel::TYPE_SUPER_ID){
                $list = $this->where(['perm_type'=>self::PERM_TYPE_SUB])->order('sort asc')->select();
            }else{
                //取此管理员的所有角色
                $roles = $manageRoleRel->where('manage_id', $manage_id)->select();
                if(!$roles->isEmpty()){
                    $roles = $roles->toArray();
                    $roles = array_column($roles, 'role_id');
                }else{
                    $roles = [];
                }
                // 到这里就说明用户是店铺的普通管理员，那么就取所有的角色所对应的权限
                $list = $this
                    ->distinct(true)
                    ->field('o.*')
                    ->alias('o')
                    ->join(config('database.prefix').'manage_role_operation_rel mror', 'o.id = mror.operation_id')
                    ->where('mror.manage_role_id', 'IN', $roles)
                    ->where('o.perm_type', self::PERM_TYPE_SUB)
                    ->order('o.sort asc')
                    ->select();
                    // SELECT DISTINCT  `o`.* FROM `operation` `o` INNER JOIN `manage_role_operation_rel` `mror` ON `o`.`id`=`mror`.`operation_id` WHERE  `mror`.`manage_role_id` IN ('')  AND `o`.`perm_type` = 1 ORDER BY `o`.`sort` ASC
                // dump($list);
            }
            if($list->isEmpty()){
                $list = []; //啥权限都没有
            }else{
                $list = $list->toArray();
            }
            //存储
            cache('manage_operation_'.$manage_id,$list,3600);
        }
         
        $re = $this->createTree($list, $parent_menu_id, "parent_menu_id",$onMenu);
        $this->addonsMenu($re);

        return $re;
    }

    //通过钩子，把插件里的菜单都吸出来，然后增加到树上
    private function addonsMenu(&$tree){
        $list = Hook::listen('menu', []);
//        $list = hook('menu', []);
        if($list){
            foreach($list as $v){
                if($v){
                    $this->addonsMenuAdd($v,$tree);
                }
            }
        }

    }
    //把某一个插件的菜单加到树上
    private function addonsMenuAdd($conf,&$tree){
        foreach($conf as $v){
            $this->addonsMenuAdd2($v,$tree);
        }
    }
    //把某一个插件的某一个菜单节点加到树上
    private function addonsMenuAdd2($opt,&$tree){
        //查找树
        if($opt['parent_menu_id'] != '0'){
            foreach($tree as &$v){
                if($v['id'] == $opt['parent_menu_id']){
                    //todo
                    if(!isset($v['children'])){
                        $v['children'] = [];
                    }
                    $this->addonsMenuAdd3($opt,$v['children']);
                    return true;
                }
                //查看他的孩子是否有
                if(isset($v['children']) && $this->addonsMenuAdd2($opt,$v['children'])){
                    return true;        //如果找到了，就不要空跑了。
                }
            }
        }else{
            //插入到一级菜单上，图标就需要自定义了，而且$opt里必须得有code字段
            $this->addonsMenuAdd3($opt,$tree);
        }
        return false;
    }

    //把一个插件的菜单加到这个节点的孩子列表里
    private function addonsMenuAdd3($opt,&$tree){
        if(!empty($tree)){
            foreach($tree as $k => $v){
                if($v['sort'] > $opt['sort']){
                    //插入到当前位置
                    array_splice($tree,$k,0,[$opt]);
                    return true;
                }
            }
            //能走到这里，插入到最后
            $tree[] = $opt;
        }else{
            $tree[] = $opt;
            return true;
        }
        return false;
    }

    /**
     * 根据传过来的数组，构建以p_id为父节点的树..
     * @param $list 构建树所需要的节点，此值是根据权限节点算出来的
     * @param $parent_menu_id   构建树的根节点
     * @param $p_str        根据物理节点（parent_id）还是逻辑节点(parent_menu_id)来构建树,只能选择这两个值
     * @param array $onMenu 当前url的节点信息
     * @param array $allOperation   所有的节点树，外面不用传进来，里面会自动判断没有了，就全部取出来，方便生成各个节点的url
     * @return array
     */
    public function createTree($list,$parent_menu_id,$p_str,$onMenu=[],$allOperation=[])
    {
        $data = [];

        //判断所有节点的值是否有，没有了，全部取出来，省的一个一个的查
        if(!$allOperation){
            $allOperation = $this->select();
            if(!$allOperation->isEmpty()){
                $allOperation = $allOperation->toArray();
            }else{
                $allOperation = [];
            }
            $nallOperation = [];
            foreach($allOperation as $v){
                $nallOperation[$v['id']] = $v;
            }
            $allOperation = $nallOperation;
        }
        foreach($list as $k => $v){
            if($v[$p_str] == $parent_menu_id){
                $row = $v;
                //判断是否是选中状态
                if(isset($onMenu[$v['id']])){
                    $row['selected'] = true;
                }else{
                    $row['selected'] = false;
                }
                //取当前节点的url
                $row['url'] = $this->getUrl($v['id'],$allOperation);

                $row['children'] = $this->createTree($list,$v['id'],$p_str,$onMenu,$allOperation);

                $data[] = $row;
            }
        }

        return $data;
    }

    /**
     * 根据当前节点，取出当前节点的url，用于后台菜单节点的url生成
     * @param $operation_id
     * @param $list
     */
    private function getUrl($operation_id,$list){
        if(!isset($list[$operation_id])){
            return "";
        }
        if($list[$operation_id]['type'] == 'm'){
            return url($list[$operation_id]['code'] . '/index/index');          //一个模型，搞什么url？

        }
        if($list[$operation_id]['type'] == 'c'){
            if(isset($list[$list[$operation_id]['parent_id']])){
                return url($list[$list[$operation_id]['parent_id']]['code'] . '/'.$list[$operation_id]['code'].'/index');
            }else{
                return "";
            }
        }
        if($list[$operation_id]['type'] == 'a'){
            //取控制器
            if(isset($list[$list[$operation_id]['parent_id']]) && isset($list[$list[$list[$operation_id]['parent_id']]['parent_id']])){
                return url($list[$list[$list[$operation_id]['parent_id']]['parent_id']]['code'] . '/'.$list[$list[$operation_id]['parent_id']]['code'].'/'.$list[$operation_id]['code']);
            }else{
                return "";
            }
        }
        return "";

    }

    /**
     * 递归取得节点下面的所有操作，按照菜单的展示来取
     * @param $pid
     * @param array $defaulNode 这些是默认选中的
     * @param int $level 层级深度
     * @return array
     */
    public function menuTree($pid, $defaulNode = [], $level = 1)
    {
        $area_tree = [];
        $where[] = ['parent_menu_id', 'eq', $pid];
        $where[] = ['perm_type', 'neq', self::PERM_TYPE_REL];
        // 查出不是附属权限的
        $list      = $this->where($where)->order('sort asc')->select()->toArray();
        foreach ($list as $key => $value) {
            $isChecked = '0';
            // 是否有该权限
            if (isset($defaulNode[$value['id']])) {
                $isChecked = '1';
            }
            $isLast = false;
            unset($where);
            $where[] = ['parent_menu_id', 'eq', $value['id']];
            $where[] = ['perm_type', 'neq', self::PERM_TYPE_REL];
            // 不是附属权限的查出来就可以
            $child = $this->where($where)->count();
            if (!$child) {
                $isLast = true;
            }
            $area_tree[$key] = [
                'id'       => $value['id'],
                'title'    => $value['name'],
                'isLast'   => $isLast,
                'level'    => $level,
                'parentId' => $value['parent_id'],
                "checkArr" => [
                    'type'      => '0',
                    'isChecked' => $isChecked,
                ]
            ];
            if ($child) {
                $level = $level + 1;
                $area_tree[$key]['children'] = $this->menuTree($value['id'], $defaulNode, $level);
            }

        }
        // dump($area_tree); 
        return $area_tree;
    }
}
