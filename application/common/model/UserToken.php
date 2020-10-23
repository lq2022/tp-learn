<?php

namespace app\common\model;

use think\Model;

class UserToken extends Model
{
    // 生成Token
    public function setToken($userInfo)
    {
        // token: 报用户不存在 删除旧token 不用定义数组
        $data['user_id'] = $userInfo['id'];
        $data['ctime'] = time();
        $data['token'] = md5($userInfo['password'].time().rand(1,10000));
;
        $re = $this->save($data);

        if($re > 0){
            $where[] = ['token', 'neq', $data['token']];
            $this->where($where)->delete();
            $res = array('token'=>$data['token']);
            return json(200,'登录成功',$res);
        }else{
            return json(10004);
        }
        //        md5(md5($user_id.$password.$platform.$createtime).rand(1,10000));user_id token ctime platform
    }

    // 验证用户 
    public function checkUser($data)
    {
        // 定义一个接口
        $where = $data;
        $user = $this->where($where)->find();
        if(!$user){
            return json(10005);
        }

    }
}
