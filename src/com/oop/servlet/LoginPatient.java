package com.oop.servlet;

import java.sql.*;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginPatient
 */
@WebServlet("/LoginPatient")
public class LoginPatient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginPatient() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
            String nic = request.getParameter("nic");
            String password = request.getParameter("password");
            DBconnect db = new DBconnect();
            Connection con = db.getCon();
            PreparedStatement pst = con.prepareStatement("Select nic,password from registration where nic=? and password=?");

		pst.setString(1, nic);
		pst.setString(2, password);

		ResultSet res = pst.executeQuery();

		if (res.next()) {
			System.out.println("Valid login credentials");
			HttpSession session = request.getSession();
                            session.setAttribute("nic", nic);
                            //session.setAttribute("password", password);
                            response.sendRedirect("patientMain.jsp");
		} else {
			response.sendRedirect("patientlogin.jsp");

		}
            System.out.println("every things is fine date inserted... \n");
            
            } catch (Exception ex) {
            	System.out.println("Error : " + ex);
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}

