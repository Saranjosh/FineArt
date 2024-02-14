package com.fineart.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.fineart.java.StringDecor;
import com.fineart.jdbc.CreateCartTable;
import com.fineart.jdbc.CreateDB;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		CreateDB.CreateDataBase();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fineart","root","root");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select email, name, password, cart_name from users");
			boolean info = true;
			while(rs.next()) {
				if(rs.getString(1).equals(email) && rs.getString(3).equals(pass)) {
					info = false;
					request.setAttribute("email", rs.getString(1));
					String n = StringDecor.capitalizeEveryWord(rs.getString(2));
					request.setAttribute("name", n);
					request.setAttribute("cname", rs.getString(4));
					CreateCartTable.createTable(rs.getString(4));
					RequestDispatcher rd = request.getRequestDispatcher("menu.jsp");
					rd.forward(request, response);
				}
			}
			if(info){
			request.setAttribute("status", "failed");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
