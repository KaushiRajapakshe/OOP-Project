
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateProcessDoctorDetails
 */
@WebServlet("/updateProcessDoctorDetails")
public class updateProcessDoctorDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public updateProcessDoctorDetails() {
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
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/blueline";
		String user = "root";
		String psw = "";

		String docId = request.getParameter("docId");
		String name = request.getParameter("name");
		String status = request.getParameter("status");
		String email = request.getParameter("email");
		String nic = request.getParameter("nic");
		String telephone = request.getParameter("telephone");
		String qualification = request.getParameter("qualification");
		String specilization = request.getParameter("specilization");
		String workexp = request.getParameter("workexp");
		

		PrintWriter out = response.getWriter();

		if (docId != null) {
			Connection con = null;
			PreparedStatement ps = null;
			int doctorId = Integer.parseInt(docId);
			try {
				Class.forName(driverName);
				con = DriverManager.getConnection(url, user, psw);
				String sql = "Update doctor set docID=?,name=?,status=?,email=?,nic =? ,telephone=?,qualification=?,specilization=?,workexp=? where docId="
						+ doctorId;
				ps = con.prepareStatement(sql);
				ps.setString(1, docId);
				ps.setString(2, name);
				ps.setString(3, status);
				ps.setString(4, email);
				ps.setString(5, nic);
				ps.setString(6, telephone);
				ps.setString(7, qualification);
				ps.setString(8, specilization);
				ps.setString(9, workexp);
				int i = ps.executeUpdate();
				if (i > 0) {
					out.print("Record Updated Successfully");
					response.sendRedirect("displayDoctor.jsp");
				} else {
					out.print("There is a problem in updating Record.");
				}
			} catch (SQLException | ClassNotFoundException sql) {
				request.setAttribute("error", sql);
				out.println(sql);
			}
		}

	}
}
