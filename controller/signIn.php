<meta charset="utf-8">
<?php
//引入连接服务器数据库公共文件
include 'connect.php';
//利用超全局变量$_POST接受form表单tel值
$tel = $_POST['tel'];
$password = $_POST['password'];
//判断接收tel值的变量的数值是否为空
if ($tel == '' || $password == '') {
	echo "<script>alert('登录信息不能为空');history.go(-1);</script>";
} else {
	//通过select语句把数据表中的用户名和密码赋给变量$search
	$search = "SELECT * FROM user WHERE (tel='$tel') AND (password='$password')";
	$res = mysqli_query($conn, $search);
	//判断用户名和密码是否匹配
	if (mysqli_fetch_row($res)) {
		//echo "<script>alert('登陆成功！你好，$tel')</script>";
		// include './home.php';
		echo "<script language=\"javascript\">window.open ('home.php', 'newwindow', 'height=100, width=400, top=0, left=0, toolbar=yes, menubar=yes, scrollbars=yes, resizable=yes,location=yes, status=yes')</script>";
	} else {
		echo "<script>alert('登录信息不匹配，请重新输入！');history.go(-1);</script>";
	}
}


?>