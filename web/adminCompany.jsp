
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.classes.DBConnector"%>
<%@page import="com.classes.DBConnector"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Admin User</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Company</title>
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/admin.css" rel="stylesheet">
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
                        <h1>Your dream Job</h1>
                        <h2 class="text-red">Is Near to You</h2>
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
                                    <img class="card-img-top" src="images/uploads/adminPictures/default.png" alt="Profile">
                                </div>
                            </div>

                        </div>

                        <div class="proLinks">
                            <div class="d-grid mb-4">
                                <a href="adminProfile.jsp" class="btn btn-outline-danger">
                                    <i class="fa-solid fa-address-card" aria-hidden="true"></i> My Profile

                                </a>
                            </div>
                            <div class="d-grid mb-4">
                                <a href="adminUser.jsp" class="btn btn-outline-danger">
                                    <i class="fa-solid fa-address-card" aria-hidden="true"></i> User Details

                                </a>
                            </div>
                            <div class="d-grid mb-4">
                                <a href="adminCompany.jsp" class="btn btn-danger">
                                    <i class="fa-solid fa-address-card" aria-hidden="true"></i> Company Details

                                </a>
                            </div>
                            <div class="d-grid mb-4">
                                <a href="adminPost.jsp" class="btn btn-outline-danger">
                                    <i class="fa-solid fa-address-card" aria-hidden="true"></i> Vacancy Details

                                </a>
                            </div>


                        </div>
                    </div><!-- /. grid column -->
                    <div class="col-sm-9 profile_right">
                        <div class="border p-4">
                            <div class="row">
                                <div class="col-12">
                                    <div class="card">
                                        <div class="pb-5">
                                            <h3>Company Information</h3>
                                            <%    String requestMethod = request.getMethod();

                                            if ("GET".equals(requestMethod)) {
                                                String success = request.getParameter("success");
                                                if (success != null && success.equals("1")) {
                                        %>
                                        <div class='alert alert-success alert-dismissible fade show' role='alert'>
                                            Company Deleted Successfully!
                                            <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                                        </div>
                                        <%  }
                                            if (success != null && success.equals("0")) {  %>
                                        <div class='alert alert-danger alert-dismissible fade show' role='alert'>
                                            Company Delete Failed!
                                            <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                                        </div>
                                        <%  }

                                            }
                                        %>
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

                                                String countQuery = "SELECT COUNT(*) AS total FROM company";
                                                PreparedStatement countStatement = connection.prepareStatement(countQuery);
                                                ResultSet countResultSet = countStatement.executeQuery();
                                                if (countResultSet.next()) {
                                                    totalRecords = countResultSet.getInt("total");
                                                }
                                                countResultSet.close();
                                                countStatement.close();

                                                totalPages = (int) Math.ceil((double) totalRecords / recordsPerPage);

                                                int startIndex = (currentPage - 1) * recordsPerPage;
                                                String query = "SELECT * FROM company LIMIT ?, ?";
                                                statement = connection.prepareStatement(query);
                                                statement.setInt(1, startIndex);
                                                statement.setInt(2, recordsPerPage);
                                                resultSet = statement.executeQuery();

                                        %>



                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead class="thead-light">




                                                    <tr>
                                                        <th><b>Company Id</b></th>
                                                        <th scope="col"><b>Name</b></th>
                                                        <th scope="col"><b>Category</b></th>
                                                        <th scope="col"><b>Email</b></th>
                                                        <th scope="col"><b>Web</b></th>
                                                        <th scope="col"><b>Delete</b></th>
                                                    </tr>
                                                </thead>
                                                <tbody class="customtable">
                                                    <%  while (resultSet.next()) {
                                                            String companyID = resultSet.getString("companyID");
                                                            String companyName = resultSet.getString("companyName");
                                                            String companyCategory = resultSet.getString("companyCategory");
                                                            String companyEmail = resultSet.getString("companyEmail");
                                                            String companyWeb = resultSet.getString("companyWeb");
                                                            String modalId = "profilModal" + companyID;

                                                            out.println("<tr>");
                                                            out.println("<td>C00" + companyID + "</td>");
                                                            out.println("<td>" + companyName + "</td>");
                                                            out.println("<td>" + companyCategory + "</td>");
                                                            out.println("<td>" + companyEmail + "</td>");
                                                            out.println("<td>" + companyWeb + "</td>");
                                                    %>
                                                <td>
                                                   <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#<%= modalId%>">
                                                        Delete
                                                    </button>
                                                </td>
                                                
                                                <form action="./backend/delete.jsp" method="post">

                                                    <div class="modal fade shadow my-5" id="<%= modalId%>" tabindex="-1"
                                                         aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="true">
                                                        <div class="modal-dialog modal-dialog-centered">
                                                            <div class="modal-content">


                                                                <div class="modal-header">
                                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Delete Company</h1>
                                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                            aria-label="Close"></button>
                                                                </div>
                                                                <div class="modal-body">
                                                                

                                                                    <label for="formFile" class="form-label fs-5">Are you sure to delete this company?  </label>


                                                                    <input type="hidden" name="companyID" value="<% out.print(companyID); %>">

                                                                </div>
                                                                <div class="modal-footer">
                                                                    <div class="input-group">

                                                                        <button class="btn btn-danger w-100" type="submit"
                                                                                id="inputGroupFileAddon04">Delete</button>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                </form> 
                                                <%
                                                        out.println("</tr>");
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
                    </section>
                    </body>
                    </html>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
                            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
                    crossorigin="anonymous"></script>

                    <script>
                        const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
                        const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));
                    </script>
