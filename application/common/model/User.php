<?php

namespace app\common\model;


class User extends Common
{
    const NORMAL_STATUS = 1;

    /**
     * @param $data
     */
    public function toLogin($data)
    {
        // 判断字段
        if (!isset($data['mobile']) || !isset($data['password'])) {
            return json(10002);
        }
        // 判断手机号是否错误
        $userInfo = $this->where(array('mobile' => $data['mobile'], 'password' => md6($data['password'])))->find();
        if($userInfo){
            // 返回token
            $Usertoken = new UserToken();
            $res = $Usertoken->setToken($userInfo);
        }else{
            //
            return json(10003);
        }
    }

    // 查询条件
    public function tableWhere($post)
    {
        $where = [];
        if (isset($post['sex']) && $post['sex'] != '') {
            $where[] = [ 'sex', 'eq', $post['sex']];
        }
        if (isset($post['id']) && $post['id'] != '') {
            $where[] = [ 'id', 'eq', $post['id']];
        }
        if (isset($post['username']) && $post['username'] != '') {
            $where[] = [ 'username', 'like', '%'.$post['sex'].'%'];
        }
        if (isset($post['mobile']) && $post['mobile'] != '') {
            $where[] = [ 'mobile', 'eq', $post['mobile']];
        }
        if (isset($post['birthday']) && $post['birthday'] != '') {
            $where[] = [ 'birthday', 'eq', $post['birthday']];
        }
        if (isset($post['nickname']) && $post['nickname'] != '') {
            $where[] = [ 'nickname', 'like', '%'.$post['nickname'].'%'];
        }
        if (isset($post['status']) && $post['status'] != '') {
            $where[] = [ 'status', 'eq', $post['status']];
        }
        if (isset($post['pmobile']) && $post['pmobile'] != '') {

            // $where[] = [ 'pmobile', 'eq', $post['pmobile']];
        }
        $result['where'] = $where;
        $result['field'] = "*";
        $result['order'] = "id desc";
       
        return $result;

    }

    // 根据查询结果，修正数据
    protected function tableFormat($list)
    {
        foreach ($list as $k => $v) {
            if ($v['sex']) {
                $list[$k]['sex'] = config('params.user')['sex'][$v['sex']];
            }
            if ($v['status']) {
                $list[$k]['status'] = config('params.user')['status'][$v['status']];
            }
            if ($v['pid']) {
                $list[$k]['pid_name'] = get_user_info($v['pid']);
            }
            
            if (isset($v['avatar']) && $v['avatar']) {
                $list[$k]['avatar'] = _sImage($v['avatar']);
            }
        }
        return $list;
    }


}
