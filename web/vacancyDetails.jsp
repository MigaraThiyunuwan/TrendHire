<%@page import="com.classes.seeker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.classes.company" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
    String vacancyId = request.getParameter("vacancyId");
    String title = request.getParameter("title");
    String category = request.getParameter("category");
    String location = request.getParameter("location");
    String type = request.getParameter("type");
    String salary = request.getParameter("salary");
    String description = request.getParameter("description");

    String comAddress = request.getParameter("comAddress");
    String comWeb = request.getParameter("comWeb");
    String comEmail = request.getParameter("comEmail");
    String comEmployee = request.getParameter("comEmployee");
    String comAbout = request.getParameter("comAbout");
    String comPic = request.getParameter("comPic");
    String comName = request.getParameter("comName");
    String companyID = request.getParameter("companyID");
    String modalId = "profilModal" + vacancyId;


%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vacancy Details</title>
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

                            <%  seeker seeker = (seeker) session.getAttribute("seeker");
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
                        <h1><i>"Unlocking Opportunity</i></h1>
                        <h2 class="text-red"><i>Explore the Details of Your Next Adventure"</i></h2>
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


        <nav class="topbreadcrumb">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="vacancies.jsp" style="color: black">Vacancies</a></li>
                            <li class="breadcrumb-item"><a>Vacancy Details</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        
        <section class="candidate">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-8 leftcandi">
                        <div class="row">
                            <div class="col-sm-12">
                                <h3><% out.print(category); %></h3>
                                <div class="offset-1">
                                    <div class="media py-2">
                                        <div class="company-logo">
                                            <img class="float-start me-4 mb-3" src="<% out.print(comPic); %>"  alt="Profile" style="max-width: 130px; max-height: 130px;">
                                        </div>
                                        <div class="media-body">
                                            <h4 class="text-red pb-0"><% out.print(title); %></h4>
                                            <ul class="list-unstyled muted">
                                                <li><i class="fa fa-tag" aria-hidden="true"></i> <% out.print(comName); %></li>
                                                <li><i class="fa fa-map-marker" aria-hidden="true"></i> <% out.print(comAddress); %></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <p> <% out.print(comAbout); %></p>
                                </div>
                            </div>
                        </div><!-- /. row -->

                        <div class="row">
                            <div class="col-sm-12" style="margin-bottom: 50px">
                                <h4>Job Description:-</h4>
                                <div class="offset-1">
                                    <p><% out.print(description); %></p>
                                </div>
                            </div>
                        </div><!-- /. row -->

                    </div><!-- grid column 8 -->
                    <div class="col-sm-3 rightcandi offset-md-1">
                        <div class="row">
                            <div class="col-sm-12">
                                <h6><i class="fa fa-map-marker me-2" aria-hidden="true"></i> <% out.print(location + " (" + type + ")"); %></h6>
                                <div class="border-bottom w-75"></div>
                                <p><i class="fa fa-building me-3" aria-hidden="true"></i><% out.print(comName); %></p>
                                <p><i class="fa fa-envelope me-3" aria-hidden="true"></i><% out.print(comEmail); %></p>
                                <p><i class="fa fa-globe me-3" aria-hidden="true"></i><% out.print(comWeb); %></p>
                                <p><i class="fa fa-briefcase me-3" aria-hidden="true"></i><% out.print(comEmployee + " Employees Working Here."); %></p>

                                <p><i class="fa-solid fa-money-bill me-3"></i><span class="f_rubik"><% out.print("Rs." + salary); %></span> /Month</p>
                            </div>
                        </div><!-- /. row -->

                        <div class="row pt-5">
                            <div class="col-sm-12">

                                <div class="d-grid">
                                   
                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#<%= modalId%>">
                                        Apply for Job
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <form action="./backend/applyProcess.jsp" method="post">


            <div class="modal fade shadow my-5" id="<%= modalId%>" tabindex="-1"
                 aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <%  if (seeker != null) {
                                // Display user information
                        %>

                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Apply for Job</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <input class="form-control" type="hidden" name="userID"
                                   value="<% out.print(seeker.useSeekerID()); %>">

                            <label for="formFile" class="form-label fs-5">Make sure you have uploaded the correct cv in your profile before applying for the vacancy. </label>
                            <a href="<% out.print(seeker.getCv()); %>" target="_blank">
                                <button class="btn btn-outline-danger w-25" type="button" id="inputGroupFileAddon04">View CV</button>
                            </a>


                            <div class="d-flex justify-content-cente ms-5">
                                <span class="ms-4">
                                    <img id="previewImage" src="" alt="Selected Image"
                                         style="display: none; object-fit:"
                                         class="card-img-top">
                                </span>
                            </div>


                        </div>
                        <div class="modal-footer">
                            <div class="input-group">
                                <input type="hidden" name="vacancyID" value="<% out.print(vacancyId); %>">
                                <input type="hidden" name="seekerID" value="<% out.print(seeker.useSeekerID()); %>">
                                <input type="hidden" name="companyID" value="<% out.print(companyID); %>">
                                <button class="btn btn-danger w-100" type="submit"
                                        id="inputGroupFileAddon04">Apply</button>
                            </div>
                        </div>
                        <%} else {
                        %>
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Can not Apply</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                        </div>
                        <div class="modal-body">


                            <label for="formFile" class="form-label fs-5">You need Login as Job Seeker to Apply Jobs</label>



                        </div>
                        <div class="modal-footer">
                            <div class="input-group">


                                <a href="seekerLogin.jsp"   <button class="btn btn-danger w-100" type="button"
                                                                    id="inputGroupFileAddon04">Login as Job Seeker</button>  </a>


                            </div>
                        </div>

                        <%   }

                        %> 


                    </div>
                </div>
            </div>

        </form>              







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


