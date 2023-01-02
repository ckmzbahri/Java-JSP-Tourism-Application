<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:useBean id="islem" class="iletisim.Baglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="iletisim.GetSet" scope="page" ></jsp:useBean>
<%
boolean sonuc=false;
int id=Integer.parseInt(request.getParameter("id"));
String mail=request.getParameter("mail");
String telefon=request.getParameter("telefon");
String adres=request.getParameter("adres");

veri.setId(id);
veri.setMail(mail);
veri.setTelefon(telefon);
veri.setAdres(adres);
sonuc = islem.updateeData(veri);
if(sonuc==true)
	response.sendRedirect("iletisimguncelle.jsp");  
%>


</body>
</html>