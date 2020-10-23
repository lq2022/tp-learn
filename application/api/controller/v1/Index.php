<?php
namespace app\api\controller;
use app\api\controller\Api;


class Index extends Api
{
    public function index()
    {
    	// p(\think\facade\Env::get('database.database'));
        return 'Welcome to Api';
    }
}
