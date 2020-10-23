<?php

namespace app\common\model;

// use 

class ManageRoleOperationRel extends Common
{
    /**
     * 判断管理员是否有当前的操作权限
     * @param $manage_id
     * @param $p_id 在operation表中的模块的id
     * @param $cont_name
     * @param $act_name
     */
    public function checkPerm($manage_id, $p_id, $cont_name, $act_name)
    {
        $operationModel = new Operation();
        // 是否属于不作判断的权限
        if ($operationModel->checkNeedPerm($p_id,$cont_name,$act_name)) {
        	return array('status' => true);
        }
        // 取所有的角色所对应的权限
        $list = $this
            ->distinct(true)
            ->field('o.*')
            ->alias('mror')
            ->join(config('database.prefix').'operation o', 'o.id = mror.operation_id')
            ->join(config('database.prefix').'manage_role_rel mrr', 'mror.manage_role_id = mrr.role_id')
            ->where('mrr.manage_id','EQ',$manage_id)
            ->select();
        $newList = array_column($list->toArray(),'name','id');

        if($list->isEmpty()){
            return json(201, '该角色无权限');       //可怜的，一个权限都没有
        }
        $countWhere['type'] = 'c';
        $countWhere['parent_id'] = $p_id;
        $countWhere['code'] = $cont_name;
        $contOperation = $operationModel->where($countWhere)->find();
        if(!$contOperation){
            return json(201, '没有找到控制器，请联系平台管理员');
        }
        // 查询方法
        $actWhere['type'] = 'a';
        $actWhere['parent_id'] = $contOperation['id'];
        $actWhere['code'] = $act_name;
        $actOperation = $operationModel->where($actWhere)->find();
        if(!$actOperation){
            return json(202, '没有找到方法，请联系平台管理员');
        }
        //查看是否是是关联权限，如果是关联权限去查找对应的关联操作的权限
        if($actOperation['perm_type'] == $operationModel::PERM_TYPE_REL){
            $actOperation = $operationModel->where(['id'=>$actOperation['parent_menu_id']])->find();
            if(!$actOperation){
                return json(203, '没有找到此方法所对应的关联方法，请联系平台管理员');
            }
        }
        if(isset($newList[$actOperation['id']])){
            return array('status' => true);
        }else{
            return json(204, '您没有权限访问此页面');
        }
    }

    // 保存权限
    public function savePerm($role_id, $operations)
    {
    	// 先删除此角色的所有权限
    	$this->where(['manage_role_id' => $role_id])->delete();

    	$row['manage_role_id'] = $role_id;
    	foreach ($operations as $key => $value) {
    		$row['operation_id'] = $v['id'];
    		$data[] = $row;
    	}
    	$this->saveAll($data);

    	return true;
    }

}
