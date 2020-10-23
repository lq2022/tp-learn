<?php

namespace app\manage\controller;

use app\common\model\OperationLog as LogModel;

class OperationLog extends Base
{
    // 操作日志列表
    public function index()
    {
        if (request()->isAjax()) {
            $logModel = new LogModel();
            return $logModel->tableData(input());
        }
        return $this->fetch();
    }

    // 获取操作日志
    public function getLastLog()
    {
        $logModel = new LogModel();
        $request['limit'] = 10;
        
        return $logModel->tableData($request);
    }

    

}
