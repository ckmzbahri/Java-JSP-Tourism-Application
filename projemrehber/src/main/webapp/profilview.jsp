<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="islem" class="uyeprofil.baglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="uyeprofil.getset" scope="page" ></jsp:useBean>
<%
boolean sonuc=false;

String ad=request.getParameter("ad");
String soyad=request.getParameter("soyad");
String kullanici=request.getParameter("kullanici");
String mail=request.getParameter("mail");
String sifre=request.getParameter("sifre");
String tel=request.getParameter("tel");

veri.setAd(ad);
veri.setSoyad(soyad);
veri.setKullanici(kullanici);
veri.setMail(mail);
veri.setSifre(sifre);
veri.setTel(tel);

sonuc = islem.updateData(veri);

if(sonuc==true)
	response.sendRedirect("Profil.jsp");  
%>



</body>
</html>