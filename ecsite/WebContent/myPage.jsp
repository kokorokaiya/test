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
        <title>MyPage画面</title>
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

       border:solid 5px #ff66ff;
       width:800px;
       margin:30px auto;
       border-radius: 255px 15px 225px 15px/15px 225px 15px 255px;
       padding:10px;
     }

     #top {
     width: 780px;
     margin:30px auto;
     border:1px solid #333;
     border-radius:10px 10px 10px 10px;
     font-size:30px;
      margin-top:220px;

     }

     #main {
     width:100%;
     height:2000px;
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

    h3 {color: #333;
     font-family: "Avenir Next";
     margin-top: 250px;
     margin-left: 40px;
     font-size: 30px;
     font-style: italic;
     text-align: center;
     border-bottom: 3px dotted black;
     border-top:3px dotted black;
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
    box-shadow:2px 2px #1a6ea0;
    background: #f8b500;
    background: -webkit-gradient(linear, left top, left bottom, from(#f8b500), to(#a69425) );
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

  th {
    border-radius: 3%;
    padding :15px;
}

   td {
   border-radius: 3%;
   padding: 30px;
   border-bottom: 2px dotted #333;
   }

   tr:hover{
    background: #fbf8e9;
}



     </style>

</head>
<body>
<jsp:include page="header.jsp" />

   <div id="main">

   <div>
   <s:if test="myPageList == null">
     <h3>ご購入情報はありません。</h3>
   </s:if>


   <s:elseif test = "message == null">
   <h3><s:property value = "session.login_user_id"/><span>さんの</span>ご購入情報は以下になります。</h3>


   <table border="0.5">
   <tr>
     <th>商品名</th>
     <th>値段</th>
     <th>購入個数</th>
     <th>支払い方法</th>
     <th>購入日</th>
   </tr>



   <s:iterator value ="myPageList">
   <tr>
    <td><s:property value = "itemName" /></td>
    <td><s:property value = "totalPrice"/><span>円</span></td>
    <td><s:property value = "totalCount"/><span>個</span></td>
    <td><s:property value = "payment"/></td>
    <td><s:property value = "insert_date" /></td>
   </tr>

   </s:iterator>
   </table><br><br>


   <s:form action = "MyPageAction">
   <input type = "hidden" name = "deleteFlg" value = "1">
   <s:submit value = "削除" method = "delete" class="submit_btn" />
   </s:form><br>

<!--    △ここで、name="deleteFlg" value= "1"で削除の場合は、１ですよという設定をしてあげる。 -->

   </s:elseif>


   <s:if test= "message ! = null">
    <h3><s:property value = "message"/></h3>
   </s:if>

<!--    △ここでは、MyPageActionのelse if文でメッセージ設定をしているのでその表示設定をjspでする（上記）-->





        <s:form action="GoHomeAction">
			<s:submit value="HOMEに戻る" class="submit_btn" />
		   </s:form><br>

		   <s:form action="LogoutAction">
			<s:submit value="ログアウトする" class="submit_btn" />
		</s:form>

     </div>
     </div>


     <div id = "footer">
     <div id = "pr">

     </div>
   </div>



</body>
</html>