package auth;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Database.DatabaseConnection;

/**
 * Servlet implementation class collegelogin
 */
@WebServlet("/collegelogin")
public class collegelogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public collegelogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		PrintWriter out = response.getWriter();
		DatabaseConnection db=new DatabaseConnection();
    	db.dbconnection();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		try {
			String sql1 = "select * from collegelogin where username='" + username + "' and password = '"+password+"'";
			System.out.println(sql1);
			ResultSet rs = db.getResultSet(sql1);
			if (rs.next()) {
				session.setAttribute("username", username);
		
				
				out.println("<script type=\"text/javascript\">");
	        	out.println("alert('Successully login')");
	        	out.println("location=\"college/viewstudentdetails.jsp\"");
	        	out.println("</script>");
				//response.sendRedirect("home.jsp");	
			} else {
				out.println("<script type=\"text/javascript\">");
	        	out.println("alert('wrong username or password')");
	        	out.println("location=\"college/login.jsp\"");
	        	out.println("</script>");
				//response.sendRedirect("login.jsp");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		//db.closeConnection(db);
	}

}
