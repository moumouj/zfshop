<meta charset="utf-8">
<?php
//引入连接服务器数据库公共文件
include 'connect.php';
//利用超全局变量$_POST接受form表单name值
$name = $_POST['name'];
$password = $_POST['password'];
$tel = $_POST['tel'];
//判断接收name值的变量的值是否为空
if ($name == '' || $password == '' || $tel == '') {
    echo "<script>alert('注册信息不能为空');history.go(-1);</script>";
} else {
    //通过select语句把数据表中的数据赋给变量$search
    $search = "SELECT tel FROM user WHERE tel='$tel'";
    $res = mysqli_query($conn, $search);
    //判断是否存在重复的手机号
    if (mysqli_fetch_row($res)) {
        echo "<script>alert('该手机号已被注册请直接登录');</script>";
        // echo '此手机号已被注册，<a href="../view/signIn.html">点击此处进行登录</a>'; 
        include '../view/signIn.html';
    } else {
        //将注册表单数据信息插入到user表
        $query = "INSERT INTO user (name,password,tel) VALUES ('$name','$password','$tel')";
        $result = mysqli_query($conn, $query);
        if ($result) {
            echo "<script>alert('注册成功');</script>";
            // echo '注册成功<a href="../view/signIn.html">点击此处进行登录</a>';
            include 'home.php';
        } else {
            echo '注册失败，请重新尝试', mysqli_error($conn), '<br>';
            die('注册失败: ' . mysqli_error($conn));
        }
    }
}


?>