<?php

Route::group('/admin/', function () {
    // 后台首页
    Route::get('', 'admin/index/index');
    // 登录
    Route::any('login', 'admin/common/login');
    // 欢迎页面
    Route::get('welcome', 'admin/index/welcome');
    // 退出
    Route::get('logout', 'admin/common/logout');
    // 清除缓存
    Route::get('clearCache', 'admin/index/clearCache');

    // 角色管理
    Route::any('role/index', 'admin/role/index');
    // 编辑权限
    Route::post('role/getoperation', 'admin/role/getoperation');

    //博客模块role/getoperation
    // 文章列表
    Route::any('article/index', 'admin/article/index');
    // 文章添加
    Route::any('article/add', 'admin/article/add');
    // 文章编辑
    Route::any('article/edit', 'admin/article/edit');
//    Route::rule('new/:id','News/read','GET|POST');



});

// 博客前端模块
Route::domain('blog', function () {
    Route::get('', 'blog/index/index');

});

// 仿魅族模块
Route::domain('shop', function () {
    Route::get('', 'shop/index/index');
    // 登录
    Route::post('user/login', 'shop/user/login');
    // 获取用户信息
    Route::post('user/info', 'shop/user/info');

});
