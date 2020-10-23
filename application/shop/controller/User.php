<?php

namespace app\shop\controller;

use think\Controller;
use app\common\model\User as UserModel;
use app\common\model\UserToken;
use think\Request;

class User extends Common
{
    // 登录
    public function login()
    {
        // 
        $data = input('');
        $UserModel = new UserModel();
        return $UserModel->toLogin($data);
    }

    // 用户信息: 传user_id和token过来
    public function info(Request $request)
    {
        $data = $request->param();
        if(!isset($data['user_id']) || !isset($data['token'])){
            return json(10006);
        }
        // 验证用户合法性
        (new UserToken())->checkUser($data);
        // 获取用户信息
//        (new UserModel())->getUserInfo($data);->toArray()
        $userInfo = (new UserModel())->where(array('id'=>$data['user_id']))->find();
        if($userInfo){
            unset($userInfo->password);
            return json(200, '获取成功', $userInfo);
        }else{
            return json(10007);
        }
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
        //
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        //
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
