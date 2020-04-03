<!-- <?php
        if (!$_POST) {
            echo '<form action="" method="post"> 
            服务器地址：<input type="text" name="host" value="localhost" /><br /> 
            数据库账号：<input type="text" name="user" value="" /><br /> 
            数据库密码：<input type="password" name="pwd" value="" /><br /> 
            指定数据库：<input type="text" name="db" value="test" /><br /> 
            <input type="submit" value="确定"/> 
           </form><hr/>说明：<b>……<br /></b>
         ';
        }
        ?> -->
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <title>Hello World</title>
    <style>
        body {
            font-size: 15px;
            color: lightblue;
            font-family: Arial, Helvetica, sans-serif;
        }

        a {
            color: #089;
            text-decoration: none;
        }
    </style>
</head>

<body>
    <?php
    //连接数据库
    $conn = mysqli_connect('localhost:3306', 'root', '123456', 'shop');
    if (!$conn) {
        die('连接失败:' . mysqli_connect_error($conn));
    }
    // 设置编码，防止中文乱码
    mysqli_query($conn, "set names utf8");
    $sql = 'SELECT product_price,product_quantity,product_price*product_quantity as product_stock FROM order_detail WHERE(order_id=1)';
    $retval = mysqli_query($conn, $sql);
    if (!$retval) {
        die('无法读取数据:' . mysqli_connect_error($conn));
    }
    //echo '数据库连接成功<br/>';
    $row = mysqli_fetch_assoc($retval);
    //var_dump($row);
    echo "总金额：$row[product_stock]";
    ?>
    <br>
    <form action="../view/success.html" method="get">
        <input name="pay" type="radio" value="微信" checked />微信支付<br />
        <input name="pay" type="radio" value="支付宝" />支付宝支付<br />
        <input name="pay" type="radio" value="银行卡" />银行卡支付<br />
        <input name="" type="hidden" value="" />
        <input name="" type="submit" value="确认支付" />
    </form>
    <textarea>nihao </textarea>
</body>

</html>