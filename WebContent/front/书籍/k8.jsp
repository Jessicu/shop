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
            width: 620px;
            height:600px;
            margin-left:0px;
        }

        #content
        {
            background-color:lightyellow;
            top: 60px;
            height:600px;
            margin-right:0px;
            border-left: 620px ;
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
<font size="8" color="#00bfff">    主页>图书>三体</font>
    </div>
    <!--①标题部分结束-->
    <!--②左边部分开始-->
    <div id="navigation">
        <img src="san.jpg" width="620" height="620"><br>
        <font size="6" color="black">  内容简介 <br></font>
        <font size="4" color="red">本套装包括《三体》、《三体2：黑暗森林》、《三体3：死神永生》3册。
            　　《三体》
            　　作者试图讲述一部在光年尺度上重新演绎的中国现代史，讲述一个文明二百次毁灭与重生的传奇。小说《三体》与三体问题有关，其中描述了一种在半人马座三星生存的三体人及其三体文明。同时《三体》也是小说中的一个模拟三体文明在一个有三颗太阳的星系中挣扎生存并发展的网络游戏，应该是由希望三体文明降临地球介入人类文明的三体组织开发的。

            　　《三体2：黑暗森林》
            　　讲述的是光年尺度下的生存推理。在三体人准备侵略地球的这段时间里，人类当然不会坐以待毙，利用三体人思维透明的致命缺陷，制订了神秘莫测的“面壁计划”，精选出四位“面壁者”，希望以此展开对三体人的反击。
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
        <font size="6" color="black"> 中国科幻基石丛书：三体（套装1-3册） <br></font>
        <font size="3" color="red"> 《三体》第73届世界科幻雨果奖获奖作品，银河奖特别奖，入选教育部《中小学生阅读指导目录（2020年版）》，刘慈欣十届银河奖得主  <br></font>
            白条分期 <label><input name="b" type="radio" value="" />3期 </label>
            <label><input name="b" type="radio" value="" />6期</label>
            <label><input name="b" type="radio" value="" />12期</label><br>
            请选择购买数量 <label><input name="c" type="radio" value="" />1 </label>
            <label><input name="c" type="radio" value="" />2 </label>
            <label><input name="c" type="radio" value="" />3 </label><br>
        
        <font size="6" color="red">    排名：文学销量榜第3位</font><br>
        <font size="6" color="red">    重量：1.32kg</font><br>
        <font size="8" color="red">    惊爆价：</font><br>
        <font size="32" color="red">    9.9元</font><br><br>
        <font size="32" color="red">    售后保障⭐⭐⭐⭐⭐</font><br><br><br>
        <font size="6" color="#1e90ff">   本产品全国联保，享受三包服务，质保期为：一年质保
            如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！
            (注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。)</font>
        <input type="button" class="btn" size="8" name="register" value ="进入商品选择页面" onclick="window.location.href='../goodschoice.jsp'"/><br>
        <font size="6" color="black">  编辑推荐 <br></font>
        <font size="4" color="red"> 《三体》为“中国科幻基石丛书”之一。小说主要讲述了在文化大革命如火如荼进行的同时，军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难且对人类充满愤恨的叶文洁没有意识到，她彻底改变了人类的命运。地球文明向宇宙发出的一声啼鸣，以太阳为中心，以光速向宇宙深处飞驰……
            　　《三体》三部曲（又名“地球往事“三部曲）由《三体》、《黑暗森林》、《死神永生》三部小说组成。
            　　《三体》三部曲被誉为迄今为止中国当代杰出的科幻小说，是中国科幻文学的里程碑之作，将中国科幻推上了世界的高度，曾获得美国科幻奇幻协会“星云奖”提名。2015年8月23日，《三体》获第73届雨果奖长篇故事奖，这是亚洲人首次获得雨果奖。  <br></font>
      <!--  <font size="6" color="red">   为您推荐：</font><br> -->
    </div>
    <!--③右边部分结束-->
</div>
<!--主容器结束-->

</body>
</html>
