<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.classes.seeker" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%

    seeker seeker = (seeker) session.getAttribute("seeker");

    if (seeker != null) {
        // Display user information
%>
<%
    String requestMethod = request.getMethod();

    if ("GET".equals(requestMethod)) {
        String success = request.getParameter("success");
       
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="cache-control" content="no-cache">
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
                        <h1><i>"Your Space, Your Identity..</i></h1>
                        <h2 class="text-red"><i>Curate Your Profile Story"</i></h2>
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

                                    <img class="card-img-top" src="<% out.print(seeker.getProfilePath()); %>" alt="Profile">


                                </div>
                            </div>

                        </div>



                        <div class="proLinks"  >
                            <div class="d-grid mb-4">
                                <a href="userApplication.jsp" class="btn btn-outline-danger">
                                    <i class="fa-solid fa-address-card" aria-hidden="true"></i> My Applications

                                </a> 
                            </div>


                            <div class="d-grid mb-4">
                                <a href="./backend/logout.jsp" class="btn btn-outline-danger">
                                    <i class="fa fa-sign-out me-2" aria-hidden="true"></i> Logout
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-9 profile_right">
                        <div class="border p-4">

                            <div class="pb-5">
                                <h3>Personal Information </h3>

                                <%

                                    if (success != null && success.equals("1")) {  %>
                                <div class='alert alert-success alert-dismissible fade show' role='alert'>
                                    CV Upload Successfully!
                                    <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                                </div>
                                <%  }

                                    if (success != null && success.equals("0")) {  %>
                                <div class='alert alert-danger alert-dismissible fade show' role='alert'>
                                    Please Upload PDF file!
                                    <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                                </div>
                                <%  }
                                    if (success != null && success.equals("2")) {  %>
                                <div class='alert alert-success alert-dismissible fade show' role='alert'>
                                    Profile Picture Updated Successfully!
                                    <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                                </div>
                                <%  }

                                    }%>

                                <span class="float-end fx-top">

                                    <a href="edituser.jsp" class="btn btn-danger">
                                        <i class="fa fa-edit me-2" aria-hidden="true"></i> Edit
                                    </a>
                                </span>
                                <span class="float-end fx-top">


                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#applymodal">
                                        <i class="fa fa-edit me-2" aria-hidden="true"></i> Upload CV
                                    </button>
                                </span>

                            </div>




                            <form action="uploadcv" method="post" enctype="multipart/form-data">

                                <div class="modal fade shadow my-5" id="applymodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"
                                     data-bs-backdrop="true">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="exampleModalLabel">apply to this Job
                                                </h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">

                                                <input class="form-control" type="hidden" name="userID"
                                                       value="<% out.print(seeker.useSeekerID()); %>">

                                                <div class="mb-1">
                                                    <label for="formFile" class="form-label fs-5 my-2">Upload your CV
                                                        here
                                                    </label>
                                                    <input class="form-control" type="file" id="cv" name="cv">
                                                </div>

                                                <div id="pdfPreviewContainer" class="scrollable-pdf-preview"></div>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-danger w-100" value="Upload"
                                                        name="submit">Upload</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <script>
                                    // Function to preview the selected PDF and pdf file validation
                                    function previewPDF()
                                    {
                                        const fileInput = document.getElementById('cv');
                                        const pdfPreviewContainer = document.getElementById('pdfPreviewContainer');
                                        const allowedTypes = ['application/pdf'];

                                        if (fileInput.files.length > 0)
                                        {
                                            const file = fileInput.files[ 0 ];

                                            // Check if the selected file type is allowed (PDF)
                                            if (allowedTypes.includes(file.type))
                                            {
                                                const reader = new FileReader();

                                                // Load the selected file into the FileReader
                                                reader.readAsDataURL(file);

                                                // When the file is loaded, display the PDF in the container
                                                reader.onload = function (event)
                                                {
                                                    const pdfData = event.target.result;
                                                    const pdfObject = '<object data="' + pdfData + '" type="application/pdf" width="100%" height="600px"></object>';
                                                    pdfPreviewContainer.innerHTML = pdfObject;
                                                };
                                            } else
                                            {
                                                // Display an alert for invalid file type
                                                window.location = `userprofile.jsp?success=0`;

                                                // Clear the file input
                                                fileInput.value = '';
                                                // Clear the preview container
                                                pdfPreviewContainer.innerHTML = '';
                                            }
                                        } else
                                        {
                                            // Clear the preview container if no file is selected
                                            pdfPreviewContainer.innerHTML = '';
                                        }
                                    }

                                    // Attach an event listener to the file input to trigger the preview
                                    document.getElementById('cv').addEventListener('change', previewPDF);
                                </script>


                            </form>


                            <div class="form-group row">	
                                <div class="col-sm-6">
                                    First Name:
                                    <input type="text" name="firstname" id="firstName" class="form-control" placeholder="<% out.print(seeker.getFirstName()); %>" value="" required disabled>
                                </div>
                                <div class="col-sm-6">
                                    Last Name:
                                    <input type="text" name="lastname" id="lastName" class="form-control" placeholder="<% out.print(seeker.getLastName()); %>" value="" required disabled>
                                </div>
                            </div>
                            <div class="form-group row">	
                                <div class="col-sm-6">
                                    Username:
                                    <input type="text" name="username" id="username" class="form-control" placeholder="<% out.print(seeker.getUserName()); %>" value="" required disabled>
                                </div>
                                <div class="col-sm-6">
                                    Phone:
                                    <input type="text" name="number" id="number" class="form-control" placeholder="<% out.print(seeker.getPhone()); %>" value="" required disabled>
                                </div>
                            </div>
                            <div class="form-group row">	
                                <div class="col-sm-6">
                                    Address:
                                    <input type="text" name="address" id="address" class="form-control" placeholder="<% out.print(seeker.getAddress()); %>" value="" required disabled>
                                </div>
                                <div class="col-sm-6">
                                    Email:
                                    <input type="text" name="email" id="email" class="form-control" placeholder="<% out.print(seeker.getEmail()); %>" value="" required disabled>
                                </div>
                            </div>

                            <div class="form-group">	
                                About:
                                <textarea class="form-control" name="aboutme" rows="10" placeholder="<% out.print(seeker.getAbout()); %>" required disabled></textarea>
                            </div>

                            <input type="hidden" name="email" id="email" class="form-control" placeholder="<% out.print(seeker.useSeekerID()); %>" value="" required disabled>


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
<script>
                                    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
                                    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));
</script>


<%
    } else {
        response.sendRedirect("seekerLogin.jsp?error=2");
    }
%>