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


@WebServlet("/guideUpdateServlet")
public class guideUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		
		
		
		boolean isTrue;
		
		isTrue=GuideDBUtil.updateguide(id, name, email, phone, userName, password);
		
		if(isTrue == true) {
			List<Guide> guideDetails=GuideDBUtil.getGuideDetails(id);
			request.setAttribute("guideDetails", guideDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("adminDash.jsp");
			dis.forward(request, response);
		}
		else {
			List<Guide> guideDetails=GuideDBUtil.getGuideDetails(id);
			request.setAttribute("guideDetails", guideDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("error.jsp");
			dis.forward(request, response);
		}
	}

}
