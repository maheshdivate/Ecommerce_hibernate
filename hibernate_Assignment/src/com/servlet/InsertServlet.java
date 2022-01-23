package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.hibernateMain;

@WebServlet("/insertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		PrintWriter out=response.getWriter();
		
		response.setContentType("html");
		
		int id=Integer.parseInt(request.getParameter("uId"));
		String name=request.getParameter("name");
		int price=Integer.parseInt(request.getParameter("price"));
		int quantity=Integer.parseInt(request.getParameter("quantity"));
		int discount=Integer.parseInt(request.getParameter("discount"));
		
		
		hibernateMain hbr=new hibernateMain();
		
		Product p=new Product(id,name,price,quantity,discount);
		
		hbr.insert(p);
		
		out.println("<h1>Record Inserted Succesfully</h1>");
		
		out.println("<a href=\"viewProducts.jsp\">View All Products</a> <br><br>");
		
		out.println("<a href=\"AdminDesktop.html\">Back</a>");
		
		
		
	}

}
