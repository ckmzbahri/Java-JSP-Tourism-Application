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
      <a class="navbar-brand" href="AdminAna.jsp">ÇOK GEZEN BİRİ</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="adminpro.jsp">HESABIM</a></li>
    </ul>
    <ul class="nav navbar-nav">
      <li><a href="adminduyuruislem.jsp">DUYURULAR</a></li>
    </ul>
     <ul class="nav navbar-nav">
      <li><a href="iletisimguncelle.jsp">İLETİŞİM</a></li>
    </ul>
     <ul class="nav navbar-nav">
      <li><a href="hakkimizdaguncelle.jsp">HAKKIMIZDA</a></li>
    </ul>
     <ul class="nav navbar-nav">
      <li><a href="kategoriislem.jsp">KATEGORİ</a></li>
    </ul>
    <ul class="nav navbar-nav">
      <li><a href="adminuye.jsp">ÜYELER</a></li>
    </ul>
       <ul class="nav navbar-nav">
      <li><a href="geziislem.jsp">GEZİ</a></li>
    </ul>
      <ul class="nav navbar-nav navbar-right">
 <li><a href="AnaGiris.jsp "><span class="glyphicon glyphicon-log-in"></span> CIKIS </a></li>
    </ul>
  </div>
</nav>
<body>

<!DOCTYPE html>
<html>
<head>
<style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}

.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button3 {
  background-color: white; 
  color: black; 
  border: 2px solid #f44336;
}

.button4 {
  background-color: white;
  color: black;
  border: 2px solid #e7e7e7;
}

.button5 {
  background-color: white;
  color: black;
  border: 2px solid #555555;
}
</style>
</head>
<body>

</body>
</html>
<jsp:useBean id="islem" class="kategori.baglanti"></jsp:useBean>
<jsp:useBean id="veri" class="kategori.getset"></jsp:useBean>


<body>

  <div class="container" style=" background-color:rgba(72,72,72,0.4);width: 800px;">
   
  <form name="mainForm" class="modal-content animate" action="kategoriguncelleview.jsp" method="post">
    <div class="imgcontainer">
      <h2 style="color:rgba(72,72,72,0.4)"><b>KATEGORİ BİLGİLERİ</b> </h2> 
 <%
boolean sonuc=false;
 int id=Integer.parseInt(request.getParameter("id"));
 veri.setId(id);
islem.IdAldım(veri);
 if (sonuc=true)
 {
    ResultSet rs = islem.selectData(veri);
    while(rs.next()){ 
    String baslik = rs.getString("tur");
	
 }
 }%>
     <% 
  ResultSet rs=islem.selectData(veri);
  while(rs.next()) { %>

<font face="tahoma" size="4" color="rgba(72,72,72,0.4)">TÜR</font>
<p class="tur">
<input name="tur" type="text" required= "required" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" value="<%=rs.getString("tur") %>" id="tur"/>
</p>
      
 
    <input type="text" name ="id" value="<%=rs.getString("id")%>" id="id"readonly/>  
 <div class="submit">
       <button type="submit" value="GÜNCELLE" class="button button5">GÜNCELLE</button>
       </div>
           <br>
             
    <%} %>
 </form>
</div> 
  </div>
</div>
 <form action="kategoriguncelle.jsp" method="post">
           <br>
             <div class="submit">
       <button type="submit" value="SİL" align= "center"class="button button5">İPTAL</button>
       </div>
 </form>
</body>
</html> 


 <!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>

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
