    <%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
    <jsp:useBean id="islem" class="gezi.baglanti"></jsp:useBean>
       <jsp:useBean id="veri" class="gezi.getset"></jsp:useBean>
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


<style type="text/css">
  body {background-color: orange}
  </style>
  
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="UYEana.jsp">?OK GEZEN B?R?</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="Uyeiletisim.jsp">?LET???M</a></li>
      <li><a href="Uyehakkimiz.jsp">HAKKIMIZDA</a></li>
      <li><a href="Gezi.jsp">NEREY? GEZMEL??</a></li>
      <li><a href="Profil.jsp">HESABIM</a></li>
      <li><a href="Uyeduyuru.jsp">DUYURULAR</a></li>
    
     <form class="navbar-form navbar-left" action="Arama.jsp">
    <li>  <div class="form-group">
          <input type="text" name="aranan" class="form-control" placeholder="Tur Ara...">
     <li>  <button type="submit" class="btn btn-default">Ara</button></li>
    </form>
    
    <form class="navbar-form navbar-left" action="filtre.jsp">
    <li>  <div class="form-group">
     <jsp:useBean id="data" class="kategori.baglanti" scope="page"></jsp:useBean>
  <jsp:useBean id="verim" class="kategori.getset"></jsp:useBean>
          <select  id="filtre" name="filtre" face="tahoma" style="width: 200px; height: 35px; margin:8px;">
     <% 
  ResultSet rs=data.selectAllData();
  while(rs.next()) { %>
    <option value="<%=rs.getString("tur") %>" ><%=rs.getString("tur") %></option>
     <%} %>
  </select>
     <li>  <button type="submit" class="btn btn-default" style="width: 200px; height: 35px; margin:	-1px; "  >Ara</button></li>
    </form>
    
    </ul>
      <ul class="nav navbar-nav navbar-right">
      
 <li><a href="AnaGiris.jsp "><span class="glyphicon glyphicon-log-in"></span> G?VENL? ?IKI? </a></li>
    </ul>
  </div>
</nav>
<body>

<div id="form-main">
<div id="form-div">
<form class="form" id="form1">

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
  color: orange;
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
<div class="container">
<style type="text/css">
  body {background-color: orange}
  </style>
  
 <%
boolean sonuc=false;
String aranan=request.getParameter("aranan");
veri.setAranan(aranan);
islem.VeriAld?m(veri);
 if (sonuc=true)
 {
    ResultSet r = islem.Ara();
    while(r.next()){ %>
<body>
<div class="coupon">
  <div class="container">

  </div>
  <div class="container" style=" background-color:rgba(72,72,72,0.4);width: 800px;">
    <h2 style="color:tan"><b><%=r.getString("baslik") %></b>(<b><%=r.getString("konum") %></b>) </h2> 
     <div class="column">
    <img src="<%=r.getString("foto") %>" alt="Nature" style="width:100%" onclick="myFunction(this);">
  </div>
     <h4> <a onclick="document.getElementById('<%=r.getString("id") %>').style.display='block'" style="width:auto;"> ?NCELE...</a></h4>

      <div id="<%=r.getString("id") %>" class="modal <%=r.getString("id") %>"  style=" background-color:orange"; >
    <div class="imgcontainer">
      <h1 style="color:black"><a onclick="document.getElementById('<%=r.getString("id") %>').style.display='none'" class="close" title="Close Modal">GER? D?N</a></h1>
      <br>
      <br>    
      <h1 style="color:rgba(72,72,72,0.4)"><b><%=r.getString("baslik") %></b>(<b><%=r.getString("konum") %></b> ) </h1>
        <div class="column">
    <img src="<%=r.getString("foto") %>" alt="Nature" style="width:40%"">
  </div>
     <h3><b><%=r.getString("icerik") %></b> </h3>
        <h4><b><%=r.getString("tur") %></b></h4>         
    </div>
</div> 
  </div>
</div>
</body>
</html> 
   <%}
    } 
     else response.sendRedirect("Gezi.jsp");  %>
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
