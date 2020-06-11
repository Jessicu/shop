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
<font size="8" color="#00bfff">    主页>图书>封神演义</font>
    </div>
    <!--①标题部分结束-->
    <!--②左边部分开始-->
    <div id="navigation">
        <img src="feng.jpg" width="620" height="620"><br>
        <font size="6" color="black">  内容简介 <br></font>
        <font size="4" color="red"> 初读《封神演义》会让人们觉得书中人物及事件与当时社会生活毫不搭界，甚至连现实的影子都找不到，我们看到都是作者奇橘瑰丽的想象。然而，也就是这种想象引起了读者兴趣，进而又逐渐读出一些深意，才使这部小说风行海内外，流传几百年而不衰。
            明代自嘉靖以后，封建专制主义制度发展到令人忍无可忍的地步。吏贪官横，民不聊生，社会危机日趋严重，与此同时，资本主义经济萌芽在我国东南沿海地区进一步发展，市民阶层在苏、杭等地开始显示力量。正是在这种民怨沸腾的时代背景下，许仲琳以元代讲史话本《武王伐纣平话》为底本，并参照其后流传于民间的《列国志》西周部分，集合了民间神话、传说、野史、轶闻、佛经故事等有关情节，加进了许多天才的幻想，创编出来一百回的《封神演义》，通过抨击暴君殷纣王来抨击明代专制王朝。这正是《封神演义》的思想意义之所在。有的情节如哪叱剔骨还肉的描写等还批判地触动了封建道德的伦理秩序。       <br></font>
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
        <font size="6" color="black"> 华夏英雄传系列：封神演义 <br></font>
        <font size="3" color="red"> [明] 许仲琳  <br></font>
            白条分期 <label><input name="b" type="radio" value="" />3期 </label>
            <label><input name="b" type="radio" value="" />6期</label>
            <label><input name="b" type="radio" value="" />12期</label><br>
            请选择购买数量 <label><input name="c" type="radio" value="" />1 </label>
            <label><input name="c" type="radio" value="" />2 </label>
            <label><input name="c" type="radio" value="" />3 </label><br>
        <font size="6" color="red">    排名：文学销量榜第129位</font><br>
        <font size="6" color="red">    重量：0.77kg</font><br>
        <font size="8" color="red">    惊爆价：</font><br>
        <font size="32" color="red">    9.9元</font><br><br>
        <font size="32" color="red">    售后保障⭐⭐⭐⭐⭐</font><br><br><br>
        <font size="6" color="#1e90ff">   本产品全国联保，享受三包服务，质保期为：一年质保
            如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！
            (注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。)</font>
        <input type="button" class="btn" size="8" name="register" value ="进入商品选择页面" onclick="window.location.href='../goodschoice.jsp'"/><br>
        <font size="6" color="black">  编辑推荐 <br></font>
        <font size="4" color="red">  在思想内容上，《封建演义》也有其不足之处，综观全书，我们会发现，每回故事，每个人物的命运无一例外地都逃不出"定数"的安排，结局是"天定"的，不论人们（包括神通广大的各路神仙）如何挣扎，大都徒劳无益，对命定的结局都无可奈何。这种宿命论的思想是全书的糟粕，这种思想无疑会对读者产生消极影响。这是应该指出并予以注意的。
            《封神演义》是一部富有浪漫主义色彩的神魔小说，以荒诞的幻想来塑造人物、展现故事、安排细节。作者的想象力是惊人的。  <br></font>
      <!--  <font size="6" color="red">   为您推荐：</font><br> -->
    </div>
    <!--③右边部分结束-->
</div>
<!--主容器结束-->

</body>
</html>
