<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<jsp:useBean id="islem" class="AdminGiris.Baglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="AdminGiris.GetSet" scope="page" ></jsp:useBean>
</head>
<body>


<%
boolean sonuc=false;
String kullanici=request.getParameter("kullanici");
String sifre=request.getParameter("sifre");


veri.setKullanici(kullanici);
veri.setSifre(sifre);
HttpSession oturum = request.getSession();
oturum.setAttribute("oturumismi", null);
sonuc = islem.Kontrol(veri);

if (sonuc == true)
{
	oturum.setAttribute("oturumismi", kullanici);
	response.sendRedirect("AdminAna.jsp"); 
}
else
	
	response.sendRedirect("YanlisGiris.jsp");
%>
</body>
</html>