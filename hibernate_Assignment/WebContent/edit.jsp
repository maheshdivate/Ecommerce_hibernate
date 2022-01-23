<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.control.hibernateMain" %>
    <%@ page import="com.servlet.Product" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<%
		  String pid=request.getParameter("pid");
		  String price=request.getParameter("price");
		  String quantity=request.getParameter("quantity");
		  String discount=request.getParameter("discount");
		  
		  System.out.println(pid);
		  
		  hibernateMain hbr=new hibernateMain();
		  
		 int result=hbr.Edit(pid, price, quantity, discount);
		 
		 if(result>0)
		 {
			 out.println("Product edited Succesfully");
		 }
		 
		 else {
			 out.println("Kid seems product doesn't exits");
		 }
		 
		 
		%>
		<br>
		
		
			<a href="viewProducts.jsp">View All Products</a><br>
</body>
</html>