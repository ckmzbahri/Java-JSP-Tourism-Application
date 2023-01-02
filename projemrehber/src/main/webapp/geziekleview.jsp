<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="islem" class="gezi.baglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="gezi.getset" scope="page" ></jsp:useBean>
<jsp:useBean id="verim" class="kategori.baglanti" scope="page" ></jsp:useBean>
<jsp:useBean id="datam" class="kategori.getset" scope="page" ></jsp:useBean>
</head>
<body>

<%
boolean sonuc=false;

String baslik=request.getParameter("baslik");
String icerik=request.getParameter("icerik");
String foto=request.getParameter("foto");
String konum=request.getParameter("konum");
String tur=request.getParameter("tur");


veri.setBaslik(baslik);
veri.setIcerik(icerik);
veri.setFoto(foto);
veri.setKonum(konum);
veri.setTur(tur);


sonuc = islem.insertData(veri);

if(sonuc==true){ 
	response.sendRedirect("geziislem.jsp");  }

%>


</body>
</html>