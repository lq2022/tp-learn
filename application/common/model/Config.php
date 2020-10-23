<?php

namespace app\common\model;

use think\Model;

class Config extends Model
{
    /**
	 * 获取数据库中的配置列表
	 * @return array 配置数组
	 */
	public function lists(){
		$map    = array('status' => 1);
		$data   = $this->where($map)->field('type,name,value')->select()->toArray();
        // \dump($data);
		$config = [];
		if($data && is_array($data)){
            halt(66);
			foreach ($data as $value) {
                dump([$value['name'],$config]);
				$config[$value['name']] = self::parse($value['type'], $value['value']);dump([$value['name'],$config]);
			}
        }
        p($data); // xdebug调试 
		return $config;
	}

	/**
	 * @param $type 配置项类型，0：字符串，1：数组类型
	 * @param $value 配置项值
	 * @return array|false|string[]
	 */
	private static function parse($type, $value){
		switch ($type) {
			case 1: //解析数组
				$array = preg_split('/[,;\r\n]+/', trim($value, ",;\r\n"));
				if(strpos($value,':')){
					$value  = array();
					foreach ($array as $val) {
						list($k, $v) = explode(':', $val);
						$value[$k]   = $v;
					}
				}else{
					$value = $array;
				}
				break;
		}
		return $value;
	}
}
