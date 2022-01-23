<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.control.hibernateMain" %>
    <%@ page import="com.servlet.Product" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Product</title>
</head>
<body>

		<%
		   hibernateMain hbr=new hibernateMain();
		   	   
		   String pid=request.getParameter("pid");
		   
		  	int result=hbr.delete(pid);
		  	
		  	if(result>0)
		  	{
		  		out.println("Product Deleted Succesfully");
		  	}
		  	
		  	else if(result==0){
		  		out.println("Sorry Kid you have something wrong");
		  	}
			
		%>
		
		 <a href="AdminDesktop.html">Back To Admin's Desktop</a>

</body>
</html>