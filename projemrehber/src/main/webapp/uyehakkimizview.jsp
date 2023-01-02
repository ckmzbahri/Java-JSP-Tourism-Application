<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="islem" class="uyeHakkimizda.baglanti"></jsp:useBean>
</head>
<body>


<%

ResultSet rs = islem.selectAllData();
while(rs.next()){
	String baslik = rs.getString("baslik");
	String icerik = rs.getString("icerik");
}
%>
</body>
</html>