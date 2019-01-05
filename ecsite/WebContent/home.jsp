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
        <title>africa times</title>


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
 <ul>

     <li><div class="part_line"><a href='<s:url action="HomeAction" />'>LOGIN and SHOPPING</a></div></li>

     <li><div class="part_line"><a href='<s:url action="MyPageAction" />'>MYPAGE</a></div></li>

     <li><div class="part_line"><a href='<s:url action="ItemListAction" />'>LIST OF ALL PRODUCT</a></div></li>

     <li><div class="part_line"><a href='<s:url action="InquiryAction" />'>CONTACT US</a></div></li>

      <li><div class="part_line"><a href="mikuji.jsp">OMIKUJI</a></div></li>

<s:if test="session.login_user_id != null">
       <s:property value = "session.login_user_id"/><span>さん</span>、ようこそ。
</s:if>

 </ul>


</header>
<main>


<%--        <s:if test="#session.login_user_id != null">
        <p>ログアウトする場合は
        <a href='<s:url action="LogoutAction" />'>こちら</a></p>
      </s:if> --%>

    <div class = "message">BELIEVE IN SOMETHING.<br>
    EVEN IF IT MEANS SACRIFICING EVERYTHING.</div>


  <div class ="box2">


     <div class="box_pic2">
    <img src ="img/elephant.jpg">
    <div class="mask">
		<div class="caption">NAIROBI</div></div>
      </div>



    <div class ="box_pic2">
       <img src="img/sunset.jpg">
       <div class="mask">
		<div class="caption">ZAMBIA</div></div>
      </div>



    <div class="box_pic2">
       <img src ="img/smile.jpg">
        <div class="mask">
		<div class="caption">KENYA</div></div>
      </div>




       <div class="box_pic2">
       <img src ="img/cheter.jpg">
        <div class="mask">
		<div class="caption">AMBOSERI</div></div>
      </div>



     </div>






  <div class ="box3">

     <div class="box_pic2">
       <img src ="img/maasai.jpg">
        <div class="mask">
		<div class="caption">MASSAI</div></div>
      </div>



    <div class ="box_pic2">
       <img src="img/sea.jpg">
        <div class="mask">
		<div class="caption">MALAWI</div></div>
      </div>


    <div class="box_pic2">
       <img src ="img/rhino.jpg">
        <div class="mask">
		<div class="caption">MOZAMBIQUE</div></div>
      </div>



       <div class="box_pic2">
       <img src ="img/shimba.jpg">
               <div class="mask">
		<div class="caption">OLPEJETA</div></div>
      </div>



     </div>



<div class="abc">
    <div><img src="img/elephant.jpg"></div>
    <div><img src="img/smile.jpg"></div>
    <div><img src="img/cheter.jpg"></div>
    <div><img src="img/sunset.jpg"></div>
    <div><img src="img/maasai.jpg"></div>
    <div><img src="img/shimba.jpg"></div>
    <div><img src="img/sea.jpg"></div>
  </div>




<h1>OUR WORK</h1>

     <div class="naiyou">
         <strong>＜WHERE IS KENYA ? - KENYA IKO WAPI ? ＞</strong>

         KENYA---Located in Eastern africa between somalia and tanzania, Kenya has population of about 47 million people.

    <strong>＜GEOGRAPHY＞</strong>
    <p>NAIROBI, the capital of Kenya, calls itself the city in the Sun, and a visit can be as pleasant as that sounds. Most of outsiders drop in for two reasons; business and animals. A short flight from spectacular wildlife parks such as the Maasai Mara, Nairobi has also become a magnet for some of the world`s biggest corporations trying to gain a foothold in Africa. The city is surprisingly beautiful with flowering trees and the perfect climate: 70s and 80s, sunny, low humidity --- almost every day. It`s a palpably multicultural place, encapsulating what is happening in Africa better than any other city on the continent. Picture new construction, a lot of people, intense traffic, and more and more western business. Yet you can still feed giraffes and baby elephants from within the city limits and see Maasai warriors ordering lattes in red-checkered blankets.
    </p>


    <div class="ele"><img src="img/elephant.jpg" alt="ele" width="400" height="280" ></div>


    <strong>＜HISTORY＞</strong>
    <p>Jomo Kenyatta, the father of the current president, was a Kenyan freedom fighter, the living embodiment of african nationalism, and, therefore, the British colonial goverment`s most hated man. He spent the last decade of Kenya`s colonial rule in prison. Today, Kenya is deeply --- and evenly --- divided politically between uhuru kenyatta, the president, and his longtime political rival, raila odinga.
    </p>





    <p>However, when Jaramogi Oginga Odinga, the father of Raila Odinga, negotiated independence with the British decades ago, the colonial rulers wanted mr.odinga to lead the new Kenya.
     </p>


    </div>


<h1>OUR SERVICES</h1>

<!-- <div class="lion"><img src="img/forest.jpg" alt="lion" width="400" height="280"></div> -->
<div class="naiyou_1">

 AFRICA ON AIRでは、アフリカにまつわる商品や旅の情報を提供します。<br><br>

このサイトでは、ID、パスワードを持っておられる方は複数の商品を購入することができます。<br>
またIDを持っておられない方は、ログイン画面にて新規登録をしていただけます。<br>
商品一覧は（ITEM LIST)はログインなしでもご覧いただけます。<br>
管理者用ログインをすれば、管理者用ページに遷移し商品の登録や、削除ができます。<br>
また登録ユーザーの一覧を観覧することができます。<br>


</div>


</main>




<footer>
copy right(C) all right reserved kutoka moyoni 2015-2018
</footer>


<script type="text/javascript" src="script.js"></script>


</body>
</html>

