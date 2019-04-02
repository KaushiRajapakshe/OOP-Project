package com.oop.servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 *
 * @author Kaushi
 */

/**
 * Servlet implementation class appointmentDetails
 */

@WebServlet("/appointmentDetails")
public class appointmentDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	  /**
	  * @see HttpServlet#HttpServlet()
	  */
	   public appointmentDetails() {
	     super();
	        // TODO Auto-generated constructor stub
	    }

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			response.getWriter().append("Served at: ").append(request.getContextPath());
			try (PrintWriter out = response.getWriter()) {
	            try{
	                    HttpSession session = request.getSession();
	                    String nic = session.getAttribute("nic").toString();
	                    session.setAttribute("nic", nic);
	                    String id = request.getParameter("id");
	                    String update = request.getParameter("update");
	                    String remove = request.getParameter("remove");
	                    String continueb = request.getParameter("continueb");
	                    DBconnect db = new DBconnect();
	                    Connection con = db.getCon();
	                    Statement stm = con.createStatement();
	                    if("1".equals(update)){
	                        session.setAttribute("id", id);
	                        response.sendRedirect("update_appointment.jsp");
	                    }
	                    else if("2".equals(remove)){
	                    String SQL = "DELETE FROM appointment WHERE id = '"+id+"'";
	                    stm.executeUpdate(SQL);
	                    out.println("every things is fine date deleted...");
	                    response.sendRedirect("appointmentDetails.jsp");
	                    }
	                    else if("Continue New Appointment".equals(continueb)){
	                        response.sendRedirect("channel_doctor.jsp");
	                    }
	            } catch (Exception ex) {
                	System.out.println("Error : " + ex);
	            }
			}
		}
		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			
		}

	}





