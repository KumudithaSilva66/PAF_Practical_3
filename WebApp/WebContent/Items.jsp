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
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
				 <div class="container">
  				 <br>
  				 <h2 class="text-center">Item management</h2>
  				 <br>			
				 <form method="post" action="controlers/Insertcontroler.jsp">
			     <div class="form-group">
			       <label for="code">Item Code</label>
			       <input type="text" class="form-control" id="code" placeholder="IT2020" name="itemcode">
			     </div>
			     <div class="form-group">
			       <label for="name">Item Name</label>
			       <input type="text" class="form-control" id="name" placeholder="Keyboard" name="itemName">
			     </div>
			     <div class="form-group">
			       <label for="price">Item Price</label>
			       <input type="text" class="form-control" id="price" placeholder="7000" name="itemPrice">       
			     </div>
			     <div class="form-group">
			       <label for="desc">Item Desc</label>
			       <input type="text" class="form-control" id="desc" placeholder="Corsair" name="itemDesc">
			       </div>
			     	<button type="submit" class="btn btn-primary" name="Save">Submit</button>
			     	<button type="submit" class="btn btn-success" name="Update">Update</button>     
			     	<button type="submit" class="btn btn-danger" name="Delete">Delete</button>     
			     	<button type="submit" class="btn btn-info" name="All">All</button>
			     	 <br><br><br><br>     	 
			   	</form>	
			   	</div>		
			   	<%--
				out.print(session.getAttribute("statusMsg"));
				--%>
</body>
</html>
