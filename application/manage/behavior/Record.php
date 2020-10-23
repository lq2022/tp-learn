<?php 
/**
 * 记录操作日志
 */
namespace app\manage\behavior;



class Record
{
	
	public function getConf($params)
	{
		return [
			'categories@index'.$params
		];
	}
}

 ?>