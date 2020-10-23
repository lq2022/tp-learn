<?php
namespace app\manage\controller;

use app\manage\controller\Base;
use app\common\model\Operation;
use app\common\model\Order;
use think\facade\Cache;

class Index extends Base
{
    // 后台首页
    public function index()
    {
        $operationModel = new Operation();
        $this->assign('menu', $operationModel->manageMenu(session('manage')['id']));
        // dump(); 
        return $this->fetch();
    }

    // 清除缓存
    public function clearCache()
    {
        Cache::clear();
        $this->success('清除缓存成功', url('/manage/index/welcome'));
    }

    // 欢迎页面
    public function welcome()
    {
        $orderModel = new Order();
        //未发货数量
        $unpaid_count = $orderModel->where(['status'=>1, 'pay_status'=>1, 'ship_status'=>1])->count();
        //待发货数量
        $unship_count = $orderModel->where(['status'=>1,'pay_status'=>2,'ship_status'=>1])->count();

        $this->assign('unpaid_count',$unpaid_count);
        $this->assign('unship_count',$unship_count);
        //hook('adminindex', $this);//后台首页钩子

        return $this->fetch();
    }

}
