<?php

namespace app\common\model;


class OperationLog extends Common
{
    // 获取操作日志
    public function tableWhere($post='')
    {
        $where = [];

        if(!empty($post['date']))
        {
            $date_string = $post['date'];
            $date_array = explode(' 到 ', $date_string);
            $sdate = strtotime($date_array[0].' 00:00:00');
            $edate = strtotime($date_array[1].' 23:59:59');
            $where[] = array('create_time', ['>=', $sdate], ['<', $edate], 'and');
        }
        if(isset($post['id']) && $post['id'] !=''){
            $where[] = ['id','in',$post['id']];
        }

        $result['where'] = $where;
        $result['field'] = "*";
        $result['order'] = 'id desc';
        
        return $result;
    }

    public function tableFormat($list)
    {
        foreach($list as $k => $v) {
            $list[$k]['username'] = getManageInfo($v['manage_id']);
        }
        return $list;
    }
}
