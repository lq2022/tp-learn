<?php

use think\Db;

/**
 * @param string $code 状态码
 * @param string $message 消息
 * @param array $data 数据
 */
function json($code='200', $message='', $data=[])
{
    header('Content-type: application/json');
    http_response_code($code);
    $return['code'] = $code;
    $return['message'] = $message;
    if (!empty($data)) {
        $return['data'] = $data;
    }
    exit(json_encode($return, JSON_UNESCAPED_UNICODE));
}

/**
 * qq发邮件
 * @param  string $email   邮件地址
 * @param  string $title   标题
 * @param  string $content 邮件内容 默认为空
 * @return [type]          [description]
 */
function sendemail($email,$title,$content='*')
{
    $mail = new \PHPMailer\PHPMailer\PHPMailer();
    $mail->isSMTP();                                      
    $mail->Host = 'smtp.qq.com';  // Specify main and backup SMTP servers$mail->Host = "ssl://smtp.gmail.com"; 
    $mail->SMTPAuth = true;                               
    $mail->Username = config('db.mail_username');                 // SMTP username config('mailUserName')
    $mail->Password = config('db.mail_password');               // config('mailPassword')
    $mail->SMTPSecure = 'ssl';                            
    $mail->Port = 465;                                    
    $mail->setFrom('914501855@qq.com', 'Liu Qi');
    $mail->addAddress($email, 'QI');     // Add a recipient
    $mail->isHTML(true);                               
    $mail->Subject = $title;
    $mail->Body    = $content;
    if(!$mail->send()) {
        $rs['code'] = 10000;
        $rs['message'] = $mail->ErrorInfo;
    } else {
        $rs['code'] = 200;
        $rs['message'] = config('msg_code.10001');
    }
    return $rs;
}

/***
 * 判断是否json
 * @param $str
 * @return bool
 */
function isJson($str)
{
    return is_null(json_decode($str)) ? false : true;
}

// 获取数据库中的配置列表
function c($name='')
{
    // 先判断有无缓存
    if (cache('configs')) {
        if(isset(cache('configs')[$name])) {
            return cache('configs')[$name];
        } elseif ($name == '') {
            return cache('configs');
        }
        // 不存在则返回false
        return '';
    }

    $configs = DB::table('configs')->select();
    $temp = [];
    foreach ($configs as $k => $v) {
        if (isJson($v['value'])) {
            $v['value'] = json_decode($v['value'], true);
        }
        $temp[$v['name']] = $v['value'];
    }
    cache('configs', $temp, 999999);

    if(isset($temp[$name])){
        return $temp[$name];
    } elseif ($name == '') {
        return $temp;
    }
    // 不存在则返回false
    return '';
}

// 密码加密
function encrypt($password)
{
    return md5($password.'liuqi');
}

// 获取管理员信息
function getManageInfo($manage_id, $field = 'username')
{
    $user = app\common\model\Manage::get($manage_id);
   
    return $user ? $user->$field : '';

}

// 返回图片地址
function _sImage($image_id = '', $type = 's')
{
    
}