
<%@page import="com.classes.Admin"%>
<%@page import="com.classes.company"%>
<%@page import="com.classes.seeker"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/aboutUs.css" rel="stylesheet">
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

                            <%

                                Admin admin = (Admin) session.getAttribute("admin");
                                seeker seeker = (seeker) session.getAttribute("seeker");
                                company company = (company) session.getAttribute("company");
                                if (seeker != null) {
                                    // Display user information
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

        <section class="nearJob">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-5 nearcol">
                        <h1><i>"Crafting Success Stories,</i></h1>
                        <h2 class="text-red"><i>Our Journey, Your Inspiration"</i></h2>
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
        <br><br>

        <!-- Company Over View Start -->
        <section class="overview">
            <div class="container-fluid">
                <br>
                <div class="row">
                    <div class="col-sm-5 me-3 m-auto">
                        <div class="overImg">
                            <div class="img-card"><img class="w-100" src="images/AboutUs/abouUs.jpg" alt="Banner"></div>
                        </div>
                    </div>
                    <div class="col-sm-6 pt-md-5 mx-auto pt-sm-0">
                        <h1>Company <span class="text-red">Overview</span></h1>
                        <p class="pt-3">Tredhire is a cutting-edge and user-friendly job application portal that aims to revolutionize the way job seekers and employers connect. Built with the latest technologies and a focus on enhancing the job application process, Tredhire provides an intuitive and efficient platform for job seekers to find their dream positions and for employers to discover top talent.</p>
                        <div class="p">
                            Tredhire is a modern and dynamic job application portal that brings job seekers and employers together through a user-friendly and efficient platform. With its innovative features and commitment to user satisfaction, Tredhire sets a new standard for the online job search and recruitment industry, creating a seamless experience for all users involved in the job application process.
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <br><br><br><br><br>
        <!-- Company Over View End -->

        <!-- Our Key Features  Start-->
        <br><br><br>
        <section>
            <div class="container-fluid">
                <h1 class="pb-5" align="center">Our <span class="text-red">Features </span></h1>
                <div class="row">
                    <div class="col-sm-3 mb-4">
                        <div class="interinner">
                            <div class="daimond-bg"><i class="fa fa-building" aria-hidden="true"></i></div>
                            <h2 class="text-red">Job Search and Filtering</h2>
                            <h4>Job seekers can search for positions based on various criteria, including job title, location, experience level, and industry. Advanced filtering options help candidates to find jobs that best match their skills and preferences.</h4>
                        </div>
                    </div>
                    <div class="col-sm-3 mb-4">
                        <div class="interinner">
                            <div class="daimond-bg"><i class="fa fa-building" aria-hidden="true"></i></div>
                            <h2 class="text-red">Customized Job Alerts</h2>
                            <h4>Job seekers can set up personalized job alerts based on their preferences. Tredhire sends notifications when new jobs that match the user's criteria are posted, ensuring they never miss an opportunity</h4>
                        </div>
                    </div>
                    <div class="col-sm-3 mb-4">
                        <div class="interinner">
                            <div class="daimond-bg"><i class="fa fa-building" aria-hidden="true"></i></div>
                            <h2 class="text-red">Employer Profiles</h2>
                            <h4>Companies can create comprehensive profiles to showcase their brand, company culture, and available job openings. This feature allows job seekers to gain valuable insights into the company they are interested in.</h4>
                        </div>
                    </div>
                    <div class="col-sm-3 mb-4">
                        <div class="interinner">
                            <div class="daimond-bg"><i class="fa fa-building" aria-hidden="true"></i></div>
                            <h2 class="text-red">Mobile Compatibility</h2>
                            <h4>The Tredhire website is fully optimized for mobile devices, allowing users to access the platform on the go. This feature ensures that job seekers and employers can stay connected at all times.Tredhire provides an efficient platform.</h4>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Our Key Features end-->

        <!-- Our Team Start-->
        <div class="container py-5">
            <h1 align="center">Our <span class="text-red">Team</span></h1><br>
            <div class="row">
                <div class="col">
                    <!-- Card-->
                    <div class="card shadow-sm border-0 rounded">
                        <div class="card-body p-0"><img src="images/AboutUs/Migaran.jpg" alt="" class="w-100 card-img-top">
                            <div class="p-4">
                                <h5 class="mb-0" >Migara Thiyunuwan</h5>
                                <p class="small text-muted">Full Stack Developer</p>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <!-- Card-->
                    <div class="card shadow-sm border-0 rounded">
                        <div class="card-body p-0"><img src="images/AboutUs/malkinn.jpg" alt="" class="w-100 card-img-top">
                            <div class="p-4">
                                <h5 class="mb-0">Malki Madubhashini</h5>
                                <p class="small text-muted">Full Stack Developer</p>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <!-- Card-->
                    <div class="card shadow-sm border-0 rounded">
                        <div class="card-body p-0"><img src="images/AboutUs/Sakunin.jpg" alt="" class="w-100 card-img-top">
                            <div class="p-4">
                                <h5 class="mb-0">Sakuni Nikeshala</h5>
                                <p class="small text-muted">Full Stack Developer</p>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <!-- Card-->
                    <div class="card shadow-sm border-0 rounded">
                        <div class="card-body p-0"><img src="images/AboutUs/Thimiran.jpg" alt="" class="w-100 card-img-top">
                            <div class="p-4">
                                <h5 class="mb-0">Thimira Kalansooriya</h5>
                                <p class="small text-muted">Full Stack Developer</p>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <!-- Card-->
                    <div class="card shadow-sm border-0 rounded">
                        <div class="card-body p-0"><img src="images/AboutUs/shamini.jpg" alt="" class="w-100 card-img-top">
                            <div class="p-4">
                                <h5 class="mb-0">Shamini Sivarasa</h5>
                                <p class="small text-muted">Full Stack Developer</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
        
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
