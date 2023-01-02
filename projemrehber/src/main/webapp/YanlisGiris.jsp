<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>



<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>


<style type="text/css">
  body {background-color: orange}
  </style>
  
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="AnaGiris.jsp">ÇOK GEZEN BİRİ</a>
    </div>
    <ul class="nav navbar-nav">
     <li><a href="iletisim.jsp">İLETİŞİM</a></li>
      <li><a href="hakkimizda.jsp">HAKKIMIZDA</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">GİRİŞ</button>
    <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">KAYIT OL</button>
     <button onclick="document.getElementById('id03').style.display='block'" style="width:auto;">ADMİN GİRİŞİ</button>
    </ul>
  </div>
</nav>
<body>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial;
}

/* The grid: Four equal columns that floats next to each other */
.column {
  float: left;
  width: 25%;
  padding: 10px;
}

/* Style the images inside the grid */
.column img {
  opacity: 0.8; 
  cursor: pointer; 
}

.column img:hover {
  opacity: 1;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* The expanding image container */
.container {
  position: relative;
  display: inherit;
}

/* Expanding image text */
#imgtext {
  position: absolute;
  bottom: 15px;
  left: 15px;
  color: white;
  font-size: 20px;
}

/* Closable button inside the expanded image */
.closebtn {
  position: absolute;
  top: 10px;
  right: 15px;
  color: white;
  font-size: 35px;
  cursor: pointer;
}
</style>
</head>

<body>
<div>
<div style="text-align:center">
</div>

<!-- The four columns -->
<div class="row">
  <div class="column">
    <img src="https://images.etstur.com/files/images/hotelImages/TR/213990/l/Oksijen-Zone-Hotels-Uludag-Genel-309077.jpg" alt="Nature" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="https://blog.obilet.com/wp-content/uploads/2018/03/paris-seyahat-rehberi.jpg" alt="Snow" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="https://foto.sondakika.com/galeri/2019/07/27/kalfatliyim-demisti-turk-koyu-iki-gunde-715289_5754_3_b.jpg" alt="Mountains" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="https://img-s3.onedio.com/id-54c280aeb9385d9d6b92ff72/rev-2/w-1200/h-802/f-jpg/s-ca952c71d8a9d3a70bb0d650bd0bf2f6d05e54ec.jpg" alt=Lights" style="width:100%" onclick="myFunction(this);">
  </div> 
</div>
<br>
<div class="row">
  <div class="column">
    <img src="https://images.etstur.com/files/images/hotelImages/TR/213990/l/Oksijen-Zone-Hotels-Uludag-Genel-309077.jpg" alt="Nature" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="https://blog.obilet.com/wp-content/uploads/2018/03/paris-seyahat-rehberi.jpg" alt="Snow" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="https://foto.sondakika.com/galeri/2019/07/27/kalfatliyim-demisti-turk-koyu-iki-gunde-715289_5754_3_b.jpg" alt="Mountains" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="https://www.habernediyor.com/images/haberler/2019/12/tatil_icin_gidebileceginiz_mugla_nin_en_guzel_koyleri_h18491_68fb5.jpg" alt="Lights" style="width:100%" onclick="myFunction(this);">
  </div> 
</div>

<div class="container">
  <span onclick="this.parentElement.style.display='none'" class="closebtn">&times;</span>
  <img id="expandedImg" style="width:100%">
  <div id="imgtext"></div>
</div>

<script>
function myFunction(imgs) {
  var expandImg = document.getElementById("expandedImg");
  var imgText = document.getElementById("imgtext");
  expandImg.src = imgs.src;
  imgText.innerHTML = imgs.alt;
  expandImg.parentElement.style.display = "block";
}
</script>

</body>
</html>
</div>
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="GirisView.jsp" method="post">
   

    <div class="container">
      <label for="uname"><b>Kullanıcı Adı</b></label>
      <input type="text" placeholder="Kullanıcı Adı" name="kullanici" required>
      <label for="psw"><b>Şifre</b></label>
      <input type="password" placeholder="Şifre" name="sifre" required>  
      <button type="submit">Login</button>
    </div>
    
    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">İPTAL</button>
      <span class="psw">Şifremi <a href="#">Unuttum?</a></span>
    </div>
  </form>
</div>

<div id="id03" class="modal">
  
  <form class="modal-content animate" action="Admingirisviewjsp.jsp" method="post">
   

    <div class="container">
      <label for="uname"><b>Kullanıcı Adı</b></label>
      <input type="text" placeholder="Kullanıcı Adı" name="kullanici" required>
      <label for="psw"><b>Şifre</b></label>
      <input type="password" placeholder="Şifre" name="sifre" required>  
      <button type="submit">Login</button>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id03').style.display='none'" class="cancelbtn">İPTAL</button>
      <span class="psw">Şifremi <a href="#">Unuttum?</a></span>
    </div>
  </form>
</div>

<div id="id02" class="modal">
  
  <form class="modal-content animate" action="Uyeview.jsp" method="post">
   

    <div class="container">
     <label for="uname"><b> Ad</b></label>
      <input type="text"  placeholder="AD" name="ad" required>
       <label for="uname"><b>Soyad</b></label>
      <input type="text" placeholder="SOYAD" name="soyad" required>
       <label for="uname"><b>Mail</b></label>
      <input type="text" placeholder="MAİL" name="mail" required>
      
      <label for="uname"><b>Telefon</b></label>
      <input type="text" placeholder="TELEFON" name="tel" required>
      
      <label for="uname"><b>Kullanıcı Adı</b></label>
      <input type="text" placeholder="KULLANICI ADI" name="kullanici" required>

      <label for="psw"><b>Şifre</b></label>
      <input type="password" placeholder="ŞİFRE" name="sifre" required>
        
      <button type="submit">KAYIT OL</button>
    </div>
  <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">İPTAL</button>
    </div>
  
  </form>
</div>
<script>
  alert("KULLANICI ADI VEYA ŞİFRE HATALI!");
</script>


</body>
</html>
