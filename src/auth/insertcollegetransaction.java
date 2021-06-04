package auth;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Database.DatabaseConnection;

/**
 * Servlet implementation class insertcollegetransaction
 */
@WebServlet("/insertcollegetransaction")
public class insertcollegetransaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertcollegetransaction() {
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
		HttpSession session=request.getSession();
	 
		String id = request.getParameter("id");
		String mobile = request.getParameter("mobile");
		String amt = request.getParameter("amt");
		String amount = request.getParameter("amount");
		int inum = Integer.parseInt(amt);
		int amount1 = Integer.parseInt(amount);
		
		int am1=amount1-inum;
		

	
		 
        DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		

		String query ="update users set transactionstatus = 'A', amount ='"+am1+"' where id='"+id+"'";
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
			session.setAttribute("id", id);
        	
        	 String msg= "your transaction done succsesfully";
	            mesage91.SendSms.sendmessageto91(mobile, msg );

        	out.println("<script type=\"text/javascript\">");
        	out.println("alert('transaction done succeesfully')");
        	out.println("location=\"atvm/passgenerate.jsp\"");
        	out.println("</script>");

    
        }
        
          
}
}

