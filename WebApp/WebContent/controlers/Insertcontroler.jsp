<%@page import="com.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String code=request.getParameter("itemcode");
String name=request.getParameter("itemName");
String price=request.getParameter("itemPrice");
String desc=request.getParameter("itemDesc");

Item objItem = new Item();
String stsMsg= objItem.insertItem(code, name, price, desc);
session.setAttribute("statusMsg", stsMsg);
out.print(session.getAttribute("statusMsg"));
%>
</body>
</html>