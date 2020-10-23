<?php

namespace app\manage\controller;

use think\Controller;
use think\Request;
use app\common\model\Operation;
use app\common\model\ManageRoleOperationRel;

class Base extends Controller
{
    // 初始化
    protected function initialize()
    {
        if (!session('?manage')) {
            $this->redirect(url('common/login'));
        } 

        $cont_name = request()->controller();
        $act_name = request()->action();
        $operationModel = new Operation();
        // 判断当前是否有权限操作
        $mrorModel = new ManageRoleOperationRel();
        $perm = $mrorModel->checkPerm(session('manage.id'), $operationModel::MENU_MANAGE, $cont_name, $act_name);
        
        $this->view->engine->layout('layout');
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        //
    }
}
