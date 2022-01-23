<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ page import="com.control.hibernateMain" %>
    <%@ page import="com.servlet.Product" %>
    <%@ page import="java.util.List" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Products</title>

<style>
h1 {
	background:  #7775f0;
  	color: white;
	padding:19px;
	text-align:center;
	font-weight: bold;
	font-size: 35px;
	border:solid ;
}

a:hover, a:active {
  background-color: yellow;
}

body {
	 background-image: url("https://previews.123rf.com/images/vectomart/vectomart1210/vectomart121000059/15803400-illustration-of-different-shopping-bag-on-sale-background.jpg");
}
</style>

</head>
<body>

	  <h1>Welcome to Easy-Mart</h1>
	
	<%
		
		Product p=new Product();
    	hibernateMain hbr=new hibernateMain();	
		List<Product> list=hbr.viewProduct();
		
		for(Product P:list)
		{
			request.setAttribute("list",list);  
	%>
			
		<% 
			}
		 %>
 
   
  <table border="1" width="35%" >
	 <tr>
	  	 <th>Product ID</th>
	  	 <th>Name</th>
	  	 <th>Price</th>
	  	 <th>Quantity</th>
	  	 <th>Discount</th>
	  	 <th>Edit</th>	
	  	 <th>Delete</th>
	 </tr>
 
	 <c:forEach var="table" items="${list}">
	 <tr>
	  	<td><c:out value="${table.getProductId()}"/></td>
	  	<td><c:out value="${table.getName()}" /></td>
	  	<td><c:out value="${table.getPrice()}"/></td> 
	  	<td><c:out value="${table.getQuantity() }"/></td>	  	
	  	<td><c:out value="${table.getDiscount()}"/></td>
	  	<td><a href="edit.jsp?id=${table.getProductId()}">Edit</a></td>
	  	<td><a href="deleteProduct.jsp?pid=${table.getProductId()}">Delete</a></td>
	  </tr>
	  
	  </c:forEach>
 </table>
 <br>
 
 <a href="AdminDesktop.html">Back To Admin's Desktop</a>
	

</body>
</html>