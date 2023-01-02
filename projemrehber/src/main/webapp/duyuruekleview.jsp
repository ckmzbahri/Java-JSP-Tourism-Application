<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="islem" class="uyeduyuru.baglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="uyeduyuru.getset" scope="page" ></jsp:useBean>
</head>
<body>

<%
boolean sonuc=false;

String baslik=request.getParameter("baslik");
String icerik=request.getParameter("icerik");
String foto=request.getParameter("foto");

veri.setBaslik(baslik);
veri.setIcerik(icerik);
veri.setFoto(foto);


sonuc = islem.insertData(veri);

if(sonuc==true){ 
	response.sendRedirect("adminduyuruislem.jsp");  }

%>


</body>
</html>