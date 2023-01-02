<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
           <%  HttpSession oturum= request.getSession();
       String isim=null;
       isim = (String) oturum.getAttribute("oturumismi");
if (isim==null)
	response.sendRedirect("AnaGiris.jsp");%>
    
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


<!doctype html>
<html>
 <style type="text/css">
  body {background-color: orange}
  </style>
  <p>
  <hgroup>
<head>
<meta charset="utf-8">
<style>
 
@import url(https://fonts.googleapis.com/css?family=Montserrat:400,700);
 
html{ 
background-size: cover;
height:100%;
}
 
#feedback-page{
text-align:center;
}
 
#form-main{
width:100%;
float:left;
padding-top:0px;
}
 
#form-div {
background-color:rgba(72,72,72,0.4);
padding-left:35px;
padding-right:35px;
padding-top:35px;
padding-bottom:50px;
width: 450px;
float: left;
left: 50%;
position: absolute;
margin-top:30px;
margin-left: -260px;
-moz-border-radius: 7px;
-webkit-border-radius: 7px;
}
 
.feedback-input {
color:#3c3c3c;
font-family: Helvetica, Arial, sans-serif;
font-weight:500;
font-size: 18px;
border-radius: 0;
line-height: 22px;
background-color: #fbfbfb;
padding: 13px 13px 13px 54px;
margin-bottom: 10px;
width:100%;
-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
-ms-box-sizing: border-box;
box-sizing: border-box;
border: 3px solid rgba(0,0,0,0);
}
 
.feedback-input:focus{
background: #fff;
box-shadow: 0;
border: 3px solid #3498db;
color: #3498db;
outline: none;
padding: 13px 13px 13px 54px;
}
 
.focused{
color:#30aed6;
border:#30aed6 solid 3px;
}
 
/* Icons ---------------------------------- */
#name{
background-image: url(http://rexkirby.com/kirbyandson/images/name.svg);
background-size: 30px 30px;
background-position: 11px 8px;
background-repeat: no-repeat;
}
 
#name:focus{
background-image: url(http://rexkirby.com/kirbyandson/images/name.svg);
background-size: 30px 30px;
background-position: 8px 5px;
background-position: 11px 8px;
background-repeat: no-repeat;
}
 
#email{
background-image: url(http://rexkirby.com/kirbyandson/images/email.svg);
background-size: 30px 30px;
background-position: 11px 8px;
background-repeat: no-repeat;
}
 
#email:focus{
background-image: url(http://rexkirby.com/kirbyandson/images/email.svg);
background-size: 30px 30px;
background-position: 11px 8px;
background-repeat: no-repeat;
}
 
#comment{
background-image: url(http://rexkirby.com/kirbyandson/images/comment.svg);
background-size: 30px 30px;
background-position: 11px 8px;
background-repeat: no-repeat;
}
 
textarea {
width: 100%;
height: 150px;
line-height: 150%;
resize:vertical;
}
 
input:hover, textarea:hover,
input:focus, textarea:focus {
background-color:white;
}
 
#button-blue{
font-family: 'Montserrat', Arial, Helvetica, sans-serif;
float:left;
width: 100%;
border: #fbfbfb solid 4px;
cursor:pointer;
background-color: tan;
color:white;
font-size:24px;
padding-top:22px;
padding-bottom:22px;
-webkit-transition: all 0.3s;
-moz-transition: all 0.3s;
transition: all 0.3s;
margin-top:-4px;
font-weight:700;
}
 
#button-blue:hover{
background-color: rgba(0,0,0,0);
color: #0493bd;
}
 
.submit:hover {
color: #3498db;
}
 
.ease {
width: 0px;
height: 74px;
background-color: #fbfbfb;
-webkit-transition: .3s ease;
-moz-transition: .3s ease;
-o-transition: .3s ease;
-ms-transition: .3s ease;
transition: .3s ease;
}
 
.submit:hover .ease{
width:100%;
background-color:white;
}
 
