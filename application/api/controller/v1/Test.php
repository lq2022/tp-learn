<?php

namespace app\api\controller\v1;

use app\common\controller\Config;

class Test extends Api
{
    /**
     * 测试验证类
     */
    public function testValidate()
    {
        $validate = new \app\common\validate\Test();
        $data = [
            'name'  => 'thinkphp',
            'email' => 'thinkphpqq.com',
        ];

        // $validate = new \app\index\validate\User;

        if (!$validate->check($data)) {
            dump($validate->getError());
        }
    }

    /**
     * 新增配置 
     *
     */
    public function insertConfig()
    {
        $res = Config::insertConfig(input());
        if($res){
            return json();
        }
        return json(201,'操作失败');
    }

    // 临时测试
    public function temp()
    {
        return json(200,'访问成功');
        // \halt([\config('db.')]);
    }

    // json数据
    public function json()
    {
        return json(200,'访问成功');
        // \halt([\config('db.')]);
    }
}
