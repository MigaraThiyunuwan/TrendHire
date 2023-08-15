
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
                                <a class="nav-link" href="contact.jsp">Contact</a>
                            </li>
                        </ul>

                        <ul class="navbar-nav navbar-right">

                            <li><a class="btn btn-danger" href="companyLogin.jsp">Login</a></li>
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


        <section class="profileMain com-register">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-sm-12 profile_right">
                        <h3 class="text-center">COMPANY REGISTRATION</h3>
                        <a href="userRegisterForm.jsp"  <P style="color: red">Register as Job Seeker?</P> </a>
                        <div class="border p-4 h-100">
                            <form action="./backend/companyRegistrationProcess.jsp" method="post">

                                <div class="pb-5">
                                    <h3>General Information</h3>
                                </div>
                                <div class="form-group row">	
                                    <div class="col-sm-6">
                                        <input type="text" name="name" id="name" class="form-control" placeholder="Name" value="" required>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="address" name="address" id="tagLine" class="form-control" placeholder="Company Address" value="" required>
                                    </div>
                                </div>

                                <div class="form-group row">	
                                    <div class="col-sm-6 dropdown-container position-relative">
                                        <select name="category" id="category" class="form-control">
                                            <option value="Default">Category</option>
                                            <option value="Information Technology">Information Technology</option>
                                            <option value="Tourism">Tourism</option>
                                            <option value="Engineering">Engineering</option>
                                            <option value="Education">Education</option>
                                            <option value="Health care">Health care</option>
                                            <option value="Finance">Finance</option>
                                            <option value="Marketing">Marketing</option>
                                            <option value="Construction">Construction</option>
                                            <option value="Service">Service</option>
                                            <option value="Other">Other</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" name="web" id="web" class="form-control" placeholder="Website" value="" required>
                                    </div>
                                </div>
                                <div class="form-group row">	
                                    <div class="col-sm-6">
                                        <input type="email" name="email" id="email" class="form-control" placeholder="Email" value="" required>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="employee" name="employee" id="employee" class="form-control" placeholder="Number of Employees" value="" required>
                                    </div>
                                </div>
                                <div class="form-group row">	
                                    <div class="col-sm-6">
                                        <input type="text" name="username" id="username" class="form-control" placeholder="Username" value="" required>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" name="password" id="e_mail" class="form-control" placeholder="Password" value="" required>
                                    </div>
                                </div>
                                <div class="form-group mt-5">
                                    <div class="d-grid">
                                        <input type="submit" name="save" class="btn btn-danger rounded-0" id="save" value="Register">
                                    </div>
                                </div>
                            </form>

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
