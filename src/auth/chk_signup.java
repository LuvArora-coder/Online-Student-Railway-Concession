package auth;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.DatabaseConnection;

/**
 * Servlet implementation class chk_signup
 */
@WebServlet("/chk_signup")
public class chk_signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chk_signup() {
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
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String fullname = request.getParameter("name");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String username = request.getParameter("username");
        String password = request.getParameter("password");    
        
        DatabaseConnection db=new DatabaseConnection();
    	db.dbconnection();
    	try {
			String sql1 = "select * from users where username='" + username + "'";
			ResultSet rs = db.getResultSet(sql1);
			if (!rs.next()) 
			{
		        String queryText = "insert into users(fullname, gender, mobile, email, username, password) values('"+fullname+"','N','"+mobile+"','"+ email+"','"+ username+"','"+ password+"')";
		        int i = db.getUpdate(queryText);
		        if(i==1){
		        	out.println("<script type=\"text/javascript\">");
		        	out.println("alert('Registration successfully')");
		        	out.println("location=\"login.jsp\"");
		        	out.println("</script>");
		        	//response.sendRedirect("login.jsp");
		        }else{
		        	out.println("<script type=\"text/javascript\">");
		        	out.println("alert('Error in Registration')");
		        	out.println("location=\"register.jsp\"");
		        	out.println("</script>");
		        	//response.sendRedirect("register.jsp");
		        }
			}else{
				out.println("<script type=\"text/javascript\">");
	        	out.println("alert('user name existing in system try another user name')");
	        	out.println("location=\"register.jsp\"");
	        	out.println("</script>");
				//response.sendRedirect("register.jsp");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
