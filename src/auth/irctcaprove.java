package auth;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.DatabaseConnection;

/**
 * Servlet implementation class irctcaprove
 */
@WebServlet("/irctcaprove")
public class irctcaprove extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public irctcaprove() {
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
		PrintWriter out = response.getWriter(); 
		String id = request.getParameter("id");
		String mobile = request.getParameter("mobile");
		String fromdate = request.getParameter("fromdate");
		String expiry = request.getParameter("expiry");
		int i1 = new Random().nextInt(900000) + 100000;
	
		 
        DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		

		String query ="update users set railwaystataus = 'A' ,bookingid= '"+i1+"',fromdate= '"+fromdate+"',expiry= '"+expiry+"'where id='"+id+"'";
System.out.println(query);
        int i = db.getUpdate(query);
        if(i==0)
        {
        	out.println("<script type=\"text/javascript\">");
        	out.println("alert('successfully registered')");
        	out.println("location=\"registration.jsp\"");
        	out.println("</script>");
        		
        			
        }
        else{
        	
        	 String msg= "your booking id"+i1;
	            mesage91.SendSms.sendmessageto91(mobile, msg );

        	out.println("<script type=\"text/javascript\">");
        	out.println("alert('Aproved successfully')");
        	out.println("location=\"IRCTC/viewstudentdetails.jsp\"");
        	out.println("</script>");

    
        }
        
          
}
}

