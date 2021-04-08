

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Request
 */
@WebServlet("/Request")
public class Request extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Request() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name"); 
		String mob=request.getParameter("mob"); 
		String email=request.getParameter("email"); 
		String bloodgroup=request.getParameter("bloodgroup");
		System.out.println(name);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BloodBank?serverTimezone=Australia/Sydney", "root", "");
			PreparedStatement pst =con.prepareStatement("insert into request value(?,?,?,?)"); 
			pst.setString(1, name);
			pst.setString(2, mob);
			pst.setString(3, email);
			pst.setString(4, bloodgroup);
			pst.executeUpdate();
			response.sendRedirect("index.jsp?msg=valid");
			
		} 
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

}
