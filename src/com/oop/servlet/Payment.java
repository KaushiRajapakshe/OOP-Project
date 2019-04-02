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
 * Servlet implementation class Payment
 */

@WebServlet("/Payment")
public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	  /**
	  * @see HttpServlet#HttpServlet()
	  */
	   public Payment() {
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
	            try {
	                HttpSession session = request.getSession();
	                String id = session.getAttribute("id").toString();
	                String nic = session.getAttribute("nic").toString();
	                String payment = session.getAttribute("payment").toString();
	                String cardNum = request.getParameter("cardNum");
	                String exDate = request.getParameter("exDate");
	                String secuCode = request.getParameter("secuCode");
	                String firstName = request.getParameter("firstName");
	                String lastName = request.getParameter("lastName");
	                DBconnect db = new DBconnect();
	                Connection con = db.getCon();
	                Statement stm = con.createStatement();
	                stm.executeUpdate("insert into payment (id,nic,payment,cardNum,exDate,secuCode,firstName,lastName) values ('"+id+"','"+nic+"','"+payment+"','"+cardNum+"','"+exDate+"','"+secuCode+"','"+firstName+"','"+lastName+"')" );
	                out.println("every things is fine date inserted... \n");
	                
	                response.sendRedirect("channel_doctor.jsp");
	                } catch (Exception ex) {
	                	System.out.println("Error : " + ex);
	            }
			}
		}

	}




