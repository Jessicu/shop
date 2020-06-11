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
<font size="8" color="#00bfff">    主页>图书>天才在左疯子在右</font>
    </div>
    <!--①标题部分结束-->
    <!--②左边部分开始-->
    <div id="navigation">
        <img src="tian.jpeg" width="620" height="620"><br>
        <font size="6" color="black">  内容简介 <br></font>
        <font size="4" color="red">这本书，是一群误入歧途的天才的故事，也是一群入院治疗的疯子的故事。这本书，是作者高铭耗时4年深入医院精神科、公安部等神秘机构，和数百名“非常态人类”直接接触后，以访谈形式记录了生活在社会另一个角落的人群（精神病患者、心理障碍者等边缘人）的所思所想。这本书，是国内diyi本具有人文情怀的精神病患谈访录。在与精神病患对话的内容里涉及到生理学、心理学、佛学、宗教、量子物理、符号学以及玛雅文明和预言等众多领域。表现出精神病患看待世界的角度和对生命提出的深刻观点，闻所未闻却又论证严谨。      <br></font>
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
        <font size="6" color="black"> 天才在左 疯子在右：完整版(新版) <br></font>
        <font size="3" color="red"> 磨铁出品；高铭 著  <br></font>
            白条分期 <label><input name="b" type="radio" value="" />3期 </label>
            <label><input name="b" type="radio" value="" />6期</label>
            <label><input name="b" type="radio" value="" />12期</label><br>
            请选择购买数量 <label><input name="c" type="radio" value="" />1 </label>
            <label><input name="c" type="radio" value="" />2 </label>
            <label><input name="c" type="radio" value="" />3 </label><br>
     
        <font size="6" color="red">    排名：文学销量榜第49位</font><br>
        <font size="6" color="red">    重量：0.47kg</font><br>
        <font size="8" color="red">    惊爆价：</font><br>
        <font size="32" color="red">    9.9元</font><br><br>
        <font size="32" color="red">    售后保障⭐⭐⭐⭐⭐</font><br><br><br>
        <font size="6" color="#1e90ff">   本产品全国联保，享受三包服务，质保期为：一年质保
            如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！
            (注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。)</font>
        <input type="button" class="btn" size="8" name="register" value ="进入商品选择页面" onclick="window.location.href='../goodschoice.jsp'"/><br>
        <font size="6" color="black">  编辑推荐 <br></font>
        <font size="4" color="red">  ★一本默默无闻的书，一经出版便迅速占据各大图书排行榜首。《天才在左 疯子在右》，没有浮夸的修辞，没有繁复的文体，简简单单的对话形式，却以现象级的销量，撼动了所有人自以为稳固的世界观。

            ★被各大影视公司争抢改编权，同名网络剧单集首播观看次立即破百万。

            ★完整版带着10个从未公开的新篇章，再次与大家见面。依旧是那些在静谧中喧嚣的观点，仍然是那些在秩序中混乱的立场。让一批又一批的人，在字里行间探索未知，重新定义曾经根深蒂固的认知。

            ★有多少疯子，在自己的世界里正常着。 有多少天才，在自己的世界里疯狂着。 一堵围墙，区分两个截然不同的世界。 围墙内外，疯狂与正常。 围墙之上，困惑与彷徨。 一本书，拆掉围墙。  <br></font>
      <!--  <font size="6" color="red">   为您推荐：</font><br> -->
    </div>
    <!--③右边部分结束-->
</div>
<!--主容器结束-->

</body>
</html>
