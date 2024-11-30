package com.traveler.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.traveler.DBUtil.TravelerDBUtil;

@WebServlet("/insertTravelerServlet")
public class insertTravelerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
        String name = request.getParameter("name");
        String nic = request.getParameter("nic");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String country = request.getParameter("country");
        String username = request.getParameter("username");
        String password = request.getParameter("password");        
		
        boolean isTrue;
		
		isTrue = TravelerDBUtil.inserttravel(name, nic, email, phone, country, username, password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("loginAll.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("regiTraveler.jsp");
			dis2.forward(request, response);
		}
		
		
		
	}

}
