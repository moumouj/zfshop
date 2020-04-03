<?php
    //连接数据库数据表
    $conn = mysqli_connect('localhost:3306', 'root', '123456', 'shop');
    if (!$conn) {
        die('连接失败: ' . mysqli_connect_error($conn));
    }
    // 设置编码，防止中文乱码
        mysqli_query($conn, "set names utf8");
        $sql = 'SELECT * FROM goods WHERE(goods_id=1)';
        $retval = mysqli_query($conn, $sql);
    if (!$retval) {
        die('无法读取数据:' . mysqli_connect_error($conn));
    }
        //echo '数据库连接成功<br/>';
        $row = mysqli_fetch_assoc($retval);
        //var_dump($row);
        
        
    //收货地址、收货人、收货人电话
    //商品图、商品名称、商品描述、商品数量
    //支付方式
    //总金额
    //提交订单
print <<<fillOrder
    <form action="cashier.php" method="post" >
		<div>
		    请输入收货地址：<input type="text" name="" value="" />
			请输入收货人姓名：<input type="text" name="" value="" />
			请输入收货人电话：<input type="text" name="" value="" />
		</div>
		<img src="{$row['goods_icon']}"/>
		<div class="">{$row['goods_price']}</div>
		<div class="">{$row['goods_description']}</div>
		<input type="submit" value="提交订单" />
	</form>
fillOrder;
