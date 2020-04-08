<?php
//连接主机
$dbhost = 'localhost:3306'; // mysql服务器主机地址
$dbuser = 'root'; // mysql用户名
$dbpass = '123456'; // mysql用户名密码
$db = 'shop'; // 数据库名称
$conn = mysqli_connect($dbhost, $dbuser, $dbpass,$db);
//判断是否链接主机成功
if (!$conn) {
    die('连接错误: ' . mysqli_error($conn));
}
echo  '连接成功';
//echo "<script>alert('连接成功');</script>";

