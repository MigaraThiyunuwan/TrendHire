<%@page import="java.sql.SQLException"%>
<%@page import="java.io.IOException"%>
<%@page import="com.classes.seeker"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.classes.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
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
        <title>Applications</title>
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <link href="css/admin.css" rel="stylesheet">
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
                        <h1><i>"Your dream Employee</i></h1>
                        <h2 class="text-red"><i>Is Near to You"</i></h2>
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
                                <a href="companyProfile.jsp" class="btn btn-outline-danger">
                                    <i class="fa fa-user me-2" aria-hidden="true"></i> Profile
                                </a>
                            </div>
                            <div class="d-grid mb-4">
                                <a href="companyVacancies.jsp" class="btn btn-outline-danger">
                                    <i class="fa-solid fa-address-card" aria-hidden="true"></i> My Vacancies

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
                            <div class="row">
                                <div class="col-12">

                                    <div class="pb-5">
                                        <h3>Received Applications</h3>
                                    </div>


                                    <%
                                        int currentPage = (request.getParameter("page") != null) ? Integer.parseInt(request.getParameter("page")) : 1;
                                        int recordsPerPage = 10; // Number of records to display per page

                                        Connection connection = DBConnector.getCon();
                                        PreparedStatement statement = null;
                                        ResultSet resultSet = null;

                                        try {
                                            int totalRecords = 0;
                                            int totalPages = 0;

                                            String countQuery = "SELECT COUNT(*) AS total FROM application WHERE companyID = ?";
                                            PreparedStatement countStatement = connection.prepareStatement(countQuery);
                                            countStatement.setString(1, company.getCompanyID());
                                            ResultSet countResultSet = countStatement.executeQuery();
                                            if (countResultSet.next()) {
                                                totalRecords = countResultSet.getInt("total");
                                            }
                                            countResultSet.close();
                                            countStatement.close();

                                            totalPages = (int) Math.ceil((double) totalRecords / recordsPerPage);

                                            int startIndex = (currentPage - 1) * recordsPerPage;
                                            String query = "SELECT * FROM application WHERE companyID = ? ORDER BY appplicationID DESC LIMIT ?, ?";
                                            statement = connection.prepareStatement(query);
                                            statement.setString(1, company.getCompanyID());
                                            statement.setInt(2, startIndex);
                                            statement.setInt(3, recordsPerPage);
                                            resultSet = statement.executeQuery();

                                    %>



                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead class="thead-light">




                                                <tr>
                                                    <th scope="col"><b>Application Id</b></th>
                                                    <th scope="col"><b>Title</b></th>
                                                    <th scope="col"><b>Category</b></th>
                                                    <th scope="col"><b>Candidate Name</b></th>
                                                    <th scope="col"><b>View Candidate's CV</b></th>
                                                    <th scope="col"><b>Accept / Reject</b></th>
                                                </tr>
                                            </thead>
                                            <tbody class="customtable">
                                                <%  while (resultSet.next()) {

                                                        String appplicationID = resultSet.getString("appplicationID");
                                                        String vacancyID = resultSet.getString("vacancyID");
                                                        String seekerID = resultSet.getString("seekerID");
                                                        String status = resultSet.getString("status");
                                                        String seekerCV = "";

                                                        String query1;
                                                        query1 = "SELECT * FROM vacancy WHERE vacancyID  = ?;";

                                                        PreparedStatement statement1 = connection.prepareStatement(query1);

                                                        statement1.setString(1, vacancyID);

                                                        ResultSet resultSet1 = statement1.executeQuery();

                                                        while (resultSet1.next()) {

                                                            String companyID = resultSet1.getString("companyID");
                                                            String title = resultSet1.getString("title");
                                                            String category = resultSet1.getString("category");

                                                            String query2;
                                                            query2 = "SELECT * FROM seeker WHERE seekerID  = ?;";

                                                            PreparedStatement statement2 = connection.prepareStatement(query2);

                                                            statement2.setString(1, seekerID);

                                                            ResultSet resultSet2 = statement2.executeQuery();

                                                            while (resultSet2.next()) {

                                                                String seekerFName = resultSet2.getString("seekerFName");
                                                                String seekerLName = resultSet2.getString("seekerLName");
                                                                String seekerEmail = resultSet2.getString("seekerEmail");
                                                                seekerCV = resultSet2.getString("seekerCV");
                                                                String seekerIMG = resultSet2.getString("seekerImg");
                                                                String modalId = "profilModal" + appplicationID;

                                                                out.println("<tr>");
                                                                out.println("<td>A00" + appplicationID + "</td>");
                                                                out.println("<td>" + title + "</td>");
                                                                out.println("<td>" + category + "</td>");
                                                                out.println("<td>");%>
                                                                
                                                            <img src="<% out.print(seekerIMG);  %>" alt="avatar" class="rounded-circle me-2 " style="width: 38px; height: 38px; object-fit: cover" />
                                                            <% out.print(seekerFName);  %>
                                                            <% out.println("</td>");
                                                            %>

                                                            <td>
                                                                <a href="<% out.print(seekerCV);  %> "target="_blank" class="btn btn-outline-primary"  name="view">View CV </a>

                                                            </td>
                                                            <td>
                                                                <% if (status.equals("Waiting")) {

                                                                %>

                                                                <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#<%= modalId%>"><% out.println(status); %></button>

                                                                <%
                                                                    }

                                                                %>

                                                                <% if (status.equals("Accepted")) {
                                                                %>

                                                                <button class="btn btn-outline-success" type="" name="edit"> <% out.println(status); %></button>

                                                                <%
                                                                    }

                                                                %>

                                                                <% if (status.equals("Rejected")) {
                                                                %>

                                                                <button class="btn btn-outline-danger" type="" name="edit"> <% out.println(status); %></button>

                                                                <%

                                                                    }

                                                                %>


                                                            </td>
                                                            <form action="./backend/statusProcess.jsp" method="post">


                                                                <div class="modal fade shadow my-5" id="<%= modalId%>" tabindex="-1"
                                                                     aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="true">
                                                                    <div class="modal-dialog modal-dialog-centered">
                                                                        <div class="modal-content">

                                                                            <div class="modal-header">
                                                                                <h1 class="modal-title fs-5" id="exampleModalLabel">Accept or Reject Application</h1>
                                                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                                        aria-label="Close"></button>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                                <div class=" d-flex flex-column align-items-center justify-content-cente ">

                                                                                    <dvi class="p-3 ">
                                                                                        <img src=" <% out.println(seekerIMG); %>" alt="avatar" class="rounded-circle me-2 " style="width: 150px; height: 150px; object-fit: cover" />
                                                                                    </dvi>


                                                                                    <h3 class="text-center m-0">
                                                                                        <% out.println(seekerFName); %> <% out.println(" " + seekerLName); %>
                                                                                    </h3>

                                                                                    <div class="d-flex justify-content-center align-items-center">

                                                                                        <p class="">
                                                                                            <% out.println(seekerEmail);%>
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="d-flex justify-content-cente ms-5">
                                                                                    <span class="ms-4">
                                                                                        <img id="previewImage" src="" alt="Selected Image"
                                                                                             style="display: none; object-fit:"
                                                                                             class="card-img-top">
                                                                                    </span>
                                                                                </div>


                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <div class="btn-group w-100 mt-2" role="group" aria-label="Basic radio toggle button group">
                                                                                    <input type="radio" class="btn-check" name="status" id="btnradio1<%= modalId%>" autocomplete="off" value="Accepted">
                                                                                    <label class="btn btn-outline-success" for="btnradio1<%= modalId%>">Accept</label>

                                                                                    <input type="radio" class="btn-check" name="status" id="btnradio2<%= modalId%>" autocomplete="off" value="Rejected">
                                                                                    <label class="btn btn-outline-danger" for="btnradio2<%= modalId%>">Reject</label>
                                                                                </div>
                                                                                <div class="input-group">
                                                                                    <input type="hidden" name="appplicationID" value="<% out.print(appplicationID); %>">
                                                                                    <button class="btn btn-outline-primary w-100" type="submit" id="inputGroupFileAddon04">Confirm</button>
                                                                                </div>
                                                                            </div>




                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </form> 




                                                            <%
                                                                    }

                                                                }


                                                            %>

                                                            <%                                                    out.println("</tr>");

                                                                }
                                                            %>



                                                            </tbody>
                                                        </table>







                                        <div class="row">
                                            <div class="col-md-6 align-self-center">
                                                <p id="dataTable_info" class="dataTables_info" role="status" aria-live="polite">
                                                    Showing <%= Math.min(totalRecords, startIndex + 1)%> to <%= Math.min(totalRecords, startIndex + recordsPerPage)%> of <%= totalRecords%>
                                                </p>
                                            </div>

                                            <div class="col-md-6">
                                                <nav class="d-lg-flex justify-content-lg-end dataTables_paginate paging_simple_numbers">
                                                    <ul class="pagination" >
                                                        <% if (startIndex > 0) {%>
                                                        <li class="page-item"><a class="page-link" href="?page=<%= currentPage - 1%>">Previous</a></li>
                                                            <% } else { %>
                                                        <li class="page-item disabled"><span class="page-link">Previous</span></li>
                                                            <% } %>

                                                        <% for (int i = 1; i <= totalPages; i++) {%>
                                                        <li class="page-item <%= (currentPage == i) ? "active" : ""%>">
                                                            <a class="page-link" href="?page=<%= i%>"><%= i%></a>
                                                        </li>
                                                        <% } %>

                                                        <% if (startIndex < (totalPages - 1) * recordsPerPage) {%>
                                                        <li class="page-item"><a class="page-link" href="?page=<%= currentPage + 1%>">Next</a></li>
                                                            <% } else { %>
                                                        <li class="page-item disabled"><span class="page-link">Next</span></li>
                                                            <% } %>
                                                    </ul>
                                                </nav>
                                            </div>
                                        </div>

                                        <%
                                            } catch (SQLException ex) {
                                                ex.printStackTrace();
                                            } finally {
                                                if (resultSet != null) {
                                                    resultSet.close();
                                                }
                                                if (statement != null) {
                                                    statement.close();
                                                }
                                                if (connection != null) {
                                                    connection.close();
                                                }
                                            }
                                        %>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
crossorigin="anonymous"></script>

<script>
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));
</script>

<%
    } else {
        response.sendRedirect("companyLogin.jsp?error=2");
    }
%>