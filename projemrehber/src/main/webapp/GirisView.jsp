<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<jsp:useBean id="islem" class="Giris.Baglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="Giris.GetSet" scope="page" ></jsp:useBean>
</head>
<body>


<%
boolean sonuc=false;
String kullaniciadi=request.getParameter("kullanici");
String sifre=request.getParameter("sifre");

veri.setKullanici(kullaniciadi);
veri.setSifre(sifre);
HttpSession oturum = request.getSession();
oturum.setAttribute("oturumismi", null);
sonuc = islem.Kontrol(veri);

if (sonuc == true)
{
	oturum.setAttribute("oturumismi", kullaniciadi);
	response.sendRedirect("UYEana.jsp"); 
}
else
	
	response.sendRedirect("YanlisGiris.jsp"); 
%>
</body>
</html>