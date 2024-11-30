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
 * Servlet implementation class updateTravelerServlet
 */
@WebServlet("/updateTravelerServlet")
public class updateTravelerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String id = request.getParameter("id");
        String name = request.getParameter("name");
        String nic = request.getParameter("nic");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String country = request.getParameter("country");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
      
        
        
        boolean isTrue;
		
		isTrue=TravelerDBUtil.updatetraveler(id,name, nic, email, phone, country, username, password);
		
		if(isTrue == true) {
			List<Traveler> travelerDetails=TravelerDBUtil.gettravler(id);
			request.setAttribute("travelerDetails", travelerDetails);
			
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
