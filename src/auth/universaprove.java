package auth;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class universaprove
 */
@WebServlet("/universaprove")
public class universaprove extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public universaprove() {
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
		String id = request.getParameter("id");
	
		 
        DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		

		String query ="update userdetail set status = 'A' where id='"+id+"'";
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

        	out.println("<script type=\"text/javascript\">");
        	out.println("alert('Aproved successfully')");
        	out.println("location=\"universityaproavtion.jsp\"");
        	out.println("</script>");

    
        }
        
          
}
}

