<%@page import="java.util.*,java.sql.*,java.text.*" contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="conn" class="com.tools.ConnDB" scope="page"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>男装</title>
    <style type="text/css">

        #container
        {
            border-width: 13px;
            height:100%;
        }

        #header
        {
            background-color:lightyellow;
            height: 60px;
        }


        #navigation
        {
            position: absolute;
            top: 60px;
            left: 0;
            width: 600px;
            height:600px;
            margin-left:0px;
        }

        #content
        {
            background-color:lightyellow;
            top: 60px;
            height:600px;
            margin-right:0px;
            border-left: 600px ;
            margin-left:620px;
        }
        .btn{
            width:200px;
            height:50px;
        }

    </style>
</head>

<body>
<%
        String username1=(String)session.getAttribute("userName1");
        String username = request.getParameter("userName");
        if(username1==null){
        	request.setCharacterEncoding("UTF-8");
            if(username==null){
            	;
            }else{
            	session.setAttribute("userName1",username);
            	username1 = username;
            }
        }else{
        	session.setAttribute("userName1",username1);
        }
%>
<!--主容器开始-->
<div id="container">
    <!--①标题部分开始-->
    <div id="header">
        <font size="8" color="#00bfff">    主页>男装>西服</font>
    </div>
    <!--①标题部分结束-->
    <!--②左边部分开始-->
    <div id="navigation">
        <img src="xifu.jpg" width="620" height="620">
        <font size="6" color="#00bfff">    品牌： HAIPAIHAOYU    <br>上市时间：2020年春季<br>衣长：常规款<br>适用场景：休闲<br>风格：商务正装<br>工艺：免烫<br>适用人群：青年<br></font>

    </div>
    <!--②左边部分结束-->
    <!--③右边部分开始-->
    <div id="content">
        <font size="8" color="#00bfff">       选择颜色  <label><input name="Fruit" type="radio" value="" />黑色 </label>
            <label><input name="Fruit" type="radio" value="" />白色 </label>
            <label><input name="Fruit" type="radio" value="" />蓝色 </label>
            <label><input name="Fruit" type="radio" value="" />红色 </label><br><br>
            选择尺码 <label><input name="a" type="radio" value="" /> s</label>
            <label><input name="a" type="radio" value="" />m </label>
            <label><input name="a" type="radio" value="" />l </label>
            <label><input name="a" type="radio" value="" />xl </label><br><br>
            白条分期 <label><input name="b" type="radio" value="" />3期 </label>
            <label><input name="b" type="radio" value="" />6期</label>
            <label><input name="b" type="radio" value="" />12期</label><br><br>
            请选择购买数量 <label><input name="c" type="radio" value="" />1 </label>
            <label><input name="c" type="radio" value="" />2 </label>
            <label><input name="c" type="radio" value="" />3 </label><br><br>
        </font>
        <font size="8" color="red">    惊爆价：</font><br><br>
        <font size="32" color="red">    9.9元</font><br><br>
        <input type="button" class="btn" size="8" name="register" value ="进入商品选择页面" onclick="window.location.href='../goodschoice.jsp'"/><br>
        <font size="32" color="red">    售后保障⭐⭐⭐⭐⭐</font><br>
        <font size="6" color="#1e90ff">   本产品全国联保，享受三包服务，质保期为：一年质保
            如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！
            (注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。)</font><br>
    </div>
    <!--③右边部分结束-->
</div>
<!--主容器结束-->

</body>
</html>
