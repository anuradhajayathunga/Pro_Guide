package com.traveler.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.traveler.Traveler;
import com.traveler.DBUtil.TravelerDBUtil;

@WebServlet("/deleteTravelerServlet")
public class deleteTravelerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		
		String id=request.getParameter("id");
		
		
		boolean isTrue;
		
		isTrue=TravelerDBUtil.deletetraveler(id);		
		
		if(isTrue == true) {
			
			
			RequestDispatcher dis=request.getRequestDispatcher("adminDash.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Traveler> travelerDetails=TravelerDBUtil.gettravler(id);
			request.setAttribute("travelerDetails", travelerDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("error.jsp");
			dis.forward(request, response);
		
		
		}
		
		
		
		
		
		
		
		
		
	}

}
