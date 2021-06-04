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
 * Servlet implementation class enterdetails
 */
@WebServlet("/enterdetails")
public class enterdetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public enterdetails() {
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
		
		String cource = request.getParameter("cource");
        String academicyear = request.getParameter("academicyear");
        String dob = request.getParameter("dob");
        String source = request.getParameter("source");

		String fullname = request.getParameter("name");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String rfid = request.getParameter("rfid");   
        
        DatabaseConnection db=new DatabaseConnection();
    	db.dbconnection();
    	try {
			String sql1 = "select * from users where username='" + username + "'";
			ResultSet rs = db.getResultSet(sql1);
			if (!rs.next()) 
			{
		        String queryText = "insert into users(fullname, mobile, email, username, password,cource,academicyear,dob,source,rfid) values('"+fullname+"','"+mobile+"','"+ email+"','"+ username+"','"+ password+"','"+ cource+"','"+ academicyear+"','"+ dob+"','"+ source+"','"+ rfid+"')";
		        int i = db.getUpdate(queryText);
	            String msg= "Your username is :---"+ username +"Your password is"  + password;
	            mesage91.SendSms.sendmessageto91(mobile, msg );
		        if(i==1){
		        	out.println("<script typse=\"text/javascript\">");
		        	out.println("alert('Enter deatils successfully')");
		        	out.println("location=\"college/studentregister.jsp\"");
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
	        	out.println("location=\"college/studentregister.jsp\"");
	        	out.println("</script>");
				//response.sendRedirect("register.jsp");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
