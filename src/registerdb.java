import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registerdb
 */
@WebServlet("/registerdb")
public class registerdb extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public registerdb() {
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
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
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
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blueline", "root", "");
			Statement st = con.createStatement();
			String sql = "insert into registration(name,nic,gender,address,mem_type,blood_group,status,dob,email,mobile,password ) values ('"+name+"','"+nic+"','"+gender+"','"+address+"','"+mem_type+"','"+blood_group+"','"+status+"','"+dob+"','"+email+"','"+mobile+"','"+password+"')";

			int executeUp = st.executeUpdate(sql);
			if (executeUp > 0) {
		        
			response.sendRedirect("patientlogin.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
