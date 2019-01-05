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
        <title>UserList画面</title>
        <style type="text/css">


     body {
     margin:0;
     padding:0;
    /*  line-height:1.6; */
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
     border:1px solid #333;
     border-radius:10px 10px 10px 10px;
      margin-top:250px;
      font-size:30px;

     }


     #main {
     width:100%;
     height:900px;
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
     text-align: right;
 }


     </style>

</head>
<body>
<jsp:include page="header.jsp" />



   <div id="main">
   <div id = "top">
     <p>List of All Users</p>
   </div>
   <div>
   <s:if test="userList == null">
     <h3>ユーザー登録情報はありません。</h3>


   </s:if>
   <s:elseif test = "message == null">
   <h3>ユーザー登録情報は以下になります。</h3>
   <table border="1">
   <tr>
     <th>LoginID</th>
     <th>LoginPassword</th>
     <th>UserName</th>

   </tr>

   <s:iterator value ="UserList">
   <tr>
    <td><s:property value = "loginId" /></td>
    <td><s:property value = "loginPass"/></td>
    <td><s:property value = "userName"/></td>

   </tr>

   </s:iterator>
   </table>


   </s:elseif>



   <s:if test= "message ! = null">
    <h3><s:property value = "message"/></h3>
   </s:if>


       <div>
        <p>前画面に戻る場合は<a href= '<s:url action="AdminAction" />'>こちら</a></p>
        <p>ユーザー情報を全削除する場合は<a href='<s:url action = "UserListDeleteConfirmAction" />'>こちら</a></p>
       </div>


     </div>
     </div>


     <div id = "footer">
     <div id = "pr">

     </div>
   </div>



</body>
</html>