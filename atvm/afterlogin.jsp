<%@page import="java.util.Date"%>
<%@page import="Database.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@include file="aheader.jsp"%></head>
<body>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html lang="zxx">



<head>
    <title>My School Education Category Bootstrap Responsive website Template | Home :: w3layouts</title>
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


  String username = request.getParameter("username");
	System.out.println(username);


	DatabaseConnection db = new DatabaseConnection();
	db.dbconnection();
	ResultSet rs = null;
	String sql="Select * from users where rfid = '"+username+"'   " ;

	rs=db.getResultSet(sql);
	
	if (rs.next())	
	
	{
		
		String id = rs.getString("id");

		String mobile = rs.getString("mobile");

	

	
		
		
%>

    <!-- header -->

    <!-- //header -->

    <!-- banner -->
    <div class="main-w3pvt mian-content-wthree text-center" id="home">
        <div class="container">
            <div class="style-banner mx-auto">
            
                <!-- form -->
                <div class="home-form-w3ls mt-5">
                    <form action="../enterbooking" method="post">
                          <div class="form-group">
                        <label class="col-form-label">ID</label>
                        <input type="text" class="form-control"  name="id"  value="<%=rs.getString("id")%>" required="">
                    </div>
                
              
                           <div class="form-group">
                        <label class="col-form-label">mobile</label>
                        <input type="text" class="form-control" value="<%=rs.getString("mobile")%>"  name="mobile"
                            required="">
                    </div>
                          <div class="form-group">
                        <label class="col-form-label">paidamount</label>
                        <input type="text" class="form-control" value="<%=rs.getString("paidamount")%>"  name="mobile"
                            required="">
                    </div>
                           
                           
                       <div class="form-group">
                        <label class="col-form-label">Booking id </label>
                        <input type="phone" class="form-control"  name="bookingid"
                            required="">
                    </div>
               
               
               
                    
                    <div class="sub-w3l my-3">
                        <div class="sub-w3layouts_hub">
                            <input type="checkbox" id="brand1" value="">
                            <label for="brand1" class="text-li text-style-w3ls">
                                                   </div>
                    </div>
                    <button type="submit" class="btn button-style-w3">Enter student details</button>
                </form>
                </div>
                <!-- //form -->
            </div>
        </div>
    </div>
    		<%} %>	
    <!-- //banner -->

    <!-- banner bottom -->
   
    </footer>
    <!-- //footer -->
    <!-- copyright -->
    <div class="copyright-w3ls py-4">
        <div class="container">
            <div class="row">
                <!-- copyright -->
                <p class="col-lg-8 copy-right-grids text-wh text-lg-left text-center mt-lg-2">© 2019 My School. All
                    Rights Reserved | Design by
                    <a href="https://w3layouts.com/" target="_blank">W3layouts</a>
                </p>
                <!-- //copyright -->
                <!-- social icons -->
                <div class="col-lg-4 w3social-icons text-lg-right text-center mt-lg-0 mt-3">
                    <ul>
                        <li>
                            <a href="#" class="rounded-circle">
                                <span class="fa fa-facebook-f"></span>
                            </a>
                        </li>
                        <li class="px-2">
                            <a href="#" class="rounded-circle">
                                <span class="fa fa-google-plus"></span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="rounded-circle">
                                <span class="fa fa-twitter"></span>
                            </a>
                        </li>
                        <li class="pl-2">
                            <a href="#" class="rounded-circle">
                                <span class="fa fa-dribbble"></span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- //social icons -->
            </div>
        </div>
    </div>
    <!-- //copyright -->
    <!-- move top icon -->
    <a href="#home" class="move-top text-center">
        <span class="fa fa-angle-double-up" aria-hidden="true"></span>
    </a>
    <!-- //move top icon -->

</body>

</html>

