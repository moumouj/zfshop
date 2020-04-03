<meta charset="utf-8">
<?php
//连接主机
$dbhost = 'localhost:3306';  // mysql服务器主机地址
$dbuser = 'root';            // mysql用户名
$dbpass = '123456';          // mysql用户名密码
$conn = mysqli_connect($dbhost, $dbuser, $dbpass);
//判断是否链接主机成功
if(!$conn )
{
	die('连接错误: ' . mysqli_error($conn));
}
echo '服务器连接成功<br />';
//利用超全局变量$_POST接受form表单name值
$goods_name = $_POST['goods_name'];
$goods_price = $_POST['goods_price'];
$goods_stock = $_POST['goods_stock'];
$goods_description = $_POST['goods_description'];
$goods_icon = $_POST['goods_icon'];
$category_type = $_POST['category_type'];
//判断接收name值的变量的数值是否为空
if ( $goods_name =='' || $goods_price =='' ||$goods_stock =='' || $goods_description =='' || $goods_icon ==''|| $category_type =='' )
{
	echo "<script>alert('录入信息不能为空请重新录入');history.go(-1);</script>";
}
echo "$goods_name,$goods_price,$goods_stock,$goods_description,$goods_icon,$category_type<br/>";
//选择数据库
mysqli_select_db($conn, 'shop' );
//通过select语句把数据表中的数据赋给变量$search
$search = "SELECT goods_name FROM goods WHERE goods_name='$goods_name'";
$res=mysqli_query($conn,$search);
//判断是否存在重复的商品名
if(mysqli_fetch_row($res))
{
	echo "<script>alert('商品名称已经存在请重新录入');history.go(-1);</script>";
}
//插入商品信息
$query="INSERT INTO goods(goods_name,goods_price,goods_stock,goods_description,goods_icon,category_type) 
		VALUES ('$goods_name','$goods_price','$goods_stock','$goods_description','$goods_icon','$category_type')";
$result=mysqli_query($conn,$query);
if($result)
{
	echo '录入成功<a href="../index.html">点击此处进入主页</a>';
}
else
{	
	var_dump($conn->error);
}
mysqli_close($conn);
?>