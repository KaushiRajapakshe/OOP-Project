package com.oop.servlet;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Kaushi
 */

/**
 * Servlet implementation class CreatAppointment
 */

@WebServlet("/CreatAppointment")
public class CreatAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String check = "";
	
	  /**
	  * @see HttpServlet#HttpServlet()
	  */
	   public CreatAppointment() {
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
                HttpSession session = request.getSession();
                String nic = session.getAttribute("nic").toString();
                String check = session.getAttribute("check").toString();
                String docName = request.getParameter("docName");
                String specialization = request.getParameter("specialization");
                String hospital = request.getParameter("hospital");
                String date = request.getParameter("date");
                DBconnect db = new DBconnect();
                Connection con = db.getCon();
                Statement stm = con.createStatement();
                out.println("every things is fine date inserted... \n" +docName);
                out.println("every things is fine date inserted... \n" + date);
                ResultSet newid11 = stm.executeQuery("select docName,date from appointment where docName = '"+docName+"' and date = '"+date+"' group by docName,date having (count(nic)> 5)");
                out.println("every things is fine date inserted... \n");
                while(newid11.next()){
                    ResultSet newid1 = stm.executeQuery("select docName,date from appointment group by docName,date having (count(nic)> 4)");
                    while(newid1.next()){
                        String checkName = newid1.getString(1);
                        if(checkName.equals(docName)){
                            check = "Exceed";
                            session.setAttribute("nic", nic);
                            session.setAttribute("check",check);
                            //RequestDispatcher dd= request.getRequestDispatcher("channel_doctor.jsp");
                            //dd.forward(request, response);
                        response.sendRedirect("showAvailbleDoctors.jsp");
                        }
                    }
                }
                check = "NULL";
                ResultSet newid = stm.executeQuery("Select count(nic) from payment");
                out.println("every things is fine date inserted... \n");
                String id = "";
                while(newid.next()){ 
                    id = newid.getString(1);
                }
                int result = Integer.parseInt(id);
                result += 1;
                id = 100 + String.valueOf(result);
                if(!"Exceed".equals(check)){
                out.println(id+ " " + nic + " " + docName + " " + specialization + " " + hospital + " " + date);
                stm.executeUpdate("insert into appointment (id,nic,docName,specialization,hospital,date) values ('"+id+"','"+nic+"','"+docName+"','"+specialization+"','"+hospital+"','"+date+"')" );
                out.println("every things is fine date inserted... \n");
                }
                session.setAttribute("id", id);
                session.setAttribute("nic", nic);
                session.setAttribute("docName", docName);
                session.setAttribute("specialization", specialization);
                session.setAttribute("hospital", hospital);
                session.setAttribute("date", date);
                
                response.sendRedirect("Calculation");
        }catch (Exception ex) {
	            	System.out.println("Error : " + ex);
	        }
		}

	}


