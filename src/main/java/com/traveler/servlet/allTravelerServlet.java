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

/**
 * Servlet implementation class allTravelerServlet
 */
@WebServlet("/allTravelerServlet")
public class allTravelerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		List<Traveler> listtra = TravelerDBUtil.selectAllTravel();
		request.setAttribute("listtra", listtra);
		RequestDispatcher dispatcher = request.getRequestDispatcher("adminDash.jsp");
		dispatcher.forward(request, response);
		
		
		
		
		
		
		
		
		
	}

}
