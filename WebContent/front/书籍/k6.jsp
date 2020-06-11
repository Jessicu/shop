<%@page import="java.util.*,java.sql.*,java.text.*" contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="conn" class="com.tools.ConnDB" scope="page"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>书籍</title>
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
            width: 800px;
            height:600px;
            margin-left:0px;
        }

        #content
        {
            background-color:lightyellow;
            top: 60px;
            height:600px;
            margin-right:0px;
            border-left: 800px ;
            margin-left:820px;
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
<font size="8" color="#00bfff">    主页>图书>云边有个小卖部</font>
    </div>
    <!--①标题部分结束-->
    <!--②左边部分开始-->
    <div id="navigation">
        <img src="abc.jpg" width="820" height="620">
        <font size="6" color="black">  内容简介 <br></font>
        <font size="4" color="red"> ○ 让刘十三陪着你，走进云边镇的春夏秋冬，见证每一场相遇与离别。“有些人刻骨铭心，没几年会遗忘。有些人不论生死，都陪在身旁。”<br>

            ○满镇开着桔梗，蒲公英飞得比石榴树还高，一直飘进山脚的稻海。在大多数人心中，自己的故乡后来会成为一个点，如同亘古不变的孤岛。外婆说，什么叫故乡，祖祖辈辈埋葬在这里，所以叫故乡。<br>


            ○刘十三就这样，看着小女孩像梦境一般，马尾辫，眉清目秀，向他走过来。


            毫无疑问，刘十三认为，这场面会铭记一生。<br>


            ○爱情必须给予。和普通的年轻人一样，刘十三没什么拿得出手的东西，只有尚未到来的未来。<br>


            ○山这边是刘十三的童年，山那边是外婆的海。山风微微，像月光下晃动的海浪，有的，没的，温和而柔软，停留在时光的背后，变成小时候听过的故事。<br>


            ○为别人活着，也要为自己活着。希望和悲伤，都是一缕光。总有一天，我们会再相遇。<br>


            <br></font>
    </div>
    <!--②左边部分结束-->
    <!--③右边部分开始-->
    <div id="content">
        <!-- <font size="8" color="#00bfff">       主要型号选择  <label><input name="Fruit" type="radio" value="" />АКС-74Y </label>
            <label><input name="Fruit" type="radio" value="" />折叠АКМ/АКМС </label>
            <label><input name="Fruit" type="radio" value="" />折叠AK-74 </label>
            <label><input name="Fruit" type="radio" value="" />折叠AKMSU </label><br>
           选择版本 <label><input name="a" type="radio" value="" />全新 </label>
            <label><input name="a" type="radio" value="" />九成新 </label>
            <label><input name="a" type="radio" value="" />八成新 </label>
            <label><input name="a" type="radio" value="" />废品 </label><br> -->
        <font size="6" color="black">  云边有个小卖部（张嘉佳作品） <br></font>
        <font size="3" color="red">  张嘉佳全新作品，写给离开我们的人，写给陪伴我们的人，写给每个人心中的山和海。<br>如果你有时间打开，那请给我一个机会，陪伴你度过安静的阅读时光 <br></font>
            白条分期 <label><input name="b" type="radio" value="" />3期 </label>
            <label><input name="b" type="radio" value="" />6期</label>
            <label><input name="b" type="radio" value="" />12期</label><br>
            请选择购买数量 <label><input name="c" type="radio" value="" />1 </label>
            <label><input name="c" type="radio" value="" />2 </label>
            <label><input name="c" type="radio" value="" />3 </label><br>
        
        <font size="6" color="red">    排名：青春文学畅销榜第一位</font><br>
        <font size="6" color="red">    重量：0.475kg</font><br>
        <font size="8" color="red">    惊爆价：</font><br>
        <font size="32" color="red">    9.9元</font><br><br>
        <font size="32" color="red">    售后保障⭐⭐⭐⭐⭐</font><br><br><br>
        <font size="6" color="#1e90ff">   本产品全国联保，享受三包服务，质保期为：一年质保
            如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！
            (注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。)</font>
        <input type="button" class="btn" size="8" name="register" value ="进入商品选择页面" onclick="window.location.href='../goodschoice.jsp'"/><br>
      <!--  <font size="6" color="red">   为您推荐：</font><br> -->
    </div>
    <!--③右边部分结束-->
</div>
<!--主容器结束-->

</body>
</html>
