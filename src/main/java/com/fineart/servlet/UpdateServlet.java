package com.fineart.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

import com.fineart.jdbc.CartTablePro;
import com.fineart.jdbc.DeleteRecord;
import com.fineart.jdbc.UpdateRecord;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String cname=request.getParameter("cname");
		String pid=request.getParameter("pid");
		String ird=request.getParameter("ird");
		int id = Integer.parseInt(pid);
		int num = Integer.parseInt(ird);
		System.out.println(UpdateRecord.checkQty(cname, id));
		if(num==-1 && UpdateRecord.checkQty(cname, id)) {
			System.out.println("hello");
			DeleteRecord.deleteOneRow(id, cname);
		}
		else {
			UpdateRecord.updateOneRow(id, cname, num);
		}
		Map<Integer, Integer> cart_arr = CartTablePro.extractNumbers(cname);
		if(CartTablePro.hasRows(cname)) {
		request.setAttribute("cart_arr", cart_arr);
		}
		else {
			request.setAttribute("cart_arr", null);
		}
		request.setAttribute("email", email);
		request.setAttribute("name", name);
		request.setAttribute("cname", cname);
		RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
		rd.forward(request, response);
	}
}
