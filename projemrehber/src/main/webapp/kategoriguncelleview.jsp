<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
</head>
<jsp:useBean id="islem" class="kategori.baglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="kategori.getset" scope="page" ></jsp:useBean>
<%
boolean sonuc=false;
int id=Integer.parseInt(request.getParameter("id"));
String tur=request.getParameter("tur");
veri.setId(id);
veri.setTur(tur);
sonuc = islem.updateData(veri);
if(sonuc==true)
	response.sendRedirect("kategoriguncelle.jsp");  
%>


</body>
</html>