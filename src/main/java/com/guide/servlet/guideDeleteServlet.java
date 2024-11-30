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


@WebServlet("/guideDeleteServlet")
public class guideDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id=request.getParameter("id");
		
		
		boolean isTrue;
		
		isTrue=GuideDBUtil.deleteCustomer(id);
		
		if(isTrue == true) {
					
			RequestDispatcher dis=request.getRequestDispatcher("adminDash.jsp");
			dis.forward(request, response);
		}
		else {
			List<Guide> guideDetails=GuideDBUtil.getGuideDetails(id);
			request.setAttribute("guideDetails", guideDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("erro.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
