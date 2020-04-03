<?php
// $dbhost = 'localhost:3306';  // mysql服务器主机地址
// $dbuser = 'root';            // mysql用户名
// $dbpass = '123456';          // mysql用户名密码
$conn = mysqli_connect('localhost:3306', 'root', '123456', 'shop');
if (!$conn) {
	die('连接失败: ' . mysqli_error($conn));
}
//echo '服务器连接成功<br/>';
// 设置编码，防止中文乱码
mysqli_query($conn, "set names utf8");
//关键字
$keywords = isset($_POST['keywords']) ? $_POST['keywords'] : '';
//echo $keywords;
$sql = "SELECT * FROM goods WHERE goods_name like '%{$keywords}%' or goods_description like '%{$keywords}%'  or category_name like '%{$keywords}%' ";


// mysqli_select_db( $conn, 'shop' );
$retval = mysqli_query($conn, $sql);
if (!$retval) {
	die('无法读取数据: ' . mysqli_error($conn));
}
//echo '数据库连接成功<br/>';	
// $row = mysqli_fetch_assoc($retval)
// echo '<table border="1"><tr><td>商品名称</td><td>商品价格</td><td>商品描述</td><td>商品图片</td></tr>';
//echo "<link rel=\"stylesheet\" type=\"text/css\" href=\"../public/css\" />";
// while($row = mysqli_fetch_assoc($retval))
// {
// echo "{$row['goods_name']}<br/>".
// "{$row['goods_price']}<br/>".
// "{$row['goods_description']}<br/>".
// "<a href='../index.html'><img class='goods_icon' src='{$row['goods_icon']}'/><a/>".
// "<br/>";
// }
// echo '</table>';
// mysqli_close($conn);
?>
<?php echo "<link rel=\"stylesheet\" type=\"text/css\" href=\"../public/goodsList.css\" />"; ?>
<?php foreach ($retval as $key => $lay) { ?>
	<div>
		<a href=" ../controller/goodsDetail.php "><img class="goods_icon" src='<?php printf($lay['goods_icon']) ?>' /></a>
		<a href=" ../controller/goodsDetail.php "><?php printf($lay['goods_name']) ?><?php printf($lay['goods_description']) ?></a>
		￥<?php printf($lay['goods_price']) ?>
	</div>

<?php } ?>