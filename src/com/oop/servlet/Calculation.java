package com.oop.servlet;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Kaushi
 */

/**
 * Servlet implementation class Calculation
 */

@WebServlet("/Calculation")
public class Calculation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static int pay;
    static int add;
    static int paym;
	
	  /**
	  * @see HttpServlet#HttpServlet()
	  */
	   public Calculation() {
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
	            
	            HttpSession session = request.getSession();
	            String nic = session.getAttribute("nic").toString();
	            String docName = session.getAttribute("docName").toString();
	            String specialization = session.getAttribute("specialization").toString();
	            String hospital = session.getAttribute("hospital").toString();
	            String date = session.getAttribute("date").toString();
	            String id = session.getAttribute("id").toString();
	            
	            if("Allergy And Asthma Specialist".equals(specialization))
	            {
	                pay = 2350;
	            }
	            else if("Children Dentist".equals(specialization))
	            {
	                pay = 2450;
	            }
	            else if("Counselling".equals(specialization))
	            {
	                pay = 2400;
	            }
	            else if("Eye Surgeon".equals(specialization))
	            {
	                pay = 2500;
	            }
	            else if("Neuro Surgeono".equals(specialization))
	            {
	                pay = 2550;
	            }
	            else if("Plastic Surgeon".equals(specialization))
	            {
	                pay = 2600;
	            }
	            if("Arogya Hospital - Gampaha".equals(hospital))
	            {
	                add = 450;
	            }
	            else if("Asiri Central Hospital - Colombo 5".equals(hospital))
	            {
	                add = 500;
	            }
	            else if("Dental Service - Colombo 5".equals(hospital))
	            {
	                add = 550;
	            }
	            else if("Leesons Hospital (Pvt) Ltd - Ragama".equals(hospital))
	            {
	                add = 600;
	            }
	            else if("Nawaloka Hospital - Colombo".equals(hospital))
	            {
	                add = 650;
	            }
	            else if("Vision Care Eye Clinic".equals(hospital))
	            {
	                add = 700;
	            }
	            
	            paym = pay + add;
	            String payment = String.valueOf(paym);
	            out.println(id+ " " + nic + " " + docName + " " + specialization + " " + hospital + " " + date + " " + payment);
	            session.setAttribute("id", id);
	            session.setAttribute("nic", nic);
	            session.setAttribute("docName", docName);
	            session.setAttribute("specialization", specialization);
	            session.setAttribute("hospital", hospital);
	            session.setAttribute("date", date);
	            session.setAttribute("payment", payment);
	            
	            response.sendRedirect("checkout.jsp"); 
	        }catch(Exception ex){
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



