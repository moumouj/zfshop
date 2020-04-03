<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>首页</title>
	<link rel="stylesheet" href="public/index.css" />
</head>

<body>
	<!-- 导航 -->
	<div class="menu">
		<button><a class="now" href="index.php">首页</a></button>
		|
		<button><a href="category.php">分类</a></button>
		|
		<button><a href="shoppingCart.php">购物车</a></button>
		|
		<button><a href="personalCenter.php">我的</a></button>
	</div>
	<!-- 搜索框 -->
	<form action="controller/search.php" method="post">
		<input type="text" name="keywords" value="" />
		<input type="submit" name="" value="搜索" style="cursor: pointer;" />
	</form>

	<!-- 轮播 -->
	<!--轮播容器-->
	<div class="container">

		<ul class="wrap" style="left:0px;">
			<!--图片-->
			<li><img src="resources/img/bannar1.jpg"></li>
			<li><img src="resources/img/bannar2.jpg"></li>
			<li><img src="resources/img/bannar3.jpg"></li>
			<li><img src="resources/img/bannar4.jpg"></li>
		</ul>
		<!--左右箭头-->
		<a href="#" onclick="prev_pic()" class="arrow arrow-left">
			<</a> <a href="#" onclick="next_pic()" class="arrow arrow-right">>
		</a>
		<!--小圆点-->
		<div class="dots">
			<span class="on">1</span>
			<span>2</span>
			<span>3</span>
			<span>4</span>
		</div>
	</div>
	<script type="text/javascript" src="public/index.js"></script>
	商品推荐
	<?php
	$conn = mysqli_connect('localhost:3306', 'root', '123456', 'shop');
	if (!$conn) {
		die('连接失败: ' . mysqli_error($conn));
	}
	//echo '服务器连接成功<br/>';
	// 设置编码，防止中文乱码
	mysqli_query($conn, "set names utf8");
	//关键字
	//echo $keywords;
	$sql = 'SELECT * FROM goods WHERE istuijian = 0 ';
	$retval = mysqli_query($conn, $sql);
	if (!$retval) {
		die('无法读取数据: ' . mysqli_error($conn));
	}
	?>
	<?php foreach ($retval as $key => $lay) { ?>
		<div>
			<a href=" ../controller/goodsDetail.php "><img class="goods_icon" src='resources/<?php printf($lay['goods_icon']) ?>' /></a>
			<a href=" ../controller/goodsDetail.php "><?php printf($lay['goods_name']) ?><?php printf($lay['goods_description']) ?></a>
			￥<?php printf($lay['goods_price']) ?>
		</div>

	<?php } ?>

	热销商品位
	<?php
	$sql = 'SELECT * FROM goods WHERE istuijian = 1 ';
	$retval = mysqli_query($conn, $sql);
	if (!$retval) {
		die('无法读取数据: ' . mysqli_error($conn));
	}
	?>
	<?php foreach ($retval as $key => $lay) { ?>
		<div>
			<a href=" ../controller/goodsDetail.php "><img class="goods_icon" src='resources/<?php printf($lay['goods_icon']) ?>' /></a>
			<a href=" ../controller/goodsDetail.php "><?php printf($lay['goods_name']) ?><?php printf($lay['goods_description']) ?></a>
			￥<?php printf($lay['goods_price']) ?>
		</div>

	<?php } ?>

</body>

</html>