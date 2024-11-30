package com.guide.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.guide.Guide;
import com.guide.DBUtil.GuideDBUtil;

@WebServlet("/gLoginServlet")
public class gLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String userName = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            List<Guide> guideDetails = GuideDBUtil.validate(userName, password);
            request.setAttribute("guideDetails", guideDetails);

            RequestDispatcher dis;
            
            if (guideDetails != null && !guideDetails.isEmpty()) {
                
                dis = request.getRequestDispatcher("adminDash.jsp");
            } else {
               
                dis = request.getRequestDispatcher("guideregister.jsp"); 
            }

            dis.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            
        } finally {
            out.close(); 
        }
    }
}
