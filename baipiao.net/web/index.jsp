<%--
  Created by IntelliJ IDEA.
  User: TCV100
  Date: 2020/3/25
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- 网页使用的语言可以直接修改吗 -->
<html lang="zh-CN">
<head>
  <!-- 指定字符集 -->
  <meta charset="utf-8">
  <!-- 使用Edge最新的浏览器的渲染方式 -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
  width: 默认宽度与设备的宽度相同
  initial-scale: 初始的缩放比，为1:1 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
  <title>白嫖网</title>
  <!-- 1. 导入CSS的全局样式 -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
  <script src="js/jquery-2.1.0.min.js"></script>
  <!-- 3. 导入bootstrap的js文件 -->
  <script src="js/bootstrap.min.js"></script>
  <style type="text/css">
    td, th {
      text-align: center;
    }
  </style>

  <style>
    body{
      background-image:url('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585224880772&di=ab66044193566a911b9d802881646b26&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farticle%2F45b357eb7b32d28188a941e8b61740d66844015e.jpg');
      background-repeat:no-repeat;

    }
    .img{
      height: 200px;
      width: 200px;
      background: center;
      opacity: 0.6;
    }
    .bannerbox {
      width:100%;
      position:relative;
      overflow:hidden;
      height:180px;
    }
    .banner{
      width:1920px; /*图片宽度*/
      position:absolute;
      left:50%;
      margin-left:-960px; /
    }
    .img:hover {
      opacity: 1;
    }
  </style>

  <script>


  </script>
</head>

<body >
<%--背景--%>


<%--标题栏--%>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#example-navbar-collapse" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">白嫖</a>
    </div>
    <div class="collapse navbar-collapse" id="example-navbar-collapse">
      <ul class="nav navbar-nav navbar-left">
        <li><a href="#">NDS游戏</a></li>
        <li><a href="${pageContext.request.contextPath}/n3dsListServlet">3DS游戏</a></li>
      </ul>

      <%--搜索框--%>
      <form class="navbar-form navbar-right" action="${pageContext.request.contextPath}/n3dsListServlet" >
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search" name="gamename">
        </div>
        <button type="submit" class="btn btn-default">搜索</button>
      </form>

      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">不存在得登陆</a></li>
      </ul>
    </div>
  </div>

</nav>


<%--bannner--%>
<div class="bannerbox">
  <div class="banner">
    <img src="http://imgs.aixifan.com/cms/2018_03_31/1522479009646.jpg" >
  </div>
</div>




<%--图表链接--%>
<div style="margin-top: 230px;">
<span class="col-xs-12 col-md-2 col-md-offset-4" style="text-align: center;" >
  <a href="#"  class='img' >
    <img src="https://s1.ax1x.com/2020/03/27/GPZkKe.png" width="200" height="180">
  </a>
</span>

  <span class="col-xs-12 col-md-2 " style="text-align:center ; margin-top: 20px">
    <a href="${pageContext.request.contextPath}/n3dsListServlet"  class='img' >
      <img src="https://s1.ax1x.com/2020/03/27/GPZivD.png"  >
    </a>
  </span>
</div>

</body>

