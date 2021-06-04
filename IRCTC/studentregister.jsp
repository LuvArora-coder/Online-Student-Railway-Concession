<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>



<head>
<%@include file="header.jsp"%></head>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Automation of concession</title>

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
    <!-- header -->


    <!-- inner banner -->
    <div class="inner-banner-w3ls py-5" id="home">
        <div class="container py-xl-5 py-lg-3">
            <!-- login  -->
            <div class="modal-body my-5 pt-4">
                <h3 class="title-w3 mb-5 text-center text-wh font-weight-bold">Enter student details </h3>
                 <form action="../enterdetails" method="post">
                    <div class="form-group">
                        <label class="col-form-label">Student name</label>
                        <input type="text" class="form-control"  name="name" required="">
                    </div>
                          <div class="form-group">
                        <label class="col-form-label">cource</label>
                        <input type="text" class="form-control"  name="cource" required="">
                    </div>
                            <div class="form-group">
                        <label class="col-form-label">rfid no</label>
                        <input type="text" class="form-control"  name="rfid" required="">
                    </div>
                          <div class="form-group">
                        <label class="col-form-label">Academic Year </label>
                        <input type="text" class="form-control"  name="academicyear" required="">
                    </div>
                          <div class="form-group">
                        <label class="col-form-label">Date Of Birth</label>
                        <input type="text" class="form-control"  name="dob" required="">
                    </div>      <div class="form-group">
                        <label class="col-form-label">Source</label>
                        <input type="text" class="form-control"  value="Andheri" name="source" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Email</label>
                        <input type="email" class="form-control" placeholder="loremipsum@email.com" name="email"
                            required="">
                    </div>
                           <div class="form-group">
                        <label class="col-form-label">mobile</label>
                        <input type="text" class="form-control" placeholder="loremipsum@email.com" name="mobile"
                            required="">
                    </div>
                           <div class="form-group">
                        <label class="col-form-label">Username</label>
                        <input type="phone" class="form-control" placeholder="loremipsum@email.com" name="username"
                            required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Password</label>
                        <input type="password" class="form-control" placeholder="*****" name="password" required="">
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