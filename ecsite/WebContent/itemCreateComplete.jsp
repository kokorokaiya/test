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
        <title>ItemCreateComplete画面</title>





     <style type="text/css">



     body {
     margin:0;
     padding:0;
   /*   line-height:1.6; */
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
     margin-top:250px;
     font-size:30px;
    }



    #main {
    width: 100%;
    height: 500px;
    text-align: center;

    }

    #text-right {
    text-align:center;
    }


    #footer {
    width: 100%;
    height: 80px;
    background-color: #f8b500;
    clear:both;
    }



    </style>

</head>
<body>
<jsp:include page="header.jsp" />

    <div id ="header">
    </div>


    <div id = "main">
    <div id ="top">
        <p>UserCreateComplete</p>
    </div>
    <div>
         <h3>アイテムの登録が完了致しました。</h3>


          <p>管理者画面へ戻る場合は<a href ='<s:url action = "AdminAction" />'>こちら</a></p>

         </div>
         </div>





         <div id = "footer">
         </div>


</body>
</html>