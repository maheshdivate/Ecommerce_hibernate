<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN DESKTOP</title>

<style type="text/css">
a {
	width:50px;
	hi
}

</style>
</head>
<body>


       <% 
       String userId=request.getParameter("uid");
		String pass=request.getParameter("pass");
		
		%>
		
		<%
		if(userId.equals("admin") & pass.equals("admin"))
		{
			RequestDispatcher rd= request.getRequestDispatcher("AdminDesktop.html");
			rd.include(request, response);
		}
		
		else {
			out.println("<h1><center>Wrong user id or password <center></h1>");
		}
		 %>

</body>
</html>