package com.fineart.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.fineart.jdbc.DeleteRecord;

public class BuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String cname=request.getParameter("cname");
		String pid=request.getParameter("pid");
		int id = Integer.parseInt(pid);
		DeleteRecord.deleteOneRow(id, cname);
		request.setAttribute("email", email);
		request.setAttribute("name", name);
		request.setAttribute("cname", cname);
		RequestDispatcher rd = request.getRequestDispatcher("Thanku.jsp");
		rd.forward(request, response);
	}

}