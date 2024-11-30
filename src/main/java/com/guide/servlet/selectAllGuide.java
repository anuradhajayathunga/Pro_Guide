package com.guide.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.guide.Guide;
import com.guide.DBUtil.GuideDBUtil;

/**
 * Servlet implementation class selectAllGuide
 */
@WebServlet("/selectAllGuide")
public class selectAllGuide extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

			List<Guide> listUser = GuideDBUtil.selectAllGuide();
			request.setAttribute("listUser", listUser);
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminDash.jsp");
			dispatcher.forward(request, response);
		

	}
	
	
}
