<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>首页</title>
    <link rel="stylesheet" href="../public/home.css" />
</head>

<body>
    <!-- 导航 -->
    <div class="menu">
        <button><a class="now" href="home.php">首页</a></button>
        |
        <button><a href="category.php">分类</a></button>
        |
        <button><a href="shoppingCart.php">购物车</a></button>
        |
        <button><a href="personalCenter.php">我的</a></button>
    </div>
    <!-- 搜索框 -->
    <form action="search.php" method="post">
        <input type="text" name="keywords" value="" />
        <input type="submit" name="" value="搜索" style="cursor: pointer;" />
    </form>
    <!-- 分类模块 -->
    <div>
        <!-- 左侧分类导航 -->
        <div>
            <ul>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
        <!-- 右侧分类详情 -->
        <div>

        </div>
    </div>


    <?php
    include './connect.php';
    // 设置编码，防止中文乱码
    mysqli_query($conn, "set names utf8");
    //关键字
    //echo $keywords;
    $sql = 'SELECT category_name FROM category ';
    $retval = mysqli_query($conn, $sql);
    if (!$retval) {
        die('无法读取数据: ' . mysqli_error($conn));
    }else{
        $array=mysqli_fetch_array($retval);
        var_dump($retval);
    }
    ?>
    <?php foreach ($retval as $key => $lay) { ?>
            <div>
                <a href=" ../controller/goodsDetail.php "><img class="goods_icon" src='<?php printf($lay['goods_icon']) ?>' /></a>
                <a href=" ../controller/goodsDetail.php "><?php printf($lay['goods_name']) ?><?php printf($lay['goods_description']) ?></a>
                ￥<?php printf($lay['goods_price']) ?>
            </div>
        
        <?php } ?>
</body>

</html>