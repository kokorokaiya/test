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
     /* line-height:1.6; */
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
     font-size: 30px;
     margin-top: 250px;
     }


     #main {
     width:100%;
     height:500px;
     text-align:center;
     }

     #footer {
     width:100%;
     height:80px;
     background-color:#f8b500;
     clear:both;
}


     #text-right{
     display:inline-block;
     text-align: center;
     width: 300px;
     margin:30px auto;
     border:2px solid grey;
     background-color:white;
     border-radius: 10px 10px 10px 10px;
     font-size: 15px;

 }


      #text-left{
     display:inline-block;
     text-align: center;
     width: 300px;
     margin:30px auto;
     border:2px solid grey;
     background-color:white;
     border-radius: 10px 10px 10px 10px;
     font-size: 15px;

 }

     #name {
     text-align: center;
     padding:10px;

     }

     h3{color: #333;
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
<h3>管理者画面へようこそ。</h3>


      <div id ="text-right">
      <div id= "name">ITEM</div>

     <%--  <s:form action = "ItemCreateAction">
      <s:submit value="新規登録" />
      </s:form>

      <s:form action = "ItemListAction">
      <s:submit value="一覧" />
     </s:form> --%>



       <li><div class="part_line"><a href='<s:url action="ItemCreateAction" />'>商品新規登録</a></div></li>

      <o href="#" class="part_line"> <li><a href='<s:url action="ItemListAction" />'>商品一覧</a></li></o>

       </div>



      <div id = "text-left">
      <div id = "name">USER</div>

     <%--  <s:form action = "UserCreateAction">
      <s:submit value="新規登録" />
      </s:form>


      <s:form action = "UserListAction">
      <s:submit value="一覧" />
     </s:form> --%>


      <o href="#" class="part_line"> <li><a href='<s:url action="UserCreateAction" />'>ユーザー新規登録</a></li></o><br><br>

      <o href="#" class="part_line"> <li><a href='<s:url action="UserListAction" />'>ユーザー一覧</a></li></o>

      </div>



      <div id = "footer">
      </div>
     </div>




</body>
</html>