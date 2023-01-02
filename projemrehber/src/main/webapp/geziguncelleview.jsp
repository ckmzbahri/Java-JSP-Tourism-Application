<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
</head>
<jsp:useBean id="islem" class="gezi.baglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="gezi.getset" scope="page" ></jsp:useBean>
<%
boolean sonuc=false;
int id=Integer.parseInt(request.getParameter("id"));
String baslik=request.getParameter("baslik");
String icerik=request.getParameter("icerik");
String foto=request.getParameter("foto");
String konum=request.getParameter("konum");
String tur=request.getParameter("tur");
veri.setId(id);
veri.setBaslik(baslik);
veri.setIcerik(icerik);
veri.setFoto(foto);
veri.setKonum(konum);
veri.setTur(tur);
sonuc = islem.updateData(veri);
if(sonuc==true)
	response.sendRedirect("geziguncelle.jsp");  
%>


</body>
</html>