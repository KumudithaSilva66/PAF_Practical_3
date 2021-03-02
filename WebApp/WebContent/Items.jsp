<%@page import="com.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%--   
     if (request.getParameter("itemCode") !=null)
    {
     Item itemObj = new Item();
     String stsMsg = itemObj.insertItem(request.getParameter("itemCode"),
     request.getParameter("itemName"),
     request.getParameter("itemPrice"),
     request.getParameter("itemDesc"));
     session.setAttribute("statusMsg", stsMsg);
    }
	 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
				<h1>Item Management</h1>
				<form method="post" action="controlers/Insertcontroler.jsp">
				Item code: <input type="text" name="itemcode" ><br>
				Item name: <input type="text" name="itemName" ><br>
				Item price: <input type="text" name="itemPrice"><br>
				Item description: <input type="text" name="itemDesc"><br>
				<input type="submit" name="Save" value="Save">
				<input type="submit" name="Update" value="Updat">
				<input type="submit" name="Delete" value="Delete">
				</form>
				<%--
				out.print(session.getAttribute("statusMsg"));
				--%>
				
				
</body>
</html>
