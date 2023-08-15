<%@page import="com.classes.Admin"%>
<%@page import="com.classes.company"%>
<%@page import="com.classes.seeker"%>
<%@page import="com.classes.MD5"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">	
        <script src="https://kit.fontawesome.com/0008de2df6.js" crossorigin="anonymous"></script>
    </head>
    <body>


        <header id="header">

            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container-fluid">

                    <a class="navbar-brand" href="index.jsp">
                      
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

                            <%
                                Admin admin = (Admin) session.getAttribute("admin");
                                seeker seeker = (seeker) session.getAttribute("seeker");
                                company company = (company) session.getAttribute("company");
                                if (seeker != null) {
                                  
                            %>
                            <ul class="navbar-nav navbar-right">

                                <li><a class="btn btn-danger" href="userprofile.jsp">Profile</a></li>
                            </ul>
                            <%
                            } else if (company != null) {
                            %>

                            <ul class="navbar-nav navbar-right">

                                <li><a class="btn btn-danger" href="companyProfile.jsp">Profile</a></li>
                            </ul>
                            <%} else if (admin != null) { %>


                            <ul class="navbar-nav navbar-right">

                                <li><a class="btn btn-danger" href="adminProfile.jsp">Profile</a></li>
                            </ul>

                            <%} else { %>
                            <ul class="navbar-nav navbar-right">

                                <li><a class="btn btn-danger" href="seekerLogin.jsp">Login</a></li>
                            </ul>

                            <% }
                            %>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>


        <div class="container-fluid">
            <div class="row" >
                <div class="d-flex w-100 justify-content-center align-items-center">
                    <img class="w-90" src="images/trendhireLogo.png" alt="Banner" />
                </div>
            </div>
        </div>



        <div class="container-fluid" style="margin-top: 30px">
            <div class="row">
                <div class="col d-flex flex-column align-items-center justify-content-center">
                    <h1><i>"Elevate Your Career with TrendHire!</i> </h1>
                    <h2 class="text-red"><i>Where Trends Lead to Success"</i> </h2>
                    <a href="userRegisterForm.jsp" style="margin-top: 15px"> <button type="button" class="btn btn-danger">Sign Up Now</button> </a>
                </div>
            </div>
        </div>



        <section class="ourJob" style="margin-top: 50px; margin-bottom: 0px">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-sm-4">
                        <div class="ourjobInner mb-4">
                            <i class="fa fa-users" aria-hidden="true"></i>
                            <h3 class="text-red">Post Job Vacancies</h3>
                            <p>Empower your hiring process.<br> Companies, showcase job opportunities on TrendHire and <br>connect with exceptional talent effortlessly.<br> Elevate your team today!</p>
                            <a href="postvacancy.jsp" class="btn btn-danger read rounded-pill"> Visit <i class="fa fa-angle-right" aria-hidden="true"></i></a>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="ourjobInner mb-4">
                            <i class="fa fa-search" aria-hidden="true"></i>
                            <h3 class="text-red">   Look for jobs</h3>
                            <p>Explore diverse opportunities. <br>Jobseekers, search and discover tailored roles on TrendHire <br>to embark on your desired career journey</p>
                            <a href="vacancies.jsp" class="btn btn-danger read rounded-pill"> Visit <i class="fa fa-angle-right" aria-hidden="true"></i></a>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="ourjobInner mb-4">
                            <i class="fa-regular fa-file-lines"></i>
                            <h3 class="text-red">Apply for jobs</h3>
                            <p>Explore diverse job opportunities<br> and apply to vacancies in various industries <br>through TrendHire's user-friendly job application portal.<br> Your dream job awaits.</p>
                            <a href="vacancies.jsp" class="btn btn-danger read rounded-pill"> Visit <i class="fa fa-angle-right" aria-hidden="true"></i></a>
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
