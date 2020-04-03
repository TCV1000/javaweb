<%--
  Created by IntelliJ IDEA.
  User: TCV100
  搜索列表界面
  Date: 2020/3/25
  Time: 9:39
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
        .warpdes {
            width: 350px;
            height: 100px;
            word-wrap: break-word;
            word-wrap: break-all;
            overflow: hidden;
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
    </style>

    <script>


    </script>
</head>

<body>
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
<br>
<br>



<%--居中显示--%>
<%--<div style="border: 1px #ffff00; width: 1200px;margin: 0 auto;">--%>

<div class="container">
    <%--游戏--%>
    <div class="row">
        <c:forEach items="${pb.list}" var="games" varStatus="i">
            <div class="col-xs-7 col-md-4">
                <a href="${pageContext.request.contextPath}/gameInfoServlet?gameuid=${games.gameuid}" class="thumbnail"style="width: 400px; height: 600px">
                    <img src="${games.imgurl}" alt="..." style="height: 300px;width: auto;overflow: hidden" >
                    <div class="caption">
                        <h3>${games.gamename}</h3>
                        <p>分类：${games.gametype}</p>
                        <p>更新时间：${games.updatetime}</p>
                        <div class="warpdes">
                            <p>简介：${games.description}</p>
                        </div>

                            <%--<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>--%>
                    </div>
                </a>
            </div>
        </c:forEach>
    </div>

    <%--翻页条--%>
    <div class="col-xs-12 col-md-12">
        <div>
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <c:if test="${pb.currentPage == 1}">
                        <li class="disabled">
                            <a href="" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>

                    <c:if test="${pb.currentPage != 1}">
                        <li>
                            <a href="${pageContext.request.contextPath}/n3dsListServlet?currentPage=${pb.currentPage - 1}&rows=9" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>





                    <c:forEach begin="1" end="${pb.totalPage}" var="i" >


                        <c:if test="${pb.currentPage == i}">
                            <li class="active"><a href="${pageContext.request.contextPath}/n3dsListServlet?currentPage=${i}&rows=9">${i}</a></li>
                        </c:if>
                        <c:if test="${pb.currentPage != i}">
                            <li><a href="${pageContext.request.contextPath}/n3dsListServlet?currentPage=${i}&rows=9">${i}</a></li>
                        </c:if>
                    </c:forEach>
                    <li>
                        <a href="${pageContext.request.contextPath}/n3dsListServlet?currentPage=${pb.currentPage + 1}&rows=9" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                    <span style="font-size: 25px;margin-left: 5px;">
                    共${pb.totalPage}页
                </span>
                </ul>
            </nav>
        </div>

    </div>
</div>

</body>
</html>