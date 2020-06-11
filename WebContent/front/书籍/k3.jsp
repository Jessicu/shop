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
<font size="8" color="#00bfff">    主页>图书>夜航船</font>
    </div>
    <!--①标题部分结束-->
    <!--②左边部分开始-->
    <div id="navigation">
        <img src="ye.jpg" width="620" height="620"><br>
        <font size="6" color="black">  内容简介 <br></font>
        <font size="4" color="red">  读过《夜航船》，灵魂才有趣！这是一部有趣、有料的文化常识小百科。

            　　囊括天文地理、古玩奇器、珍禽异兽、诸子百家、宫廷秘闻、草木花卉、三教九流、鬼怪神异……

            　　包含20大类4248个文化常识，趣味性、知识性和故事性完美结合的不朽经典，问世300年一直秘本流传，仿佛漫天星光，在漆黑的夜空闪烁，璀璨而迷人。

            　　如果只读一本书，就能让你变得博识有趣，非《夜航船》莫属。

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
        <font size="6" color="black">  夜航船 <br></font>
        <font size="3" color="red"> 作家榜经典：夜航船（贾平凹推荐版！年轻人要熟知的4248个文化常识！上海国际学校指定必读！全新未删节插图珍藏版） <br></font>
            白条分期 <label><input name="b" type="radio" value="" />3期 </label>
            <label><input name="b" type="radio" value="" />6期</label>
            <label><input name="b" type="radio" value="" />12期</label><br>
            请选择购买数量 <label><input name="c" type="radio" value="" />1 </label>
            <label><input name="c" type="radio" value="" />2 </label>
            <label><input name="c" type="radio" value="" />3 </label><br>

        <font size="6" color="red">    排名：文学销量榜第53位</font><br>
        <font size="6" color="red">    重量：1.4kg</font><br>
        <font size="8" color="red">    惊爆价：</font><br>
        <font size="32" color="red">    9.9元</font><br><br>
        <font size="32" color="red">    售后保障⭐⭐⭐⭐⭐</font><br><br><br>
        <font size="6" color="#1e90ff">   本产品全国联保，享受三包服务，质保期为：一年质保
            如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！
            (注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。)</font>
        <input type="button" class="btn" size="8" name="register" value ="进入商品选择页面" onclick="window.location.href='../goodschoice.jsp'"/><br>
        <font size="6" color="black">  作者推荐 <br></font>
        <font size="4" color="red">  张岱（1597—约1680），明代文学家，号陶庵，别号蝶庵居士。出生于浙江绍兴显宦之家。幼年读书三万卷，被誉为“神童”。年轻时极爱繁华，爱鲜衣，爱骏马，爱美食，爱美婢，放浪形骸，纵情声色。
            　　一生勤于笔耕，着述等身。除《陶庵梦忆》《西湖寻梦》《琅嬛文集》及史学名着《石匮书》外，还着有《夜航船》一书，该书包罗万有，共计20大类，4248个文化常识，趣味无穷。
            　　作为有明一朝的文化大师，他丰神绰约，诗意盎然，代表了中国人淡远、自然的美学品味。

            <br></font>
      <!--  <font size="6" color="red">   为您推荐：</font><br> -->
    </div>
    <!--③右边部分结束-->
</div>
<!--主容器结束-->

</body>
</html>
