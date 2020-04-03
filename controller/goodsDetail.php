<?php
//连接数据库数据表
$conn = mysqli_connect('localhost:3306','root','123456','shop');
if(!$conn){
	die('连接失败: ' . mysqli_connect_error($conn));
}
// 设置编码，防止中文乱码
	mysqli_query($conn , "set names utf8");
	$sql = 'SELECT * FROM goods WHERE(goods_id=1)';
	$retval = mysqli_query( $conn, $sql );
if(!$retval)
	{
		die('无法读取数据:' . mysqli_connect_error($conn));
	}
	//echo '数据库连接成功<br/>';
	$row = mysqli_fetch_assoc($retval);
	//var_dump($row);
	
print <<<detail
	<a href="#"><img src="{$row['goods_icon']}"/></a>
    <div class="slidecont">{$row['goods_price']}</div> 
    <div class="head">{$row['goods_description']}</div>
    <input type="button" value="加入购物车" />
	<a href="fillOrder.php"><input type="submit" value="立即购买" /></a>
detail;
