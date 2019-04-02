
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adddoctordb
 */
@WebServlet("/adddoctordb")
public class adddoctordb extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adddoctordb() {
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
		String name = request.getParameter("name");
		String status = request.getParameter("status");
		String email = request.getParameter("email");
		String nic = request.getParameter("nic");
		String telephone = request.getParameter("telephone");
		String qualification = request.getParameter("qualification");
		String specilization = request.getParameter("specilization");
		String workexp = request.getParameter("workexp");
		String password = request.getParameter("password");
		
	
		
		try {
			 Class.forName("com.mysql.jdbc.Driver");
  			 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blueline","root","");
  			 Statement st = con.createStatement();
 			 ResultSet rs;
 			String sql = "insert into doctor(name,status,email,nic,telephone,qualification,specilization,workexp,password) values ('"+name+"','"+status+"','"+email+"','"+nic+"','"+telephone+"','"+qualification+"','"+specilization+"','"+workexp+"','"+password+"')";

    		int executeUp = st.executeUpdate(sql);
			response.sendRedirect("adminMain.jsp");
			
		} catch (Exception e) {
  			 e.printStackTrace();
	}

	}

}
