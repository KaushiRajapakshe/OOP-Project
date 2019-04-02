

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.dbcp.dbcp.DriverManagerConnectionFactory;

/**
 * Servlet implementation class PatientFormCheck
 */
@WebServlet("/PatientFormCheck")
public class PatientFormCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientFormCheck() {
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
		
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String bloodtype = request.getParameter("bloodtype");
		String allergies = request.getParameter("allergies");
		String treatmentdetails = request.getParameter("treatmentdetails");
		String surgerydetails = request.getParameter("surgerydetails");
				
		try {
		String driver = "com.mysql.jdbc.Driver";
		Class.forName(driver);
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blueline","root","");
		Statement stmt = conn.createStatement();
		String sql = "insert into patienthistory(firstname,lastname,gender,age,bloodtype,allergies,treatmentdetails,surgerydetails) values ('"+firstname+"','"+lastname+"','"+gender+"','"+age+"','"+bloodtype+"','"+allergies+"','"+treatmentdetails+"','"+surgerydetails+"')";
		int executeUp = stmt.executeUpdate(sql);
		
		response.sendRedirect("displayPatientHistory.jsp");
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
