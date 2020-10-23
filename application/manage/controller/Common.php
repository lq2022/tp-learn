<?php

namespace app\manage\controller;

use app\common\model\Manage;
use app\common\model\UserLog;
use think\Request;
use think\Db;

// 公有类
class Common extends Base
{
    public function initialize(){
        //此控制器不需要模板布局，所以屏蔽掉
        $this->view->engine->layout(false);

    }

    /**
     * 登录逻辑处理
     *
     * @return \think\Response
     */
    public function login(Request $request)
    {
        $shop_name = c('shop_name');
        $this->assign('shop_name',$shop_name);

        if (session('?manage')){
            $this->success("已经成功登录，跳转中...", url('index/index'));
        }
        if($request->isPost()){
            $manageModel = new Manage();
            //查询用户信息并记日志
            $manageModel->toLogin(input('param.'));
        }else{
            return $this->fetch('login');
        }
    }

    /**
     * 用户退出
     * @author sin
     */
    public function logout()
    {
        //增加退出日志
        if(session('manage.id')){
            $userLogModel = new UserLog();
            $userLogModel->setLog(session('manage.id'),$userLogModel::USER_LOGOUT);
        }
        session('manage', null);
        $this->success('退出成功', url('common/login'));
    }

    

}
