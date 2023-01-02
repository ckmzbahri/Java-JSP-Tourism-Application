<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
</head>
<jsp:useBean id="islem" class="uyeduyuru.baglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="uyeduyuru.getset" scope="page" ></jsp:useBean>
<%
boolean sonuc=false;
int id=Integer.parseInt(request.getParameter("id"));
String baslik=request.getParameter("baslik");
String icerik=request.getParameter("icerik");
String foto=request.getParameter("foto");
veri.setId(id);
veri.setBaslik(baslik);
veri.setIcerik(icerik);
veri.setFoto(foto);
sonuc = islem.updateData(veri);
if(sonuc==true)
	response.sendRedirect("duyuruguncelle.jsp");  
%>


</body>
</html>