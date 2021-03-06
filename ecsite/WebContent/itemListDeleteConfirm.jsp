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

        <title>ItemListDeleteConfirm</title>
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
     margin-top:250px;
     font-size: 30px;
    }


    #main {
    width: 100%;
    height: 700px;
    text-align: center;

    }

    #footer {
    width: 100%;
    height: 80px;
    background-color:#f8b500;
    clear:both;
    }

     h3{color: #333;
   font-family: "Avenir Next";
    margin-top: 60px;
    margin-left: 40px;
    font-size: 30px;
    font-style: italic;
    text-align: center;
    border-bottom: 3px dotted black;
    border-top:3px dotted black;


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
<jsp:include page="header.jsp" />


       <div id = "header">
       <div id ="pr">
       </div>
       </div>


       <div id = "main">
       <div id = "top">
         <p>ItemListDeleteConfirm</p>
       </div>


       <div>
         <s:form>



         <h3>全ての商品を削除します。本当によろしいですか？ </h3>



   <div>
   <s:if test="itemList == null">
     <h3>商品情報はありません。</h3>
    </div>
   </s:if>




   <s:elseif test = "message == null">
  <!--  <h4>商品情報は以下になります。</h4> -->
   <table border="1">
   <tr>
     <th>商品名</th>
     <th>値段</th>
     <th>個数</th>
   </tr>

   <s:iterator value ="ItemList">
   <tr>
    <td><s:property value = "itemName" /></td>
    <td><s:property value = "itemPrice"/><span>円</span></td>
    <td><s:property value = "itemStock"/><span>個</span></td>
   </tr>

   </s:iterator>
   </table>


   </s:elseif>



   <s:if test= "message ! = null">
    <h3><s:property value = "message"/></h3>
   </s:if>



          <tr>
            <td><input type = "button" value="キャンセル"
            onclick = "submitAction('ItemListAction')" /></td>
            <td><input type = "button" value ="OK"
            onclick="submitAction('ItemListDeleteCompleteAction')" /></td>

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

