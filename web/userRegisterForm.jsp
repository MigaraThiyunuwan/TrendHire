
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
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
                                <a class="nav-link" href="contact-us.html">Contact</a>
                            </li>
                        </ul>

                        <ul class="navbar-nav navbar-right">

                            <li><a class="btn btn-danger" href="seekerLogin.jsp">Login</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <div class="container-fluid">
            <div class="row" >
                <div class="d-flex w-100 justify-content-center align-items-center">
                    <img class="w-80" src="images/trendhireLogo.png" alt="Banner" />
                </div>
            </div>
        </div>


        <section class="loginForm">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 mx-auto">	
                        <form action="./backend/seekerRegistrationProcess.jsp" method="POST">
                            <h3 class="text-center">JOB SEEKER REGISTRATION</h3>


                            <%    String requestMethod = request.getMethod();

                                if ("GET".equals(requestMethod)) {
                                    String error = request.getParameter("error");
                                    if (error != null && error.equals("1")) {
                            %>
                            <div class='alert alert-danger alert-dismissible fade show' role='alert'>
                                Please Fill all Fields
                                <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                            </div>
                            <%  }
                                if (error != null && error.equals("0")) {  %>
                            <div class='alert alert-danger alert-dismissible fade show' role='alert'>
                                User Delete Failed!
                                <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                            </div>
                            <%  }

                                }
                            %>


                            <a href="CompanyRegister.jsp"  <P style="color: red">Register as Company?</P> </a>
                            <div class="latestForm">


                                <div class="form-group"> 

                                    <input type="text" name="firstname" id="firstName" class="form-control" value="" required> 
                                    <label class="form-control-placeholder" for="firstName">First Name</label>
                                    <i class="fa-solid fa-user iconSet"></i>
                                </div>
                                <!-- last input -->
                                <div class="form-group"> 
                                    <input type="text" name="lastname" id="lastName" class="form-control" value="" required> 
                                    <label class="form-control-placeholder" for="lastName">Last Name</label>
                                    <i class="fa-solid fa-user iconSet"></i>
                                </div>


                                <!-- email input -->
                                <div class="form-group"> 
                                    <input type="email" name="email" id="email" class="form-control" value="" required> 
                                    <label class="form-control-placeholder" for="email">E-mail Address</label>
                                    <i class="fa fa-envelope iconSet"></i>
                                </div>
                                <!-- user input -->
                                <div class="form-group"> 
                                    <input type="text" name="username" id="userName" class="form-control" value="" required> 
                                    <label class="form-control-placeholder" for="userName">Username</label>
                                    <i class="fa fa-user iconSet" aria-hidden="true"></i>
                                </div>
                                <div class="form-group">
                                    <input type="tel" name="phone" id="phone" class="form-control" value="" required>
                                    <label class="form-control-placeholder" for="phone">Phone No</label>
                                    <i class="fa fa-phone iconSet" aria-hidden="true"></i>
                                </div>
                                <div class="form-group">
                                    <input type="address" name="address" id="address" class="form-control" value="" required>
                                    <label class="form-control-placeholder" for="address">Address</label>
                                    <i class="fa fa-location-dot iconSet" aria-hidden="true"></i>

                                </div>
                                <!-- password input -->
                                <div class="form-group"> 
                                    <input type="password" name="password" id="password" class="form-control" value="" required> 
                                    <label class="form-control-placeholder" for="password">Password</label> 
                                    <i class="fa fa-lock iconSet" aria-hidden="true"></i>
                                </div> 


                            </div> 

                            <div class="d-grid">
                                <input type="submit" name="submit" class="btn btn-danger mb-4" id="register" value="Register Now">
                            </div>

                        </form>



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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
crossorigin="anonymous"></script>

<script>
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));
</script>