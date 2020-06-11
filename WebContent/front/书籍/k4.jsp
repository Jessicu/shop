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
<font size="8" color="#00bfff">    主页>图书>一只特立独行的猪</font>
    </div>
    <!--①标题部分结束-->
    <!--②左边部分开始-->
    <div id="navigation">
        <img src="yi.jpg" width="620" height="620"><br>
        <font size="6" color="black">  内容简介 <br></font>
        <font size="4" color="red"> 我觉得黑色幽默是我的气质，是天生的。——王小波

            本书为王小波杂文代表作，王小波终其一生思考着并快乐着，他以独有的调侃的笔调完成了对自由与理性的反思与书写。书中对女权主义、科学与迷信、同性恋、小说创作、知识分子等话题进行剖解，展现了一座智性的迷宫，让读者从他那里学会如何独立而自由地思考，真切地体会到作为一个独立个体，应有的尊严与自由。这种观点在上世界九十年代点爆了一代人的青春，放在当下，依然具有鲜活的感染力。
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
        <font size="6" color="black">  一只特立独行的猪 <br></font>
        <font size="3" color="red"> 王小波杂文精选集，逝世二十周年精装纪念版！幽默中充满智性，扛起一面自由、独立、理性的精神旗帜！——“我觉得黑色幽默是我的气质，是天生的。” <br></font>
            白条分期 <label><input name="b" type="radio" value="" />3期 </label>
            <label><input name="b" type="radio" value="" />6期</label>
            <label><input name="b" type="radio" value="" />12期</label><br>
            请选择购买数量 <label><input name="c" type="radio" value="" />1 </label>
            <label><input name="c" type="radio" value="" />2 </label>
            <label><input name="c" type="radio" value="" />3 </label><br>
        
        <font size="6" color="red">    排名：文学销量榜第42位</font><br>
        <font size="6" color="red">    重量：0.4kg</font><br>
        <font size="8" color="red">    惊爆价：</font><br>
        <font size="32" color="red">    9.9元</font><br><br>
        <font size="32" color="red">    售后保障⭐⭐⭐⭐⭐</font><br><br><br>
        <font size="6" color="#1e90ff">   本产品全国联保，享受三包服务，质保期为：一年质保
            如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！
            (注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。)</font>
        <input type="button" class="btn" size="8" name="register" value ="进入商品选择页面" onclick="window.location.href='../goodschoice.jsp'"/><br>
        <font size="6" color="black">  作者推荐 <br></font>
        <font size="4" color="red"> 王小波（1952—1997）

            1952年生于北京。1968年到云南插队。后在山东转插，做过民办教师。1973年在北京当工人。

            1978年考入中国人民大学本科，1986年获得美国匹兹堡大学硕士学位。1988年回国，曾在北京大学、中国人民大学任教。1992年辞职，成为自由撰稿人。

            1997年4月11日病逝于北京。

            在当代中国作家中，从没有人像他那样获得数不清的赞誉和追捧，从没有人像他那样有无数青年自愿充当其“门下走狗”。他的小说为读者贡献了现代汉语小说从未有过的阅读快感，他让人们看到了一个完全不同的别样的世界；他的杂文，幽默中充满智性，为读者打开一条通向智慧、理性的道路，被一代代年轻人奉为精神偶像。

            他被誉为中国的乔伊斯兼卡夫卡，亦是两次获得世界华语文学界的重要奖项“台湾《联合报》文学奖中篇小说大奖”的中国大陆作家。

            代表作有杂文集《沉默的大多数》，小说《黄金时代》《革命时期的爱情》。其中《黄金时代》《未来世界》分别获第13届、第16届《联合报》文学奖中篇小说大奖；电影剧本《东宫·西宫》获阿根廷国际电影节编剧奖。


            <br></font>
      <!--  <font size="6" color="red">   为您推荐：</font><br> -->
    </div>
    <!--③右边部分结束-->
</div>
<!--主容器结束-->

</body>
</html>
