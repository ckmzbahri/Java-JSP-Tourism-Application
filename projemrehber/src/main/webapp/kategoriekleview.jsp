<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
<jsp:useBean id="islem" class="kategori.baglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="kategori.getset" scope="page" ></jsp:useBean>
</head>
<body>

<%
boolean sonuc=false;

String tur=request.getParameter("tur");

veri.setTur(tur);



sonuc = islem.insertData(veri);

if(sonuc==true){ 
	response.sendRedirect("kategoriislem.jsp");  }

%>


</body>
</html>