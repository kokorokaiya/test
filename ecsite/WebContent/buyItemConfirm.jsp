<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE html>
<html>
<head>



<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<title>BuyItemConfirm画面</title>
<script type="text/javascript">
	function submitAction(url) {
		$('form').attr('action', url);
		$('form').submit();
	}
</script>

<style type="text/css">
body {
	margin: 0;
	padding: 0;
	/*  line-height:1.6; */
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff;
}

table {
	text-align: center;
	margin: 0 auto;
}

#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
	border-radius: 10px 10px 10px 10px;
	font-size: 30px;
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
	background-color: #f8b500;
	clear: both;
}

h3 {
	color: #333;
	font-family: "Avenir Next";
	margin-top: 250px;
	font-size: 30px;
	font-style: italic;
	text-align: center;
	border-bottom: 3px dotted black;
	border-top: 3px dotted black;
}

.submit_btn {
	padding: 0.5em 1em;
	text-decoration: none;
	border-radius: 80px;
	width: 100px;
	height: 35px;
	margin-top: -5px;
	margin-left: 6px;
	font-size: 10px;
	text-align: center;
	color: #333;
	box-shadow: 2px 2px #1a6ea0;
	background: #f8b500;
	background: -webkit-gradient(linear, left top, left bottom, from(#f8b500),
		to(#a69425));
	background: -moz-linear-gradient(-90deg, #81a8cb, #4477a1);
	filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0,
		startColorstr='#81a8cb', endColorstr='#4477a1');
}

.submit_btn:hover {
	color: #fff;
	background-color: #49a9d4;
	box-shadow: 2px 2px #1a6ea0;
	cursor: pointer;
	opacity: 0.5;
	background: #81a8cb;
	background: -webkit-gradient(linear, left top, left bottom, from(#4477a1),
		to(#81a8cb));
	background: -moz-linear-gradient(-90deg, #4477a1, #81a8cb);
	filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0,
		startColorstr='#4477a1', endColorstr='#81a8cb');
}

th {
	border-radius: 15%;
	border: 1px solid black;
	padding: 20px;
}

td {
	padding: 17px;
	border-bottom: 2px dotted black;
}

tr:hover {
	background: #fbf8e9;
}
</style>
</head>

<body>
	<jsp:include page="header.jsp" />


	<div id="main">

		<h3>こちらの商品でよろしいですか？</h3>

		<div>
			<s:form id="form" name="form" action="BuyItemConfirmAction">
				<table>
					<tr>
						<td>商品名</td>
						<td>値段</td>
						<td>購入個数</td>
						<td>小計</td>
					</tr>
					<s:iterator value="buyItemDTOList">
						<tr>
							<td><s:property value="%{itemName}" /></td>
							<s:hidden name="itemName" value="%{itemName}" />

							<td><s:property value="%{itemPrice}" /><span>円</span></td>
							<s:hidden name="itemPrice" value="%{itemPrice}" />

							<td><s:property value="%{count}" /><span>個</span></td>
							<s:hidden name="count" value="%{count}" />

							<td><s:property value="%{totalPrice}" /><span>円</span></td>
							<s:hidden name="totalPrice" value="%{totalPrice}" />

						</tr>

						<!-- 下２つのhiddenは表示しないけど、水面下で情報の受け渡しがしたいもの。表示するなら上のように -->
						<s:hidden name="id" value="%{id}" />
						<s:hidden name="itemStock" value="%{itemStock}" />


					</s:iterator>

				</table>
				<br>
				<table>
					<tr>
						<td>支払い方法：</td>
						<td><s:property value="%{payment}" />
							<s:hidden name="payment" value="%{payment}" /></td>
					</tr>
					<tr>
						<td>合計金額：</td>
						<td><s:property value="%{cartTotalPrice}" /></td>
					</tr>
					<br>
				</table>

				<br>
				<br>
				<input type="button" value="戻る" onclick="submitAction('HomeAction')"
					class="submit_btn" />
				<br>
				<br>
				<input type="button" value="完了"
					onclick="submitAction('BuyItemConfirmAction')" class="submit_btn" />



			</s:form>



		</div>
	</div>


	<div id="footer"></div>



</body>
</html>