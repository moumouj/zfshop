
//声明变量
var wrap = document.querySelector(".wrap");
var timer = null;
var container = document.querySelector(".container");
var dots = document.getElementsByTagName("span");
var index = 0;
//添加右箭头函数实现点击右箭头向右跳转
function next_pic() {
    index++;
    if (index > 3) {
        index = 0;
    }
    show();
    if (wrap.style.left === "-1440px") { //当显示第五张图片时点击右箭头显示第一张图片实现循环
        wrap.style.left = 0;
    } else { //其他情况时每点击一次右箭头向左跳转一张图片的宽度即600px
        wrap.style.left = parseInt(wrap.style.left) - 480 + "px";
    }
}
//添加左箭头函数实现点击左箭头向左跳转
function prev_pic() {
    index--;
    if (index < 0) {
        index = 3;
    }
    show();
    if (wrap.style.left === "0px") { //当显示第一张张图片时点击左箭头显示第五张图片实现循环
        wrap.style.left = -1440 + "px";
    } else { //其他情况时每点击一次左箭头向右跳转一张图片的宽度即600px
        wrap.style.left = parseInt(wrap.style.left) + 480 + "px";
    }
}
//添加计时器实现图片自动跳转
function autoplay() {
    timer = setInterval("next_pic()", 2000);
}
autoplay();
//实现鼠标进入container时停止自动播放效果
container.onmouseenter = function () {
    clearInterval(timer);
}
//实现鼠标离开container时继续自动播放效果
container.onmouseleave = function () {
    autoplay();
}
//实现当前图片对应小圆点有on的特殊格式
function show() {
    for (var i = 0, len = dots.length; i < len; i++) {
        dots[i].className = "";
    }
    dots[index].className = "on";
}
//绑定小圆点并定义小圆点点击事件
for (var i = 0, len = dots.length; i < len; i++) {
    (function (i) {
        dots[i].onclick = function () {
            dot(i);
        }
    })(i);
}
//声明dot(i)函数
function dot(i) {
    var dis = index - i;
    wrap.style.left = (parseInt(wrap.style.left) + dis * 480) + "px";
    index = i;
    show();
}