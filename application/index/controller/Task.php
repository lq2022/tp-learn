<?php
namespace app\index\controller;

use think\Controller;
use thing\Db;

class Task extends Controller
{
    /**
     * 发布商品抢购信息
     */
	public function publish()
    {
        if(request()->isAjax()){
            $user_id = session('USER_ID');
            $goods_id = input('goods_id');
            if (!$user_id || !$goods_id) {
                $this->error('用户ID或商品ID错误');
            }
            $redis = new \Redis();
            $redis = $redis->connect(config('app.redis_host'),config('app.redis_port'));
            $is_buy = $redis->hGet('goods_'.$goods_id,$goods_id.'_'.$user_id);
            if ($is_buy) {
                $this->error('商品已购买过');
            }
            $insert = $redis->hSet('goods_'.$goods_id,$goods_id.'_'.$user_id,0);
            if (!$insert) {
                $this->error('系统错误，请稍后再试');
            }
            // 构建发布订阅消息数据
            $task = [
                'user_id' => $user_id,
                'goods_id' => $goods_id
            ];
            $publish = $redis->publish('task_queue',serialize($task));
            if (!$publish) {
                $this->error('抢购失败，请稍后再试');
            }
            $this->success('正在抢购中，请耐心等待！');
        }else{
            $this->error('抢购失败，请稍后再试！');
        }
    }

    public function getOrderStatus()
    {
        if (request()->isAjax()) {
            $user_id = session('USER_ID');
            $goods_id = input('goods_id');
            if (!$user_id || !$goods_id) {
                $this->error('用户id或商品id错误');
            }
            // 构造查询条件
            $map = [
                'user_id' => $user_id,
                'goods_id' => $goods_id,
                'status' => 1
            ];
            // 查看队列是否已经完成
            $redis = new \Redis();
            $redis = $redis->connect(config('app.redis_host'),config('app.redis_port'));
            $is_finish = $redis->hGet('goods_id_'.$goods_id,'user_id_'.$user_id);
            if ($is_finish == 0) {
                $this->error('正在排队处理中，请继续等待！');
            }
            // 查询订单是否已经创建
			$order_info = DB::name('order')->where($map)->find();
			if($order_info == null && $is_finish == 1){
				$this->error('很遗憾，商品已经售完！');
			}
			$this->success('抢购成功，订单已经创建，请点击确定按钮查看订单！');
        }else {
            $this->error('参数错误');
        }
    }
    
    public function test()
    {
        dump(new \Redis());
    }
}
