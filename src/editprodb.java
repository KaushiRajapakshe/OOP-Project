import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class editprodb
 */
@WebServlet("/editprodb")
public class editprodb extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public editprodb() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		System.out.println("jkk");
		HttpSession session = request.getSession();
		String nic = session.getAttribute("nic").toString();
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String mem_type = request.getParameter("mem_type");
		String blood_group = request.getParameter("blood_group");
		String status = request.getParameter("status");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");

		try {
			Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/blueline", "root", "");
            Statement st = (Statement) con.createStatement();
			st.executeUpdate("UPDATE registration SET name = '"+name+"' WHERE nic = '"+nic+"'");
			st.executeUpdate("UPDATE registration SET gender = '"+gender+"' WHERE nic = '"+nic+"'");
			st.executeUpdate("UPDATE registration SET address = '"+address+"' WHERE nic = '"+nic+"'");
			st.executeUpdate("UPDATE registration SET mem_type = '"+mem_type+"' WHERE nic = '"+nic+"'");
			st.executeUpdate("UPDATE registration SET blood_group = '"+blood_group+"' WHERE nic = '"+nic+"'");
			st.executeUpdate("UPDATE registration SET status = '"+status+"' WHERE nic = '"+nic+"'");
			st.executeUpdate("UPDATE registration SET dob = '"+dob+"' WHERE nic = '"+nic+"'");
			st.executeUpdate("UPDATE registration SET email = '"+email+"' WHERE nic = '"+nic+"'");
			st.executeUpdate("UPDATE registration SET mobile = '"+mobile+"' WHERE nic = '"+nic+"'");
			st.executeUpdate("UPDATE registration SET password = '"+password+"' WHERE nic = '"+nic+"'");

			response.sendRedirect("patientpro.jsp");
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
