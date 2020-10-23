<?php
namespace app\api\controller\v1;

use app\common\model\User as UserModel;
use app\common\model\Balance;
use think\Db;

class User extends Api
{
    /**
     * 发送邮件验证码 
     */
    // public function sendCode()
    // {
    //     $params = input();
    //     if($params){
    //         $title = 'VerifyCode';
    //         $rand = rand(0,9999);
    //         $content = 'Your verifycode is '. $rand;
    //         $res = sendemail($params['email'],$title,$content);
    //         if($res['code'] == 200){
    //             return json($res['code'], $res['message']);
    //         }
    //         return json($res['code'], $res['message']);
    //     }
    // }

    
    /**
     * 用户登录
     */
    public function login()
    {
        $platform = input('param.platform', 1);
        $userModel = new UserModel();
        $data = input('param.');

        return $userModel->toLogin($data, 2, $platform);
    }

    // 退出
    public function logout()
    {
        $data = input('param.token');
        if(!input('param.token')){
            return json(201, '请输入token');
        }
        return ((new UserModel())->delToken(input('param.token')));
    }

    // 用户信息
    public function info()
    {
        $userModel = new UserModel();
        $userInfo = $userModel
            ->field('id,username,mobile,sex,birthday,avatar,nickname,balance,point,status')
            ->where(['id'=>$this->userId])
            ->find();
        if ($userInfo !== false){

        }else{
            $result['msg'] = '未找到此用户';
        }
        return $result;
    }

    // 更换头像
    public function changeAvatar()
    {
        if(!input('param.avatar')){
            return 99;
        }

    }

    
}
