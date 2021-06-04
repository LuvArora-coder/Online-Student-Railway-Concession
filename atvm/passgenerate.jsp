<%@page import="Database.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="aheader.jsp" %>	
<script>
function printDiv(divName) {
     var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}

</script>
<link rel="stylesheet" href="calender/lcard.css" type="text/css" />
<body>
<div id="printableArea">
     <div class="addusermain1">
        <div class="aulogindiv1">
                <form action="insertuser.php" method="post" class="aulogform1">
                    <div>
                        <h4 class="auloghead1">Pass Details</h4>
                    </div>

 <%

							 String id=(String) session.getAttribute("id");
								System.out.println(id);

	DatabaseConnection db = new DatabaseConnection();
	db.dbconnection();
	ResultSet rs = null;
	String sql="Select * from users where id =   '"+id+"'";

	rs=db.getResultSet(sql);
	
	if (rs.next())	
	
	{
		
	
		String fullname = rs.getString("fullname");
		String mobile = rs.getString("mobile");
		String paidamount = rs.getString("paidamount");
		String id1 = rs.getString("id");
		String source = rs.getString("source");
		String destination = rs.getString("destination");
		String expiry = rs.getString("expiry");
		String monthly = rs.getString("monthly");
		String fromdate = rs.getString("fromdate");
		String dob = rs.getString("dob");

	

	
		
		
%>

                    <div class="shift1">
                        <div class="card1">
                        	<div>
                        		<img src="calender/ashok.jpg" width="40px" height="52px" style="float:left"> 
                        		<h5  style="float:left;background-color:red;color:white;padding:5px 15px;border-radius:5px;">
                        			<span style="padding:0 103px;"> </span><br>
                        			GOVERNMENT OF INDIA RLY PASS DETAILS
                        		</h5>
                        		<img src="calender/ashok.jpg" width="40px" height="52px">
                        	</div>
                        	<br>
                        
                          
                        	<div>
                        		<span class="name1">Start date:-<%=fromdate%></span>       
                        		<span class="name1" style="padding:0 0px">End date: <%=expiry%></span><br><br>
                        	</div>
  <div class="my-text1">Name: <%=fullname%></div>
                        
                            <!-- <div class="avatar1" style="float:right">
                            	<img src="calender/goldicon.png" width="90px" height="80px"> 
                            </div> -->
                            <br>
                            
                            	<div style="padding-left:190px"><b style="font-weight:bold;">DOB:-<%=dob%></b></div><br>
                            
                            <span class="name1">
                            	<div style="padding-left:110px">Source:-<%=source%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Destination:-<%=destination%></div>
                            </span>
                            </div>
                            </div>
                            </div>
                            
                        
                         
<!--                             <div class="my-label1">Address:</div> -->
<%--                             <div class="my-text1"><%=address%></div> --%>
                         

<!--                             <div> -->
<!-- 	                            <div class="my-label123" style="padding-top:20px;">Applicant Signature:</div>  -->
<%-- 	                            <div class="my-text1" style="padding-top:20px;"><img src="doc/<%=sign%>" width="90px" height="40px"></div> --%>
<!-- 	                        </div> -->
	                        
                        </div><br><br>
                        <div>
                    		<img src="images/best.jpg" width="520px;">
                    	</div>
                    </div>
                   <input type="button" onclick="printDiv('printableArea')" value="print a div!" />  

<%
	}
	
%>
              </form>
        </div>     
     </div>
</body>
</html>