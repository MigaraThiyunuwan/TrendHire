
<%@page import="com.classes.Admin"%>
<%@page import="com.classes.company"%>
<%@page import="com.classes.seeker"%>
<%@page import="com.classes.seeker"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
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
                        <h1><i>"Reach Out, We're Here,</i></h1>
                        <h2 class="text-red"><i> Connecting You to Solutions"</i></h2>
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
        <br><br>
        <section class="stillGot">
            <div class="container-fluid">
                <div class="row text-center">
                    <div class="col-sm-8 mx-auto">
                        <h4 class="text-secondary">Contact Us</h4>
                        <h3>Still Got <span class="text-red"> Questions?</span></h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-9">
                        <form method="post">
                            <div class="row">
                                <div class="col-sm-6 form-group" style="padding: 10px">
                                    <input type="text" name="username" class="form-control" id="username" placeholder="Name" value="" required>
                                </div>
                                <div class="col-sm-6 form-group" style="padding: 10px">
                                    <input type="email" name="email" class="form-control" id="e_mail" placeholder="Email address" value="" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 form-group"style="padding: 10px">
                                    <textarea class="form-control" name="message" rows="12" placeholder="Your Message" required></textarea>
                                </div>
                            </div>
                            <div class="row pt-4">
                                <div class="col-sm-12 form-group"style="padding: 10px">
                                    <button type="submit" name="submit" class="btn btn-danger rounded-1" id="sendMsg">
                                        <span class="me-2">Send Message</span><i class="fa fa-paper-plane " aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div><!-- grid column 9 -->
                    <div class="col-sm-3">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="jobImage rounded-lg">
                                    <div class="image-card">
                                        <img class="w-100" src="images/trenHire.png" alt="Job" height="385px">
                                    </div>

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
