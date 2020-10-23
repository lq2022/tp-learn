<?php

namespace app\manage\controller;

use think\Controller;
use think\Request;
use think\Db;
use think\facade\Hook;

// 测试类
class Test extends Controller
{
    // 更新数据库配置
    public function dbConfig()
    {
        cache('configs', null);
        dump(c(''));
    }

    // 临时测试
    public function index()
    {
       dump(c('manage_title')); 
    }

    // 测试行为
    public function behavior()
    {
        // use think\facade\Hook; 并执行 Record 行为类的getConf方法 并引用传入params参数
        $result = Hook::exec(['app\\manage\\behavior\\Record', 'getConf'], '33');
        dump($result); 
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        //
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        //
    }
}
