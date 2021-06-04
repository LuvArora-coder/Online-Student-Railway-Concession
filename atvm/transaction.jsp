
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
							      <form action="../inserttransaction" method="post">
			
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
							          							      	<input type="hidden" value="<%=paidamount%>" name="amt">

							              <label for="PaymentAmount">Payment amount</label>
							              <div class="amount-placeholder">
							                  <span><%=paidamount%></span>
							                  <span>Rs.</span>
							              </div>
							          </div>
							          <div class="form-group">
							              <label or="NameOnCard">Name on card</label>
							              <input id="name" name="cname"  class="form-control" type="text" maxlength="255"></input>
							          </div>
							          <div class="form-group">
							              <label for="CreditCardNumber">Card number</label>
							              <input id="cno" name="cno"  class="null card-image form-control" type="text"></input>
							          </div>
							          <div class="expiry-date-group form-group">
							              <label for="ExpiryDate">Expiry date</label>
							              <input id="ExpiryDate" name="cexp"  class="form-control" type="text" placeholder="MM / YY" maxlength="7"></input>
							          </div>
							          <div class="security-code-group form-group">
							              <label for="SecurityCode">Security code</label>
							              <div class="input-container" >
							                  <input id="SecurityCode" name="csecu"  class="form-control" type="text" ></input>
							                  <i id="cvc" class="fa fa-question-circle"></i>
							              </div>
							              <div class="cvc-preview-container two-card hide">
							                  <div class="amex-cvc-preview"></div>
							                  <div class="visa-mc-dis-cvc-preview"></div>
							              </div>
							          </div>
							          <div class="zip-code-group form-group">
							              <label for="ZIPCode">ZIP/Postal code</label>
							              <div class="input-container">
							                  <input id="ZIPCode" name="zip"  class="form-control" type="text" maxlength="10"></input>
							                  <a tabindex="0" role="button" data-toggle="popover" data-trigger="focus" data-placement="left" data-content="Enter the ZIP/Postal code for your credit card billing address."><i class="fa fa-question-circle"></i></a>
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

