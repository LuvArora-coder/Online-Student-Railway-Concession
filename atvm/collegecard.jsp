
<%@page import="java.util.Date"%>
<%@page import="Database.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
    <jsp:include page="aheader.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<body>
				 <%

							 String id=(String) session.getAttribute("id");
								System.out.println(id);

	DatabaseConnection db = new DatabaseConnection();
	db.dbconnection();
	ResultSet rs = null;
	String sql="Select * from users where id = '"+id+"'   " ;

	rs=db.getResultSet(sql);
	
	if (rs.next())	
	
	{
		
	
		String fullname = rs.getString("fullname");
		String mobile = rs.getString("mobile");
		String paidamount = rs.getString("paidamount");
		String id1 = rs.getString("id");
		String amount = rs.getString("amount");

	

	
		
		
%>

  <div class="main">
      <div class="content">
    	  <div class="content_bottom">
    	    <div class="wrap">    	    	
    	    	<div class="content-bottom-right">
		            <div class="section group" id="pro">
							<link rel="stylesheet" href="pay/css/style.css">
							<link rel='stylesheet prefetch' href='pay/css/bootstrap.min.css'>
							<div class="container">
							  <div id="Checkout" class="inline">
							      <h1>Pay Invoice</h1>
							      <div class="card-row">
							          <span class="visa"></span>
							          <span class="mastercard"></span>
							          <span class="amex"></span>
							          <span class="discover"></span>
							      </div>
							      <form action="../insertcollegetransaction" method="post">
			
<input type="hidden" value="<%=mobile%>" name="mobile">

							          							      	<input type="hidden" value="<%=paidamount%>" name="amt">
							          <div class="form-group"><input type="hidden" value="<%=id1%>" name="id">
							              <label for="PaymentAmount">fullname</label>
							              <div class="amount-placeholder">
							                  <span><%=fullname%></span>
							                  <span>Rs.</span>
							              </div>
							          </div>
							  
							          <div class="form-group">
							                	<input type="hidden" value="<%=amount%>" name="amount">
							          							      	<input type="hidden" value="<%=paidamount%>" name="amt">

							              <label for="PaymentAmount">Payment amount</label>
							              <div class="amount-placeholder">
							                  <span><%=paidamount%></span>
							                  <span>Rs.</span>
							              </div>
							          </div>
														          <button id="PayButton" class="btn btn-block btn-success submit-button" type="submit">
							              <span class="submit-button-lock"></span>
							              <span class="align-middle">Complete Transaction</span>
							          </button>
							          		<%} %>	
							      </form>
							  </div>
							</div>
							    
				    </div>
		        </div>
		      	<div class="clear"></div>
		   </div>
         </div>
      </div>
    </div>
  
    <script type="text/javascript" src="pay/js/navigation.js"></script>
</body>
</html>

