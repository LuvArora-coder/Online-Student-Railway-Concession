<%@page import="java.util.Date"%>
<%@page import="Database.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@include file="aheader.jsp"%>

<br>

<br>
<br>
<br>

<br>
<br>
<br>

<br>
<br>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<html>
<head>



  <meta charset="UTF-8">
  <title>Responstable 2.0: a responsive table solution</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/style7.css">

  
</head>


<body>


		

<div id="tableWrap">
<table class="responstable" >

  <tr>
 
    <th>ID</th>

	
					<th>name</th>
					<th>Source  </th>
										<th>Destination</th>
											<th>From date</th>
												<th>Expiry date</th>
													<th>Monthly/Quarterly</th>
												<th>College status</th>
													<th>Railway status</th>
												

		
  </tr>
  <%





	DatabaseConnection db = new DatabaseConnection();
	db.dbconnection();
	ResultSet rs = null;
	String sql="Select * from users" ;

	rs=db.getResultSet(sql);
	
	while (rs.next())	
	
	{
		
		String id = rs.getString("id");
		String mobile = rs.getString("mobile");

		
		
%>


					
			<Form action="../irctcaprove" method="post" style="float:left">
			<tr>
			<td><%=rs.getString("id")%></td>
					<td><%=rs.getString("fullname")%></td>
					<td><%=rs.getString("source")%></td>
						<td><%=rs.getString("destination")%></td>
							<td><input type="date" name="fromdate"></td>
						<td><input type="date" name="expiry"></td>
								<td><%=rs.getString("monthly")%></td>
						<td><%=rs.getString("collegestatus")%></td>
							<td><%=rs.getString("railwaystataus")%></td>
			 <td>				
		
			<input type="hidden" name="fromdate" ">
            			<input type="hidden" name="expiry" ">
            		<input type="hidden" name="id" value="<%=id%>">
            			<input type="hidden" name="mobile" value="<%=mobile%>">
                  
            		
        			<input type="submit" value="Aproved"/>
        			</Form>
        			   </td>
        			    <td>				
		<Form action="../irctcreject" method="post" style="float:left">
			<input type="hidden" name="fromdate" ">
            			<input type="hidden" name="expiry" ">
            		<input type="hidden" name="id" value="<%=id%>">
            			<input type="hidden" name="mobile" value="<%=mobile%>">
                  
            		
        			<input type="submit" value="Reject"/>
        			</Form>
        			   </td>
        			</tr>
        	

				<%} %>	
		
				
			
</table>

</div>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js'></script>
<script type="text/javascript">
	$(function() {
		$('#EXPORT').click(
				function() {
					var url = 'data:application/vnd.ms-excel,'
							+ encodeURIComponent($('#tableWrap').html())
					location.href = url
					return false
				})
	})
</script>


</head>
<body>
	
</script>
</body>
</html>
