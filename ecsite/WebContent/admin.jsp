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
        <title>管理者画面</title>
        <style type="text/css">


     body {
     margin:0;
     padding:0;
     line-height:1.6;
     letter-spacing:1px;
     font-family:Verdana, Helvetica, sans-serif;
     font-size: 12px;
     color: #333;
     background:#fff;
     }

     table {
      text-align:center;
      margin:0 auto;

     }

     #top {
     width: 780px;
     margin:30px auto;
     border:1px solid black;
     border-radius: 10px 10px 10px 10px;

     }

     #header {
     width:100%;
     height: 80px;
     background-color:#CC99CC;
     }

     #main {
     width:100%;
     height:500px;
     text-align:center;
     }

     #footer {
     width:100%;
     height:80px;
     background-color:#CC99CC;
     clear:both;
}


     #text-right{
     display:inline-block;
     text-align: right;
     width: 300px;
     margin:30px auto;
     border:2px solid grey;
     background-color:#F8F8FF;
     border-radius: 10px 10px 10px 10px;



 }


      #text-left{
     display:inline-block;
     text-align: left;
     width: 300px;
     margin:30px auto;
     border:2px solid grey;
     background-color:#F8F8FF;
     border-radius: 10px 10px 10px 10px;

 }

     #name {
     text-align: center;
     padding:10px;

     }


     </style>

</head>
<body>


     <div id = "header">
     </div>

     <div id = "main">
      <div id ="top">
        <p>ADMINISTRATOR</p>
      </div>


      <div id ="text-right">
      <div id= "name">ITEM</div>
      <s:form action = "ItemCreateAction">
      <s:submit value="新規登録" />
      </s:form>

      <s:form action = "ItemListAction">
      <s:submit value="一覧" />
     </s:form>
      </div>




      <div id = "text-left">
      <div id = "name">USER</div>
      <s:form action = "UserCreateAction">
      <s:submit value="新規登録" />
      </s:form>


      <s:form action = "UserListAction">
      <s:submit value="一覧" />
     </s:form>
      </div>




      <div id = "footer">
      </div>
     </div>




</body>
</html>