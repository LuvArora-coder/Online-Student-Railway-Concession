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
 * Servlet implementation class enterbooking
 */
@WebServlet("/enterbooking")
public class enterbooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public enterbooking() {
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
    	String id = request.getParameter("id");
		
		String mobile = request.getParameter("mobile");
		String url="http://192.168.43.136:8080/rialway/atvm/transaction.jsp";
		String bookingid = request.getParameter("bookingid");

		try {
			String sql1 = "select * from users where mobile='" + mobile + "' and bookingid = '"+bookingid+"'";
			System.out.println(sql1);
			ResultSet rs = db.getResultSet(sql1);
			if (rs.next()) {
				session.setAttribute("id", id);
		
				
	        	
	        	 String msg= "your pass successfully generated plz visit side"+url;
		            mesage91.SendSms.sendmessageto91(mobile, msg );
				
				out.println("<script type=\"text/javascript\">");
	        	out.println("alert('your pass suuccessfulky generated')");
	        	out.println("location=\"atvm/transaction12.jsp\"");
	        	out.println("</script>");
				//response.sendRedirect("home.jsp");	
			} else {
				out.println("<script type=\"text/javascript\">");
	        	out.println("alert('wrong username or password')");
	        	out.println("location=\"login.jsp\"");
	        	out.println("</script>");
				//response.sendRedirect("login.jsp");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		//db.closeConnection(db);
	}

}
