<?php

namespace app\common\model;

use think\Model;
use app\common\model\UserLog;

class Manage extends Model
{
    const TYPE_SUPER_ID =13;    //超级管理员 id
    const STATUS_NORMAL = 1;    //用户状态 正常
    const STATUS_DISABLE = 2;   //用户状态 停用

    /**
     * 管理员登录
     * @param $data 用户登录信息
     */
    public function toLogin($data)
    {
        if(empty($data['username']) || empty($data['password'])){
            return json(201, '请输入账号或密码');
        }

        $userInfo = $this->where(array('username'=>$data['username'], 'password'=>encrypt($data['password'])))->find();
        if(!$userInfo){
            return json(202, '账号或密码错误');
        }
        if($userInfo->status != self::STATUS_NORMAL){
            return json(203, '此账号已停用');
        }
        session('manage', $userInfo->toArray());
        $userLogModel = new UserLog();//添加登录日志
        $userLogModel->setLog($userInfo->id, $userLogModel::USER_LOGIN);
// $this->redirect(redirect_url(url('Index/index')));
        return json(200, '', url('index/index'));
    }
}
