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
        <title>ItemCreate画面</title>





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
    margin-top:250px;
    font-size:30px;
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
    clear:both;
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

    </style>


</head>
<body>
<jsp:include page="header.jsp" />

      <div id = "header">
      </div>


      <div id ="main">
    <h3>登録する商品の情報を入力して下さい。</h3>
      <div>



        <table>
        <s:form action ="ItemCreateConfirmAction">


          <tr>
           <td>
            <label>ItemName:</label>
           </td>

           <td>
            <input type="text" name="itemName" value=""/>
           </td>
          </tr>


         <tr>
          <td>
            <label>ItemPrice:</label>
          </td>

          <td>
           <input type="text" name="itemPrice" value=""/>
          </td>
         </tr>




         <tr>
          <td>
            <label>ItemStock:</label>
          </td>

          <td>
           <input type="text" name="itemStock" value=""/>
          </td>
         </tr>








          <s:submit value="登録"/>



        </s:form>
        </table>


        <div id="footer">
        </div>



</div>
</div>





</body>
</html>