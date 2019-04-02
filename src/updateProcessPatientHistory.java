
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateProcessPatientHistory
 */
@WebServlet("/updateProcessPatientHistory")
public class updateProcessPatientHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateProcessPatientHistory() {
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
		doGet(request, response);
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/blueline";
		String user = "root";
		String psw = "";
		
		String patientHistoryID = request.getParameter("patientHistoryID");
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String gender=request.getParameter("gender");
		String age=request.getParameter("age");
		String bloodtype=request.getParameter("bloodtype");
		String allergies=request.getParameter("allergies");
		String treatmentdetails=request.getParameter("treatmentdetails");
		String surgerydetails=request.getParameter("surgerydetails");

		PrintWriter out = response.getWriter();
		
		if(patientHistoryID != null)
		{
		Connection con = null;
		PreparedStatement ps = null;
		int personID = Integer.parseInt(patientHistoryID);
		try
		{
		Class.forName(driverName);
		con = DriverManager.getConnection(url,user,psw);
		String sql="Update patienthistory set patientHistoryID=?,firstname=?,lastname=?,gender=?,age=?,bloodtype=?,allergies=?,treatmentdetails=?,surgerydetails=? where patientHistoryID="+patientHistoryID;
		ps = con.prepareStatement(sql);
		ps.setString(1,patientHistoryID);
		ps.setString(2, firstname);
		ps.setString(3, lastname);
		ps.setString(4, gender);
		ps.setString(5, age);
		ps.setString(6, bloodtype);
		ps.setString(7, allergies);
		ps.setString(8, treatmentdetails);
		ps.setString(9, surgerydetails);
		int i = ps.executeUpdate();
		if(i > 0)
		{
		out.print("Record Updated Successfully");
		response.sendRedirect("displayPatientHistory.jsp") ;
		}
		else
		{
		out.print("There is a problem in updating Record.");
		}
		}
		catch(SQLException | ClassNotFoundException sql)
		{
		request.setAttribute("error", sql);
		out.println(sql);
		}
		}
		
	}

}
