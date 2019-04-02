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
 * Servlet implementation class update_appointment
 */

@WebServlet("/update_appointment")
public class update_appointment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	  /**
	  * @see HttpServlet#HttpServlet()
	  */
	   public update_appointment() {
	     super();
	        // TODO Auto-generated constructor stub
	    }

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			response.getWriter().append("Served at: ").append(request.getContextPath());
			
		}
		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			try (PrintWriter out = response.getWriter()) {
	            try{
	                    HttpSession session = request.getSession();
	                    String id = session.getAttribute("id").toString();
	                    String nic = session.getAttribute("nic").toString();
	                    String docName = request.getParameter("docName");
	                    String specialization = request.getParameter("specialization");
	                    String hospital = request.getParameter("hospital");
	                    String date = request.getParameter("date");
	                    session.setAttribute("nic", nic);
	                    session.setAttribute("id", id);
	                    
	                    DBconnect db = new DBconnect();
	                    Connection con = db.getCon();
	                    Statement stm = con.createStatement();
	                    stm.executeUpdate("UPDATE appointment SET docName = '"+docName+"' WHERE id = '" +id+"'");
	                    stm.executeUpdate("UPDATE appointment SET specialization = '"+specialization+"' WHERE id = '" +id+"'");
	                    stm.executeUpdate("UPDATE appointment SET hospital = '"+hospital+"' WHERE id = '" +id+"'");
	                    stm.executeUpdate("UPDATE appointment SET date = '"+date+"' WHERE id = '" +id+"'");
	                    out.println("every things is fine date inserted... \n");
	                    
	                    response.sendRedirect("appointmentDetails.jsp");
	        }catch (Exception ex) {
                	System.out.println("Error : " + ex);
	            }
			}
		}

	}





