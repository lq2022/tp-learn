<?php
namespace app\Manage\controller;

use app\common\model\ManageRole;
use app\common\model\ManageRoleOperationRel;

class Role extends Base
{
    public function index()
    {
        if(request()->isAjax()){
            $ManageRoleModel = new ManageRole();
            return $ManageRoleModel->tableData(input());
        }else{
            return $this->fetch('index');
        }
    }

    public function add()
    {
        $this->view->engine->layout(false);
        $ManageRoleModel = new ManageRole();
        if(request()->isPost()){
            if(!input('?param.name')){
                return error_code(11070);
            }

            $data['name'] = input('param.name');
            $ManageRoleModel->save($data);
            return [
                'status' => true,
                'data' => '',
                'msg' => '添加成功'
            ];

        }
        return $this->fetch('edit');
    }
    public function del()
    {
        if(!input('?param.id')){
            return error_code(10000);
        }

        $ManageRoleModel = new ManageRole();
        return $ManageRoleModel->toDel(input('param.id'));

    }

    // 获取角色权限
    public function getOperation()
    {
        if (!input('?id')) {
            return json(201, '非法请求');
        }
        $ManageRoleModel = new ManageRole();
        $re              = $ManageRoleModel->getRoleOperation(input('id/d'));
        // halt(44); 
        // if (!$re['status']) {
        //     return $re;
        // }
        
        return json(0, '获取成功', $re['data']);
    }

    // 保存权限
    public function savePerm(){
        $post = input('param.');

        if(!isset($post['id'])){
            return json(202, '未定义的错误信息');
        }
        if(!isset($post['data'])){
            return json(203, '未定义的错误信息');
        }
        //保存角色信息
        $ManageRoleModel = new ManageRole();
        $ManageRoleInfo = $ManageRoleModel->where(['id'=>$post['id']])->find();
        if(!$ManageRoleInfo){
            return json(204, '没有此角色信息');
        }
        $mrorModel = new ManageRoleOperationRel();

        $mrorModel->savePerm($post['id'],$post['data']);

        return [
            'status' => true,
            'data' => '',
            'msg' => '设置成功'
        ];
    }
}