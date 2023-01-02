<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:useBean id="islem" class="Hakkimizda.Baglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="Hakkimizda.GetSet" scope="page" ></jsp:useBean>
<%
boolean sonuc=false;
int Id=Integer.parseInt(request.getParameter("Id"));
String baslik=request.getParameter("baslik");
String icerik=request.getParameter("icerik");

veri.setId(Id);
veri.setBaslik(baslik);
veri.setIcerik(icerik);
sonuc = islem.updateData(veri);
if(sonuc==true)
	response.sendRedirect("hakkimizdaguncelle.jsp");  
%>


</body>
</html>