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
        <title>おみくじ画面</title>

     <style type="text/css">

/*  * {
    padding: 0;
    margin: 0;
    } */

  body {
    font-size: 16px;
    font-family: sans-serif;
    text-align: center;

  }

  #top {
    margin: 100px auto;
    height: 180px;
    width: 180px;
    line-height: 180px;
    font-size: 40px;
    border-radius: 50%;
    background-color: aliceblue;
    box-shadow: 0px 10px 40px rgba(0,0,0,1);

  }

  #botton {
    margin: 0 auto;
    width: 200px;
    background-color:aqua;
    font-size:40px;
    box-shadow: 0 10px 0 #0088cc;
    cursor: pointer;
  }

    #botton:hover {
      opacity: 0.8;
    }


    #button.pushed {
     margin-top: 32px;
     box-shadow: 0px 2px 0 #0088cc;
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
<h3>今日の運勢を占おう！下の運勢をクリックしてね。</h3>

  <div id = "top">？</div>
  <div id ="button">今日の運勢</div>



  <script>

  (function(){
  var buttonE1 = window.top.document.getElementById('button');
  buttonE1.addEventListener('click', function() {
	 //document.getElementById('top').innerHTML='hit';
	 //Math.random()は0.0-0.99999...の数字をランダムで呼び出す。
	 //Math.floor()は小数点を切り捨てる。

  var results=['大吉', '小吉', '中吉','凶']
  var result= Math.floor(Math.random() *4);
  document.getElementById('top').innerHTML = results[result];
  });

  buttonE1.addEventListener('mousedown', function(){
      this.className = 'pushed';
  });

  buttonE1.addEventListener('mouseup', function(){
      this.className = '';

  });


  })();

  </script>


</body>
</html>