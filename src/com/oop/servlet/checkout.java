package com.oop.servlet;


import java.io.IOException;
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
 * Servlet implementation class checkout
 */

@WebServlet("/checkout")
public class checkout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	  /**
	  * @see HttpServlet#HttpServlet()
	  */
	   public checkout() {
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
                HttpSession session = request.getSession();
                String id = session.getAttribute("id").toString();
                String nic = session.getAttribute("nic").toString();
                session.setAttribute("id", id);
                session.setAttribute("nic", nic);
                String payment = session.getAttribute("payment").toString();
                session.setAttribute("payment", payment);
            String payment1 = request.getParameter("payment1");
            if("1".equals(payment1)){
               response.sendRedirect("https://www.paypal.com");
            }
            else if("2".equals(payment1)){
                response.sendRedirect("payment.jsp");
            }
			}catch (Exception ex) {
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





