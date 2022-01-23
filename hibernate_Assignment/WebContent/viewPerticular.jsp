<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.control.hibernateMain" %>
    <%@ page import="com.servlet.Product" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Perticular Product</title>
<style>
label {
	font-weight: bold;
	display: inline-block;
	width: 100px;
	font-size: 19px;
	
}

body {
	 background-image: url("https://previews.123rf.com/images/vectomart/vectomart1210/vectomart121000059/15803400-illustration-of-different-shopping-bag-on-sale-background.jpg");
}

h1 {
	background: #7775f0;
  	color: white;
	padding:19px;
	text-align:center;
	font-weight: bold;
	font-size: 35px;
	border:solid ;
}


</style>

</head>
<body>

		<h1>ADMIN DASHBOARD</h1>
		<form action="viewPerticular.jsp" method="get">
		 <label>Product id</label><input type="text" name="pid">
		 <button type="submit">Submit</button>
		</form>	 <br>
		 
		<%
		   hibernateMain hbr=new hibernateMain();
		   	   
		   String pid=request.getParameter("pid");
		   List<Product> list=hbr.viewPerticular(pid);
		   
		   for(Product p:list)
		   {
			   out.println(p);
		   }
		   
			
		%>
		
		<br><br>
		
		 <a href="AdminDesktop.html">Back To Admin's Desktop</a>

</body>
</html>