
<%@page import="com.classes.Admin"%>
<%

    Admin admin = (Admin) session.getAttribute("admin");

    if (admin != null) {
        // Display user information
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Profile</title>
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/0008de2df6.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <header id="header">

            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container-fluid">

                   <a class="navbar-brand" href="index.jsp">
                        <!-- <img src="images/trendhireLogo.png" class="w-100 main-logo" alt="Logo" title="Logo">-->
                        <img src="images/trendhireLogo.png" class="main-logo" alt="Logo" title="Logo" style="max-width: 150px; max-height: 100px;">

                    </a>


                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav navbar-center m-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.jsp">Home </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="vacancies.jsp">Vacancies</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="aboutUs.jsp">About Us</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" href="contact.jsp">Contact</a>
                            </li>
                        </ul>

                        <ul class="navbar-nav navbar-right">

                            <li><a class="btn btn-danger" href="./backend/logout.jsp">Log Out</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

        <section class="nearJob">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-5 nearcol">
                        <h1>Your dream Job</h1>
                        <h2 class="text-red">Is Near to You</h2>
                    </div>
                    <div class="col-sm-7 d-none d-md-block">
                        <div class="row">
                            <div class="d-flex w-100">
                                <img class="w-100" src="images/trendhireLogo.png" alt="Banner" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="profileMain">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-3 pe-lg-5">
                        <div class="card mb-2 border-0">
                            <div class="jobImage">
                                <div class="image-card">
                                    <img class="card-img-top" src="<% out.print(admin.getAdPicture()); %>" alt="Profile">
                                </div>
                            </div>

                        </div>

                        <div class="proLinks">
                            <div class="d-grid mb-4">
                                <a href="adminUser.jsp" class="btn btn-outline-danger">
                                    <i class="fa-solid fa-address-card" aria-hidden="true"></i> User Details

                                </a>
                            </div>
                            <div class="d-grid mb-4">
                                <a href="adminCompany.jsp" class="btn btn-outline-danger">
                                    <i class="fa-solid fa-address-card" aria-hidden="true"></i> Company Details

                                </a>
                            </div>
                            <div class="d-grid mb-4">
                                <a href="adminPost.jsp" class="btn btn-outline-danger">
                                    <i class="fa-solid fa-address-card" aria-hidden="true"></i> Vacancy Details

                                </a>
                            </div>
                         

                        </div>
                    </div><!-- /. grid column -->
                    <div class="col-sm-9 profile_right">
                        <div class="border p-4">

                           <div class="pb-5">
                                <h3>Admin Information
                                    <span class="float-end fx-top">

                                        <a href="" class="btn btn-danger">
                                            <i class="fa fa-edit me-2" aria-hidden="true"></i> Edit
                                        </a>
                                    </span>
                                </h3>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6">
                                    First Name:
                                    <input type="text" name="firstname" id="firstName" class="form-control" placeholder="<% out.print(admin.getAdFirstname()); %>" value="" required disabled>
                                </div>
                                <div class="col-sm-6">
                                    Last Name:
                                    <input type="text" name="lastname" id="lastName" class="form-control" placeholder="<% out.print(admin.getAdLastname()); %>" value="" required disabled>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6">
                                    Phone:
                                    <input type="text" name="number" id="number" class="form-control" placeholder="<% out.print(admin.getAdPhone()); %>" value="" required disabled>
                                </div>
                                <div class="col-sm-6">
                                    Address:
                                    <input type="text" name="address" id="address" class="form-control" placeholder="<% out.print(admin.getAdAddress()); %>" value="" required disabled>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6">
                                    Username:
                                    <input type="text" name="username" id="username" class="form-control" placeholder="<% out.print(admin.getAdUsername()); %>" value="" required disabled>
                                </div>
                                <div class="col-sm-6">
                                    Email:
                                    <input type="email" name="email" id="email" class="form-control" placeholder="<% out.print(admin.getAdEmail()); %>" value="" required disabled>
                                </div>
                            </div>
                          
                          
                        </div>
                    </div>
                </div>
            </div>
        </section>
<footer id="footer">

            <div class="container-fluid" >
                <div class="row" >
                    <div class="col-sm-3" style="margin-top: 20px;">
                        <a href="index.jsp">
                            <img src="images/trendhireLogo.png" alt="Logo" title="Logo">
                        </a>
                        <div class="footer_inner">
                            <p class="w-90">"Welcome to TrendHire, your gateway to career opportunities. Explore, apply, and 
                                connect with your dream jobs effortlessly. Join us today and shape your future!" 
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-2 mx-auto" style="margin-top: 20px;">
                        <h5>Usefull Links</h5>
                        <div class="footer_inner">
                            <ul class="list-unstyled">
                                <li><a href="aboutUs.jsp">About Us</a></li>
                                <li><a href="contact.jsp">Contact Us</a></li>
                                <li><a href="vacancies.jsp">Vacancies</a></li>
                                <li><a href="termsAndConditions.jsp">Terms & Conditios</a></li>
                               
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3" style="margin-top: 20px;">
                        <h5>Contact Us</h5>
                        <div class="footer_inner">
                            <div class="d-flex media">
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                                <div class="media-body"><p> <span class="f_rubik">43,</span> Passara Road, Badulla <br> Sri Lanka <span class="f_rubik">90000</span> </p></div>
                            </div>
                            <div class="d-flex media">
                                <i class="fa-regular fa-envelope"></i>
                                <div class="media-body"><p>info@trendhire.com</p></div>
                            </div>
                            <div class="d-flex media">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                <div class="media-body"><p class="f_rubik">+9455-1234567</p></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </footer>

    </body>
</html>
<%
    } else {
        response.sendRedirect("seekerLogin.jsp?error=2");
    }
%>