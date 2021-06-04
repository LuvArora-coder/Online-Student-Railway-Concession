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
 * Servlet implementation class transaction12
 */
@WebServlet("/transaction12")
public class transaction12 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public transaction12() {
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
		
		
		HttpSession session=request.getSession();
		PrintWriter out = response.getWriter();
		DatabaseConnection db=new DatabaseConnection();
    	db.dbconnection();
		
		String username = request.getParameter("rfid");
		String id = request.getParameter("id");
		System.out.println(username);
	
	
		
		      /* if condition is true then print the following */
		 


			 if( username.equals("online") ) {
					session.setAttribute("id", id);
			
				
			
				
				out.println("<script type=\"text/javascript\">");
	        	out.println("alert('transaction start')");
	        	out.println("location=\"atvm/transaction.jsp\"");
	        	out.println("</script>");
				//response.sendRedirect("home.jsp");	
			} else {
				session.setAttribute("id", id);
				out.println("<script type=\"text/javascript\">");
	        	out.println("alert('transaction start')");
	        	out.println("location=\"atvm/collegecard.jsp\"");
	        	out.println("</script>");
				//response.sendRedirect("login.jsp");
			}
		} 
		//db.closeConnection(db);
	}


