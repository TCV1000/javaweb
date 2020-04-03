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
<!-- 网页使用的语言 -->
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
        body, ul {
            margin: 0;
            padding: 0;
        }
        body{
            background-image:url('https://steamcdn-a.akamaihd.net/steamcommunity/public/images/items/927890/2cd153d1a4c34d1d75aed4337287985fc34b8fe0.jpg');*/
            background-repeat:no-repeat;
            background-position:bottom;
            background-attachment: fixed;
        }
        ul {
            list-style: none;
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
        .warpdes{
            width: 450px;
            height: 200px;
            word-wrap: break-word;

            overflow: hidden;

        }

        .wrap {
            width: 800px;
            height: 172px;
            margin: 20px auto;
            border-radius: 4px;
            border: 1px solid #ddd;
            padding: 0 10px;
        }

        .wrap-head {
            width: 100%;
            height: 25px;
            padding-top: 4px;
            overflow: hidden;
        }



        .head-logo {
            width: 40%;
            float: left;
        }

        .head-logo img {
            width: 30px;
            height: 30px;
        }

        .head-txt {
            padding: 4px 0;
            width: 60%;
            float: right;
        }

        .head-txt a {
            font-size: 12px;
            color: #eb7350;
            text-decoration: none;
            float: right ;
            margin-right:  15px;
        }
        .title-txt.title {
            text-align: right;
            color: black;
            display: block;
            width: 100%;
        }


        /*内层设计，输入框*/
        .main-txt {
            border: 1px solid #ccc;
            width: 98%;
            height: 88px;
            margin: 2px 0 0;
            padding: 5px;
            box-shadow: 0px 0px 3px 0px rgba(0, 0, 0, 0.15) inset;
        }
        .minor-txt{
            border: 1px solid #ccc;
            width: 15%;
            float: left;
            height: 30px;
            margin: 15px 15px 5px 15px ;
            padding: 5px;
            box-shadow: 0px 0px 3px 0px rgba(0, 0, 0, 0.15) inset;
        }
        .minor-lab{
            float: left;
            margin: 15px 15px 18px 15px ;
            padding: 4px;
            font-size: 15px;
            color: #eb7350;
            text-decoration: none;
        }
        .main-txt textarea {
            border: none;
            width: 100%;
            height: 76px;
            outline: none;
            resize: none;
            color: #333;
            background-color:ghostwhite;
        }
        .minor-txt textarea {
            border: none;
            width: 100%;
            height: 18px;
            outline: none;
            resize: none;
            color: #333;
            background-color:ghostwhite;
        }
        .main-txt.outline {
            outline: 2px orange solid;
        }
        .minor-txt.outline {
            outline: 2px orange solid;
        }

        /*下层设计*/
        .warp-footer {
            width: 100%;
            height: 40px;
            margin: 6px 0;
            overflow: hidden;
        }

        .warp-icon-cont {
            width: 65%;
            float: left;
            margin-top: 10px;
        }

        .warp-icon-cont ul li {
            display: inline-block;
            margin-right: 15px;
            cursor: pointer;
        }

        .warp-icon-cont a {
            font-size: 12px;
            color: #333;
            text-decoration: none;
            height: 20px;
            margin-left: 5px;
            display: block;
            width: 25px;
            float: right;
            line-height: 20px;
        }

        .warp-icon-cont a:hover {
            color: #eb7350;
        }

        .warp-icon-cont img {
            width: 20px;
            height: 20px;
        }

        .warp-footer-btns {
            width: 35%;
            float: right;
            overflow: hidden;
            margin-top: 3px;
        }

        .release-btn {

            float: right;
            margin: 13px 15px 0px 0px;
        }


        /*后期添加的留言框*/
        .show {
            width: 800px;
            margin: 20px auto;
        }

        .show-content {
            width: 800px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 10px;
            padding: 10px;
            position: relative;
            overflow: hidden;
        }

        .show-name {
            width: 100%;
            text-align: left;
            font-size: 14px;
            color: #333;
            font-weight: bold;
        }

        .show-txt {
            width: 100%;
            color: #444;
            font-size: 14px;
            margin-top: 15px;
        }

        .show-txt p {
            width: 100%;
            word-wrap: break-word;
        }

        .show-time {
            font-size: 12px;
            color: #808080;
            margin-top: 10px;
        }

        .show-close {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 12px;
            color: #ccc;
            cursor: pointer;
            transition: .5s;
        }

        .show-close:hover {
            color: red;
        }
        .imgbox{
            width: 500px;

            height: 400px;
            display: table-cell;
            vertical-align: middle;
            text-align: center;
        }
    </style>

    <script>


    </script>
</head>

<body >
<%--背景--%>


<%--标题栏--%>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#example-navbar-collapse" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <%--<a class="navbar-brand" href="#">Brand</a>--%>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">白嫖</a>
        </div>
        <ul class="nav navbar-nav navbar-left">
            <li><a href="#">NDS游戏</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-left">
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
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->

</nav>


<%--bannner--%>
<div class="bannerbox">
    <div class="banner">
        <img src="http://imgs.aixifan.com/cms/2018_03_31/1522479009646.jpg" >
    </div>
</div>
<br>
<br>
<br>
<br>



<%--居中显示--%>
<div style="border: 1px #000000; width: 1200px;margin: 0 auto;background-color: ghostwhite">

    <%--游戏详情--%>

    <div class="row">


        <div class="col-xs-6 col-md-4 col-md-offset-1">

                <div class="imgbox">
                    <img src="${game.imgurl}" style="width: 390px;height: auto" alt="...">
                </div>

        </div>

        <div class="col-xs-6 col-md-4 col-md-offset-1">
            <br>
            <h1>${game.gamename}</h1>
            <div style="font-size:20px">
                <p>分类：${game.gametype}</p>
                <p>开发商:${game.company}</p>
                <p>参考视频链接：<a href="#">暂时没有</a></p>

                <div class="warpdes">
                    <p>简介：${game.description}</p>
                </div>

            </div>
        </div>
    </div>
    <br>

    <%--下载--%>
    <center>
        <table class="table table-bordered" style="width:100%;width: 500px;text-align:center">

            <tbody>

            <tr>
                <td>下载链接：</td>
                <td><a href="${game.downloadurl}">百度云</a></td>
            </tr>
            <tr>
                <td>文件说明：</td>
                <td>${game.gamepassword}</td>
            </tr>
            <tr>
                <td>更新时间：</td>
                <td>${game.updatetime}</td>
            </tr>
            </tbody>
        </table>
        <br>
        <br>
        <br>
    </center>

    <%--评论栏--%>
    <form method="post" action="${pageContext.request.contextPath}/addViewServlet?gameuid=${game.gameuid}" id="formId" role="form"  >
        <div class="wrap">
            <div class="wrap-head">
                <div class="head-logo">
                </div>
                <div class="head-txt">
                    <a class="title-txt">回复栏</a>
                </div>
            </div>
            <div class="main-txt">

                <textarea name="text"  required rows="" cols="" class="main-area" ></textarea>

            </div>
            <label class="minor-lab">用户名</label>
            <div class="minor-txt">

                   <textarea name="author" required rows="" cols="" class="mirror-area" style="overflow-y: hidden" ></textarea>

            </div>

            <div class="release-btn">
                <button  class="btn btn-warning" type="submit" > 发 布 </button>
            </div>

            <div class="warp-footer">
                <div class="warp-footer-btns">

                </div>
            </div>
        </div>
    </form>



    <%--插入一个for，载入评论--%>

    <h3  style="text-align: center">评论列表</h3>
    <c:forEach items="${pb.list}" var="views" varStatus="i">
        <div class="show">
            <div class="show-content">
                <div class="show-name">${views.author}:</div>
                <div class="show-txt">
                    <p class="">${views.view}</p>
                </div>
                <div class="show-time">${views.date}</div>

            </div>
        </div>
    </c:forEach>
    <br>
    <br>
</div>
</body>

