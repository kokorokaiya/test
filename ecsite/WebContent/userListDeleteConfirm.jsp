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
        <script src ="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" ></script>

        <title>UserListDeleteConfirm</title>
        <style type="text/css">



     body {
     margin:0;
     padding:0;
     line-height:1.6;
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
    }


    #header {
    width:100%;
    height:80px;
    background-color: black;

    }

    #main {
    width: 100%;
    height: 500px;
    text-align: center;

    }

    #footer {
    width: 100%;
    height: 80px;
    background-color: black;
    clear:both;
    }


</style>


     <script type = "text/javascript">
     function submitAction(url){
    	 $('form').attr('action', url);
    	 $('form').submit();
     }
      </script>


</head>
<body>


       <div id = "header">
       <div id ="pr">
       </div>
       </div>


       <div id = "main">
       <div id = "top">
         <p>UserListDeleteConfirm</p>
       </div>


       <div>
         <s:form>



         <h3>全てのユーザー情報を削除します。よろしいですか？</h3>



   <div>
   <s:if test="userList == null">
     <h3>ユーザー登録情報はありません。</h3>
    </div>
   </s:if>




   <s:elseif test = "message == null">
   <h3>ユーザー登録情報は以下になります。</h3>
   <table border="1">
   <tr>
     <th>ログインID</th>
     <th>ログインパスワード</th>
     <th>ユーザーネーム</th>
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



          <tr>
            <td><input type = "button" value="キャンセル"
            onclick = "submitAction('UserListAction')" /></td>
            <td><input type = "button" value ="OK"
            onclick="submitAction('UserListDeleteCompleteAction')" /></td>

          </tr>


         </s:form>

          </div>
          </div>

          <div id = "footer">
           <div id = "pr">
           </div>
          </div>







       <div>
        <p>前画面に戻る場合は<a href= '<s:url action="HomeAction" />'>こちら</a></p>
        <p>マイページは<a href='<s:url action = "MyPageAction" />'>こちら</a></p>
       </div>







       <div id = "footer">
       <div id = "pr">
       </div>
       </div>



</body>
</html>
