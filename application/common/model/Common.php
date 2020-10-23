<?php
namespace app\common\model;
use think\Model;

class Common extends Model
{
    // 返回layui的table所需要的格式
    public function tableData($post)
    {
        $limit = isset($post['limit']) ? $post['limit'] : c('list_rows');
        $tablewhere = $this->tablewhere($post);

        $list = $this->field($tablewhere['field'])
        			->where($tablewhere['where'])
        			->order($tablewhere['order'])
        			->paginate($limit);

        $data = $this->tableFormat($list->items());
        
        $re['code'] = 0;
        $re['msg'] = '';
        $re['count'] = $list->total();
        $re['data'] = $data;
// halt($re);
        return $re;

    }

}