<?php

namespace app\common\model;

use think\Model;

class UserLog extends Model
{
    const USER_LOGIN = 1;
    const USER_LOGOUT = 2;
    const USER_REG = 3;
    const USER_EDIT = 4;

    /**
     * 添加登录日志
     * User: Liuqi
     */
    public function setLog($user_id,$state,$data = [])
    {
        $data = [
          'user_id' => $user_id,
          'state' => $state,
          'create_time' => date('Y/m/d H:i:s', time()),
          'params' => json_encode($data),
          'ip' => $_SERVER['REMOTE_ADDR']
        ];
        $this->insert($data);
    }

    // 总后台的登陆记录
    public function getList($user_id, $limit = 10)
    {
      $where = [];
      if ($user_id) {
        $where['user_id'] = $user_id;
      }

      $data = $this->where($where)
              ->order('create_time desc')
              ->paginate($limit);
      foreach ($data as $key => $value) {
        $data[$key]['state'] = config('params.user')['state'][$value['state']];
      }

      return $data;
    }
}
