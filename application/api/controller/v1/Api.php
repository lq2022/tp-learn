<?php
namespace app\api\controller\v1;

use think\Controller;
use app\common\controller\Config;
use think\Db;

class Api extends Controller
{
    private $signKey = 'Liuqi';//此签名KEY可以是动态的;

    public function __construct(){
        if(1 == 1){ //config('apiAuth')
            //暂时注释
            // $this->checkTime($request->only(['time']));
            // $this->checkSign($request->param());
           
            // 读取缓存中的配置
            // $config =   cache('DB_CONFIG_DATA');
            // if(!$config)
            // {
            //     // 在数据库中读取所有的配置信息
            //     $config = Config::lists();
            //     cache('DB_CONFIG_DATA' , $config);
            // }
            // // 数据库配置合并到系统配置
            // config($config, 'db');
        }
    }
    /**
     * 检测接口是否超时
     * @param $arr
     */
    public function checkTime($arr){
        if(!isset($arr['time']) || intval($arr['time'] <= 1)){
            ajaxReturn(400, "时间戳错误");
        }
        if(time()-intval($arr['time']) > $this->timeoutSecond){
            ajaxReturn(400,'请求超时');
        }

    }

    /**
     * 构建请求签名
     * @param $param
     * @return string
     */
    public function buildSign($param)
    {
        unset($param['sign']);//sign字段不需加入签名算法;
        unset($param['time']);
        ksort($param);
        $str = implode('', $param);
        $sign = md5(md5($str). $this->signKey);
        return $sign;
    }

    /**
     * 验证签名
     * @param $param
     */
    public function checkSign($param){
        if(!isset($param['sign']) || !$param['sign']){
            ajaxReturn(400, "signature can't be null");
        }
        if($param['sign'] != $this->buildSign($param)){
            ajaxReturn(400, "signature is wrong");
        }
    }

}
