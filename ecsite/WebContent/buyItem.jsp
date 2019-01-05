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
        <title>BuyItem画面</title>


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

       border:solid 5px #66ccff;
       width:800px;
       margin:30px auto;
       border-radius: 255px 15px 225px 15px/15px 225px 15px 255px;
       padding:10px;
     }


     #top {
     width: 780px;
     margin:30px auto;
     border:1px solid #333;
     font-size: 30px;
     border-radius:10px 10px 10px 10px;
     margin-top:250px;

     }


     #main {
     width:100%;
     height:1000px;
     text-align:center;

     }

     #footer {
     width:100%;
     height:80px;
     background-color:#f8b500;
     clear:both;
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
    border-radius: 15%;
    padding :20px;
}

   td {
   padding: 17px;
   border-bottom: 2px dotted black;
   }

   tr:hover{
    background: #fbf8e9;
}




     </style>
</head>
<body>
<jsp:include page="header.jsp" />


     <div id = "main">

<div>
   <h3><s:property value = "session.login_user_id"/><span>さん</span>、ようこそ。商品は以下からお選び頂けます。</h3>
   <!-- session.login_user_idでlogin_user_idをsessionからとってくる。sessionに入れているので、sessinが必要 -->

<s:form action="BuyItemAction">

<!-- s:if文で、エラーメッセージリストと表示窓口を作ってあげる。 -->
<s:if test="errorMessageList != null">
	<s:iterator value="errorMessageList">
		<s:property /><br/>
	</s:iterator>
</s:if>


<table>
<div class = "list">

   <tr>
  	 <th>#</th>
     <th>id</th>
     <th>商品名</th>
     <th>値段</th>
     <th>在庫数</th>
     <th>購入個数</th>
   </tr>
   <s:iterator value ="#session.buyItemDTOList">
   <tr>
   	<td><s:checkbox name="checkList" value="checked" fieldValue="%{id}"/></td>
   	<td><s:property value = "id" /><s:hidden name ="id" value="%{id}" /></td>
   	<td><s:property value = "itemName" /><s:hidden name ="itemName" value="%{itemName}" /></td>
   	<td><s:property value = "itemPrice" /><s:hidden name ="itemPrice" value="%{itemPrice}" /><span>円</span></td>
   	<td><s:property value = "itemStock" /><s:hidden name ="itemStock" value="%{itemStock}" /><span>個</span></td>
<!--   △hidden nameの方を”%{}”で囲ってあげることで、値の受け渡しができる。property valueも"%{}"でもいいけど、その中の値が表示される（次のアクションへと） -->
   	<td>
   	   <select name="count">
		    <option value ="1" selected="selected">1</option>
		    <option value="2">2</option>
		    <option value="3">3</option>
		    <option value="4">4</option>
		    <option value="5">5</option>
		    <option  value="6">6</option>
		    <option value="7">7</option>
		    <option value="8">8</option>
		    <option value="9">9</option>
		    <option value="10">10</option>

    	</select>
	</td>
   </tr>
	</s:iterator>
	</div>
	</table>

	<table>
	          <tr>
              <td>
              <span>支払い方法</span>
                <input type="radio" name="pay" value="1" checked="checked">現金払い
               <input type="radio" name="pay" value="2">クレジットカード
               </td>
               </tr>


     </table>

<br><br>

			     <s:submit value="購入" class="submit_btn" />
		          <br>
		          <br>


</s:form>



           <s:form action="GoHomeAction">
			<s:submit value="前画面に戻る" class="submit_btn" />
		   </s:form><br>

		   <s:form action="MyPageAction">
			<s:submit value="マイページ画面" class="submit_btn" />
		</s:form>

           </div>
  </div>
           <div id ="footer">
            <div id ="pr">

            </div>
           </div>


</body>
</html>