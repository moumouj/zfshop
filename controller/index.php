<?php
//	链接主机
$dbhost = 'localhost:3306';  // mysql服务器主机地址
$dbuser = 'root';            // mysql用户名
$dbpass = '123456';          // mysql用户名密码
$conn = mysqli_connect($dbhost, $dbuser, $dbpass);
//判断是否连接主机成功
if(! $conn )
{
  die('连接错误: ' . mysqli_error($conn));
}
echo '连接成功<br />';
//创建数据库
$sql = 'CREATE DATABASE form';
$retval = mysqli_query($conn,$sql );
//判断是否创建数据库成功
if(! $retval )
{
    die('创建数据库失败: ' . mysqli_error($conn));
}
echo "数据库 form 创建成功<br />";
//创建数据表
$form = "CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `open_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '公众号关注id',
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '手机',
  `last_sid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后一次查看的学校id',
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '用户积分',
  `level` tinyint(1) NOT NULL DEFAULT 0 COMMENT '用户级别',
  `shenfen` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0家长，1老师，2校长，3管理',
  `last_stuid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前学生学号',
  `last_cid` int(11) NULL DEFAULT NULL COMMENT '当前学生班级ID',
  `labels` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '群组标签',
  `push_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '推送设备ID',
  `user_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户图像',
  `im_token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '融云即时通讯token',
  `im_last_conver_time` int(10) NULL DEFAULT NULL COMMENT '最后客服会话时间',
  `ispass` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0通过 1没有 2拒绝',
  `bake_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备用字段',
  `bake_token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备用字段',
  `created_at` int(10) NOT NULL,
  `updated_at` int(10) NOT NULL,
  `deleted_at` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91918 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic; ";
mysqli_select_db( $conn, 'form' );
$retval = mysqli_query( $conn, $form );
//判断是否创建数据表成功
if(! $retval )
{
    die('数据表创建失败: ' . mysqli_error($conn));
}
echo "数据表user创建成功<br />";
mysqli_close($conn);
?>