<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="islem" class="Uye.uyeislem" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="Uye.UyeGetSet" scope="page" ></jsp:useBean>
</head>
<body>

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

sonuc = islem.insertData(veri);

if(sonuc==true){ 
	response.sendRedirect("AnaGiris.jsp");  }
else
{
	response.sendRedirect("kullaniciadikontrol.jsp");  }
%>




</body>
</html>