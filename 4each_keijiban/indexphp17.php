<!DOCTYPE html>
<html lang="ja">
 <head>
  <meta charset="utf-8">
  <title>4eachblog 掲示板</title>
  <link rel="stylesheet" type="text/css" href="php17.css">
     
     
     
     
</head>
    
    
    
<div class="logo"><img src="4eachblog_logo.jpg"></div>
    
<header>
    

    

<ul>
 <li>トップ</li>
 <li>プロフィール</li>
 <li>4eachについて</li>
 <li>登録フォーム</li>
 <li>問い合わせ</li>
 <li>その他</li>
</ul>

    
</header>
    
    
<body>
    
 


 <div class="left">    
    
    
<h2>プログラミングに役立つ掲示板</h2>
    

    
    <form method="post" action="insert17.php">
    <div>
        
     <h1>入力フォーム</h1>   
      
    <label>ハンドルネーム</label>
    <br>
    <input type="text" class="text" size="35" name="handlename">
    </div>
    
    
    <div>
    <label>タイトル</label>
    <br>
    <input type="text" class="text" size="35" name="title">
    </div>
     
    
    
   <div>
    <label>コメント</label>
    <br>
     <textarea cols="35" rows="7" name="comments"></textarea>
    </div> 

        
        
     <div>
        <input type="submit" class="submit" value="投稿する"></div>   
        
        
        
    
<script type="text/javascript" src="contactform.js"></script>
  
  
</form> 
     
      
     
     

     
 
    
     
<?php
mb_internal_encoding("utf8");

$pdo = new PDO("mysql:dbname=lesson03_kokorokaiya; host=localhost;", "root","mysql");

$stmt= $pdo->query("select*from 4each_keijiban");
    
    
echo "<div class='kiji'>";
echo "<h4>タイトル</h4>";
echo"<div class='contents'>";
echo "記事の中身。記事の中身、ああああああああああああああああああああああああああああああ<br>
あああああああああああああああああああああ<br>
あああああああああああああ<br>";
echo"<div class='handlename'>posted by 通りすがり</div>";
echo"</div>";
echo"</div>";   
    
    
    
while($row=$stmt->fetch()){
    echo"<div class='kiji'>";
    echo"<h4>".$row['title']."</h4>";
    echo"<div class='contents'>";
    echo $row['comments'];
    echo"<div class='handlename'>posted by ".$row['handlename']."</div>";
    echo"</div>";
    echo"</div>";
}
    

?>  
     
</div>     
     

     
     
     
     
    
  
     
<div class="right">   
    
<h3>人気の記事</h3>    
<ul>
  <li>PHP オススメ本li>
  <li>PHP MyAdminの使い方</li>   <li>今人気のエディタ　Top5</li>
  <li>HTMLの基礎</li>
</ul>

<h3>オススメリンク</h3>
<ul>
 <li>インターノウス株式会社</li>
 <li>XAMPPのダウンロード</li>
 <li>Eclipseのダウンロード</li>
 <li>Braketsのダウンロード</li>
</ul>
     
<h3>カテゴリ</h3>
<ul>
 <li>HTML</li> 
 <li>PHP</li>
 <li>MySQL</li>
 <li>JavaScript</li>
</ul>
    
</div>
    
    


     
  
     

    
    
<footer>
copyright(c) internous | 4each blog is the one which provides A to Z about programing.
</footer>
   
</body>
</html>
   