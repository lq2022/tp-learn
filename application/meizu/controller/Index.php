<?php
namespace app\meizu\controller;

use app\common\controller\Meizu;
use think\Db;
use think\facade\Request;

class Index extends Meizu
{
    // 魅族首页
    public function index()
    {
        $this->view->engine->layout('indexlayout');
        // layout('indexlayout');
		$cateRes=$this->cateRes();
		$newGoodsRes=$this->newGoodsRes();
		$mainGoodRes=$this->mainGoodRes();
		// 轮播图
		$bannerRes = 
		$bannerRes=$this->bannerRes();
		//p([$cateRes]);//, $newGoodsRes, $mainGoodRes, $bannerRes
		$this->assign('cateRes',$cateRes);
		$this->assign('bannerRes',$bannerRes);
		$this->assign('newGoodsRes',$newGoodsRes);
		$this->assign('mainGoodRes',$mainGoodRes);
		return $this->fetch();
    }

    // 获取分类
    public function cateRes()
	{
        $res = Db::name('shop_category')
                    ->where("pid=0")
                    ->order('sort')
                    ->limit(7)
                    ->select();
		foreach ($res as $k => $v) {
			$temp = Db::name('shop_goods')
						->where("cate_id='{$v['cid']}' and ispublish=1")
						->field("good_id,good_name,good_pic")
						->order('good_id desc')
						->limit(10)
						->select();
			$res[$k]['goods'] = $temp;
		}
		return $res;
	}
	public function bannerRes()
	{
		$sql="SELECT * FROM `banner` where status=1 limit 5";
		$res=M()->query($sql);
		return $res;
	}
	//publish上架
	public function newGoodsRes()
	{
		$sql="SELECT * FROM `shop_goods` WHERE ispublish=1 and isnew=1 ORDER BY good_id desc LIMIT 15";
		$res=M()->query($sql);
		return $res;
	}
	public function mainGoodRes()
	{
		$sql="SELECT * FROM `shop_category` WHERE pid=0 ORDER BY sort";
		$res=M()->query($sql);
		foreach ($res as $k => $v) {
			if($v['cname']=='路由器' || $v['cname']=='移动电源'){
				unset($res[$k]);
			}else{
				$sql="select good_id,good_name,good_pic,good_marketprice,isnew from shop_goods where cate_id='{$v['cid']}' and ispublish=1 order by good_id desc limit 10";		 
				$res[$k]['goods']=M()->query($sql);
			}
		}	
		return $res;
	}
}
