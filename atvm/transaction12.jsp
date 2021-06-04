

<%@page import="java.util.Date"%>
<%@page import="Database.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>





<head>
<%@include file="header.jsp"%></head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<body>



<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->



<head>
    <title>My School Education Category Bootstrap Responsive website Template | Login :: w3layouts</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="My School Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Bootstrap-CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <!-- Style-CSS -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //Custom-Files -->

    <!-- Web-Fonts -->
    <link href="//fonts.googleapis.com/css?family=Lora:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese"
        rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext" rel="stylesheet">
    <!-- //Web-Fonts -->
</head>

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
		
	

		String id1 = rs.getString("id");


	

	
		
		
%>
    <!-- header -->


    <!-- inner banner -->
    <div class="inner-banner-w3ls py-5" id="home">
        <div class="container py-xl-5 py-lg-3">
            <!-- login  -->
            <div class="modal-body my-5 pt-4">
                <h3 class="title-w3 mb-5 text-center text-wh font-weight-bold"><font color="black">Login Now</font></h3>
                <form action="../transaction12" method ="post">
                    <div class="form-group"><font color="white"><b>ID</b></font><br></br>
                    	<input type="text" value="<%=id1%>" name="id"><br></br>
                        <label class="col-form-label"><font color="white"><b>Select transaction way</b></font></label>
                        <select id="rfid" name ="rfid" class="form-control" placeholder="your name"required="">
                    
                   
  <option value="online">online </option>
  <option value="Collegecard">College card</option>

</select>
               </div><br></br>
                            <input type="submit" value="submit">   
               </form>
   
                        <div class="col-sm-6 forgot-w3l text-sm-right">
                            <a href="#" class="text-li text-style-w3ls">Forgot Password?</a>
                        </div>
                    </div>
                    <p class="text-center dont-do text-style-w3ls text-li">Don't have an account?
                        <a href="register.html" class="font-weight-bold text-li">
                            Register Now</a>
                    </p>
                    	<%} %>	
                </form>
            </div>
            <!-- //login -->
        </div>
    </div>
    <!-- //inner banner -->

    <!-- footer -->
    
               
    <!-- //copyright -->
    <!-- move top icon -->
    <a href="#home" class="move-top text-center">
        <span class="fa fa-angle-double-up" aria-hidden="true"></span>
    </a>
    <!-- //move top icon -->

</body>

</html>







</body>
</html>