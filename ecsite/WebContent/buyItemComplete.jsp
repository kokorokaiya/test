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

        <title>BuyItemConfirm画面</title>
        <style type="text/css">



     body {
     margin:0;
     padding:0;
    /*  line-height:1.6; */
     letter-spacing:1px;
     font-family:Verdana, Helvetica, sans-serif;
     font-size:12px;
     color:#333;
     background:#fff;

     }

     table {
     text-align:center;
     margin:0 auto;
     }


    #top {
    width:780px;
    margin:30px auto;
    border:1px solid #333;
    border-radius:10px 10px 10px 10px;
    font-size:30px;
     margin-top:250px;
    }


    #main {
    width: 100%;
    height: 500px;
    text-align: center;

    }

    #footer {
    width: 100%;
    height: 80px;
    background-color: #f8b500;
    clear:both;
    }



    h3{color: #c9171e;
   font-family: "Avenir Next";
    margin-top: 250px;
    font-size: 30px;
    font-style: italic;
    text-align: center;
    border-bottom: 3px dotted black;
    border-top:3px dotted black;


}

   </style>


</head>
<body>
<jsp:include page="header.jsp" />


  <div id = "main">

  <div>
    <h3>ご購入ありがとうございました。Thank You for your purchase.</h3>
    <h4>A great big thank you for shopping with AFRICA ON AIR. We love our customers dearly, and your feedback is so helpful for us to hear.</h4><br>

  <div>

     <a href='<s:url action="MyPageAction" />'>
      マイページ</a><span>から購入履歴の確認が可能です。</span>

      <p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction" />'>
      こちら</a></p>

      </div>
      </div>
      </div>


      <div id = "footer">
      <div id = "pr">
      </div>
      </div>


</body>
</html>