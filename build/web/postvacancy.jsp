<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.classes.company" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%

    company company = (company) session.getAttribute("company");

    if (company != null) {
        // Display user information
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post New Vacancy</title>
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

        <div class="container-fluid">
            <div class="row" >
                <div class="d-flex w-100 justify-content-center align-items-center">
                    <img class="w-80" src="images/trendhireLogo.png" alt="Banner" />
                </div>
            </div>
        </div>


        <section class="stillGot">
            <div class="container-fluid">
                <div class="row text-center">
                    <div class="col-sm-12 mx-auto">
                        <h2>Post Your <span class="text-red"> New Vacancy</span></h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <form action="./backend/postVacancyProcess.jsp" method="post">
                            <div class="row" style="margin: 10px">
                                <div class="col-sm-12 form-group" >
                                    <input type="text" name="title" id="title" class="form-control" placeholder="Vacancy Title" value="" required>
                                </div>
                            </div>
                            <div class="row" style="margin: 10px">
                                <div class="col-sm-6 dropdown-container form-group position-relative" >
                                    <select name="category" id="job_cate" class="form-control">
                                        <option value="N/A">Job Category</option>
                                        <option value="Management and Leadership">Management and Leadership</option>
                                        <option value="Human Resources">Human Resources</option>
                                        <option value="Finance and Accounting">Finance and Accounting</option>
                                        <option value="Marketing and Sales">Marketing and Sales</option>
                                        <option value="Information Technology (IT)">Information Technology (IT)</option>
                                        <option value="Operations and Logistics">Operations and Logistics</option>
                                        <option value="Customer Service">Customer Service</option>
                                        <option value="Research and Development (R&D)">Research and Development (R&D)</option>
                                        <option value="Legal and Compliance">Legal and Compliance</option>
                                        <option value="Creative and Design">Creative and Design</option>
                                        <option value="Other">Other</option>

                                    </select>
                                </div>
                                <div class="col-sm-6 form-group">
                                    <input type="text" name="location" id="location" class="form-control" placeholder="Location" value="" required>
                                </div>
                            </div>
                            <div class="row" style="margin: 10px">
                                <div class="col-sm-6 form-group dropdown-container position-relative">
                                    <select name="type" id="type" class="form-control">
                                        <option value="N/A">Job Type</option>
                                        <option value="Full Time">Full Time</option>
                                        <option value="Part Time">Part Time</option>
                                    </select>
                                </div>
                                <div class="col-sm-6 form-group">
                                    <input type="text" name="salary" id="salary" class="form-control" placeholder="Monthly Salary Rs." value="" required>
                                </div>
                            </div>

                            <div class="row" style="margin: 10px">
                                <div class="col-sm-12 form-group">
                                    <textarea class="form-control" name="description" rows="12" placeholder="Job Descriptions" required></textarea>
                                </div>
                            </div>
                            <div class="row pt-4" style="margin: 10px">
                                <div class="col-sm-12 form-group">
                                    <div class="d-grid" style="margin-bottom: 100px">
                                        <button type="submit" name="submit" class="btn btn-danger btn-block" id="post">Create Post</button>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" name="companyID" id="companyID" class="form-control" placeholder="<% out.print(company.getCompanyID()); %>" value="<% out.print(company.getCompanyID()); %>" required>
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


<%
    } else {
        response.sendRedirect("companyLogin.jsp?error=2");
    }
%>