@media only screen and (max-width: 580px) {
#form-div{
left: 3%;
margin-right: 3%;
width: 88%;
margin-left: 0;
padding-left: 3%;
padding-right: 3%;
}
}
</style>
</head>
  
  
  
  
  
  
  
  
  
  
  
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="UYEana.jsp">ÇOK GEZEN BİRİ</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="Uyeiletisim.jsp">İLETİŞİM</a></li>
      <li><a href="Uyehakkimiz.jsp">HAKKIMIZDA</a></li>
      <li><a href="Gezi.jsp">NEREYİ GEZMELİ?</a></li>
      <li><a href="Profil.jsp">HESABIM</a></li>
      <li><a href="Uyeduyuru.jsp">DUYURULAR</a></li>
    </ul>
      <ul class="nav navbar-nav navbar-right">
 <li><a href="AnaGiris.jsp "><span class="glyphicon glyphicon-log-in"></span> GÜVENLİ ÇIKIŞ </a></li>
    </ul>
  </div>
</nav>
<body>

<div id="form-main">
<div id="form-div">
<form class="form" id="form1"action="profilview.jsp" method="post">
<font face="tahoma" size="4" color="tan">PROFİL</font>
  <br>
  <br>
<jsp:useBean id="veri" class="uyeprofil.getset" scope="page" ></jsp:useBean>
<jsp:useBean id="data" class="uyeprofil.baglanti" scope="page"></jsp:useBean>
  <%
  boolean sonuc=false;

  String kullanici = (String) oturum.getAttribute("oturumismi");
  veri.setKullanici(kullanici);
  sonuc = data.VeriAldım(veri);
   if (sonuc=true)
 {
    ResultSet rs = data.selectData();
    while(rs.next()){ %>
    
 <font face="tahoma" size="4" color="tan">Kullanıcı Adı</font>
<p class="kullaniciadi">
<input name="kullanici" type="text" required= "required" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" value="<%=rs.getString("kullanici") %>" id="kullanici"/>
</p>
<p class="ad">
<font face="tahoma" size="4" color="tan">Ad</font>
<input name="ad" type="text" required= "required" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" value="<%=rs.getString("ad") %>" id="ad" />
</p>
<font face="tahoma" size="4" color="tan">Soyad</font>
<p class="soyad">
<input name="soyad" type="text" required= "required" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" value="<%=rs.getString("soyad") %>" id="soyad" />
</p>
<font face="tahoma" size="4" color="tan">Mail</font>
<p class="mail">
<input name="mail" type="text" class="validate[required,custom[]] feedback-input" required= "required" id="mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"title="E-mail formatında giriniz." value="<%=rs.getString("mail") %>" />
</p>
<font face="tahoma" size="4" color="tan">Şifre</font>
<p class="sifre">
<input name="sifre" type="password" class="validate[required,custom[]] feedback-input" required= "required" id="sifre" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,}" title=" Şifre en az 5 karakter,en az bir büyük,en az bir küçük harf" value="<%=rs.getString("sifre") %>" />
</p>

<font face="tahoma" size="4" color="tan">Telefon</font>
<p class="sifre">
<input name="tel" type="text" class="validate[required,custom[]] feedback-input" required= "required" id="tel"  pattern="[0-9]{10}"  title=" telefon numaranızı 10 rakam olarak giriniz" value="<%=rs.getString("tel") %>" />
</p>
<div class="submit">
<input type="submit" value="GÜNCELLE" id="button-blue"/>
<div class="ease"></div>
  <%}
    } %>
</div>
</form>













<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
  box-sizing: border-box;
}

.columns {
  float: left;
  width: 33.3%;
  padding: 8px;
}

.price {
  list-style-type: none;
  border: 1px solid #eee;
  margin: 0;
  padding: 0;
  -webkit-transition: 0.3s;
  transition: 0.3s;
}

.price:hover {
  box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2)
}

.price .header {
  background-color: #111;
  color: white;
  font-size: 25px;
}

.price li {
  border-bottom: 1px solid #eee;
  padding: 20px;
  text-align: center;
}

.price .grey {
  background-color: #eee;
  font-size: 20px;
}

.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 10px 25px;
  text-align: center;
  text-decoration: none;
  font-size: 18px;
}

@media only screen and (max-width: 600px) {
  .columns {
    width: 100%;
  }
}
</style>
</head>
<body>

</body>
</html>
<div class="ease"></div>
</div>
</form>
</div>
</body>
</html>
</div>
</body>
</html>
