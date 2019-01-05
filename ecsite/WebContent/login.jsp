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
        <title>Login画面</title>

     <style type="text/css">

     body {
     margin:0;
     padding:0;
     /* line-height:1.6; */
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
    margin-top: 250px;
    }


    #main {
    width: 100%;
    height: 500px;
    text-align: center;
    }

    #footer {
    width: 100%;
    height: 80px;
    background-color:#f8b500;
    clear:both;
    }

    #text-link {
    display: inline-block;
    text-align:right;

    }

   h3{color: #333;
   font-family: "Avenir Next";
    margin-top: 250px;
    margin-left: 40px;
    font-size: 30px;
    font-style: italic;
    text-align: center;
    border-bottom: 3px dotted black;
    border-top:3px dotted black;
}


   .txt {
    width: 30%;
    height: 30px;
    border: 0.5px solid #999;
    font-size: 20px;
   }

   .submit_btn { padding: 0.5em 1em;
    text-decoration:none;
    border-radius:80px;
    width:100px;
	height : 35px;
	margin-top : -5px;
	margin-left : 6px;
    font-size:10px;
    text-align:center;
    color:#333;
    box-shadow:2px 2px #f8b500;
    background: #f8b500;
    background: -webkit-gradient(linear, left top, left bottom, from(#ffff66), to(#dccb18) );
    background: -moz-linear-gradient(-90deg, #81a8cb, #4477a1);
    filter:  progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#81a8cb', endColorstr='#4477a1');
   }

   .submit_btn:hover{
    color:#fff;
    background-color:#49a9d4;
    box-shadow:2px 2px #1a6ea0;
    cursor: pointer;
    opacity:0.5;
    background: #81a8cb;
    background: -webkit-gradient(linear, left top, left bottom, from(#4477a1), to(#81a8cb) );
    background: -moz-linear-gradient(-90deg, #4477a1, #81a8cb);
    filter:  progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#4477a1', endColorstr='#81a8cb');
}

</style>
</head>
<body>
<jsp:include page="header.jsp" />



   <div id = "main">
   <div>
     <h3>商品を購入する際にはログインをお願いします。</h3><br><br>


     <s:form action="LoginAction">

        <tr>
			<s:label value="ログインID:"/>
			<td><s:textfield name="loginUserId" class="txt" placeholder="ログインID" /></td>
		</tr><br><br>
		<tr>
			<s:label value="パスワード:"/>
			<td><s:password name="loginPassword" class="txt" placeholder="パスワード" /></td>
		</tr><br><br>

		<s:submit value="ログイン" class="submit_btn" onclick="LoginAction();"/>

		 </s:form><br>


		<s:form action="UserCreateAction">
			<s:submit value="新規ユーザー登録" class="submit_btn" />
		</s:form><br>

		<s:form action="GoHomeAction">
			<s:submit value="ホームへ戻る" class="submit_btn" />
		</s:form>


     </div>
     </div>
     <div id ="footer">
     <div id ="pr">
     </div>
     </div>


</body>
</html>