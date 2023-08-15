<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.classes.company" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%

    company company = (company) session.getAttribute("company");

    if (company != null) {
       
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <!--        <link href="css/bootstrap.min.css" rel="stylesheet">	-->
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
                        <h1><i>"Innovating Boundaries</i></h1>
                        <h2 class="text-red"><i>Our Journey, Your Destination"</i></h2>
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

                                    <img class="card-img-top" src="<% out.print(company.getCompanyPicture()); %>" alt="Profile">


                                </div>
                            </div>

                        </div>



                        <div class="proLinks">
                            <div class="d-grid mb-4">
                                <a href="companyVacancies.jsp" class="btn btn-outline-danger">
                                    <i class="fa-solid fa-address-card" aria-hidden="true"></i> My Vacancies

                                </a> 
                            </div>
                            <div class="d-grid mb-4">
                                <a href="companyApplication.jsp" class="btn btn-outline-danger">
                                    <i class="fa-solid fa-address-card" aria-hidden="true"></i> Received Application

                                </a> 
                            </div>


                            <div class="d-grid mb-4">
                                <a href="./backend/logout.jsp" class="btn btn-outline-danger">
                                    <i class="fa fa-sign-out me-2" aria-hidden="true"></i> Logout
                                </a>
                            </div>
                        </div>
                    </div><!-- /. grid column -->

                    <div class="col-sm-9 profile_right">
                        <div class="border p-4">
                            
                            <%
                                String requestMethod = request.getMethod();

                                if ("GET".equals(requestMethod)) {
                                    
                                    String success = request.getParameter("success");
                                    if (success != null && success.equals("1")) {  %>
                            <div class='alert alert-success alert-dismissible fade show' role='alert'>
                                New Vacancy Posted Successfully!
                                <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                            </div>
                            <%  }
                                if (success != null && success.equals("0")) {  %>
                            <div class='alert alert-danger alert-dismissible fade show' role='alert'>
                                New Vacancy Posting Failed!
                                <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                            </div>
                            <%  }


                                }
                            %>
                            
                            
                            <div class="pb-5">
                                <h3>Company Information
                                    <span class="float-end fx-top">

                                        <a href="postvacancy.jsp" class="btn btn-danger">
                                            <i class="fa fa-edit me-2" aria-hidden="true"></i> Create New Vacancy
                                        </a>
                                    </span>
                                    <span class="float-end fx-top">

                                        <a href="editCompany.jsp" class="btn btn-danger">
                                            <i class="fa fa-edit me-2" aria-hidden="true"></i> Edit Information
                                        </a>
                                    </span>
                                </h3>
                            </div>

                            <div class="form-group row">	
                                <div class="col-sm-6">
                                    Name:
                                    <input type="text" name="name" id="name" class="form-control" placeholder="<% out.print(company.getCompanyName()); %>" value="" required disabled>
                                </div>
                                <div class="col-sm-6">
                                    Address:
                                    <input type="address" name="address" id="address" class="form-control" placeholder="<% out.print(company.getCompanyAddress()); %>" value="" required disabled>
                                </div>
                            </div>
                            <div class="form-group row">	
                                <div class="col-sm-6">
                                    Category:
                                    <input type="text" name="category" id="category" class="form-control" placeholder="<% out.print(company.getCompanyCategory()); %>" value="" required disabled>
                                </div>
                                <div class="col-sm-6">
                                    Web site:
                                    <input type="text" name="web" id="web" class="form-control" placeholder="<% out.print(company.getCompanyWeb()); %>" value="" required disabled>
                                </div>
                            </div>
                            <div class="form-group row">	
                                <div class="col-sm-6">
                                    No of Employees:
                                    <input type="text" name="employee" id="employee" class="form-control" placeholder="<% out.print(company.getCompanyEmployee()); %>" value="" required disabled>
                                </div>
                                <div class="col-sm-6">
                                    Email:
                                    <input type="text" name="email" id="email" class="form-control" placeholder="<% out.print(company.getCompanyEmail()); %>" value="" required disabled>
                                </div>
                            </div>
                            <div class="form-group row">	
                                <div class="col-sm-6">
                                    Username:
                                    <input type="text" name="username" id="username" class="form-control" placeholder="<% out.print(company.getCompanyUsername()); %>" value="" required disabled>
                                </div>

                            </div>

                            <div class="form-group">	
                                About:
                                <textarea class="form-control" name="about" rows="10" placeholder="<% out.print(company.getCompanyAbout()); %>" required disabled></textarea>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
crossorigin="anonymous"></script>

<%
    } else {
        response.sendRedirect("companyLogin.jsp?error=2");
    }
%>