<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="s" uri="/struts-tags" %>


<!DOCTYPE html>
<html>
<head>

        <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
        <meta http-equiv="Content-Style-Type" content="text/css" />
        <meta http-equiv="Content-Script-Type" content="text/javascript" />
        <meta http-equiv="imagetoolbar" content="no" />
        <meta name ="description" content="" />
        <meta name= "keywords" content="" />
      　 <link rel ="stylesheet" href="./css/home.css">
        <title>Home画面</title>
 <title>africa times</title>
 <link rel="stylesheet" type="text/css" href="header.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


  <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

  <script>
    $(document).ready(function(){
      $('.abc').bxSlider({
          auto: true,
          mode: 'horizontal',
          speed:1000,
          slideWidth: 500,
          maxSlides:4,
          minSlide:4,

      });
    });
  </script>


</head>

<body>

<header>
<strong><a href='<s:url action="GoHomeAction" />'><div class="logo">AFRICA ON AIR</div></a></strong>
 <ul >


     <li><div class="part_line"><a href='<s:url action="HomeAction" />'>LOGIN and SHOPPING</a></div></li>

     <li><div class="part_line"><a href='<s:url action="MyPageAction" />'>MYPAGE</a></div></li>

     <li><div class="part_line"><a href='<s:url action="ItemListAction" />'>LIST OF ALL PRODUCT</a></div></li>

     <li><div class="part_line"><a href='<s:url action="InquiryAction" />'>CONTACT US</a></div></li>

      <li><div class="part_line"><a href="mikuji.jsp">OMIKUJI</a></div></li>

 </ul>
<s:if test="session.login_user_id != null">
 <s:property value = "session.login_user_id"/><span>さん</span>、ようこそ。
</s:if>

</header>
</body>
</html>


