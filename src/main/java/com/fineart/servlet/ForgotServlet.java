package com.fineart.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.fineart.jdbc.CartHandler;


public class ForgotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String email=request.getParameter("email");
		String pass1=request.getParameter("pass1");
		String pass2=request.getParameter("pass2");
		if(CartHandler.isEmailExists(email)==false) {
			request.setAttribute("status", "emailexists");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		else if(pass1.equals(pass2)==false) {
			request.setAttribute("status", "passcheck");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		else if(pass1.length()<5){
			request.setAttribute("status", "wrgpasslen");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		else {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fineart","root","root");
			PreparedStatement stmt = conn.prepareStatement("update users set password = ? where email = ?");
			stmt.setString(1, pass1);
			stmt.setString(2, email);
			stmt.executeUpdate();
			request.setAttribute("status", "passchngd");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			System.out.println(e);
		}
		}

	}

}