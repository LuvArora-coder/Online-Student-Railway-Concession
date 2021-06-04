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
 * Servlet implementation class sendtocollege
 */
@WebServlet("/sendtocollege")
public class sendtocollege extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sendtocollege() {
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
		
		String username = request.getParameter("username");
		String mobile = request.getParameter("mobile");
		
		String destination = request.getParameter("destination");
        String modeoftravel = request.getParameter("modeoftravel");
      
		String routename = request.getParameter("routename");
        String clssoftravel = request.getParameter("clssoftravel");
        String monthly = request.getParameter("monthly");
        String fromdate = request.getParameter("fromdate");
        String expiry = request.getParameter("expiry");
        String previous = request.getParameter("previous");   
        
        DatabaseConnection db=new DatabaseConnection();
    	db.dbconnection();
  
		
				 String queryText ="UPDATE users SET destination = '"+destination+"',  modeoftravel='"+modeoftravel+"',routename='"+ routename+"',clssoftravel='"+ clssoftravel+"',monthly='"+ monthly+"',fromdate='"+ fromdate+"' ,expiry='"+ expiry+"',previous='"+ previous+"' WHERE username= '"+ username+"'";
		       // String queryText = "insert into users(fullname, mobile, email, username, password,cource,academicyear,dob,source,rfid) values('"+destination+"','"+modeoftravel+"','"+ routename+"','"+ clssoftravel+"','"+ monthly+"','"+ fromdate+"','"+ academicyear+"','"+ dob+"','"+ source+"','"+ rfid+"')";
		        int i = db.getUpdate(queryText);
	           // String msg= "Your username is :---"+ username +"Your password is"  + password;
	           // mesage91.SendSms.sendmessageto91(mobile, msg );
		        if(i==1){
		        	out.println("<script typse=\"text/javascript\">");
		        	out.println("alert('Enter deatils successfully')");
		        	out.println("location=\"student/formfill.jsp\"");
		        	out.println("</script>");
		        	
		        	//response.sendRedirect("login.jsp");
		        }else{
		        	out.println("<script type=\"text/javascript\">");
		        	out.println("alert('Error in Registration')");
		        	out.println("location=\"student/formfill.jsp\"");
		        	out.println("</script>");
		        	//response.sendRedirect("register.jsp");
		        }
			
			

		
	}

}
