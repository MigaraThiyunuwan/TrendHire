<%@page import="com.classes.Admin"%>
<%@page import="com.classes.seeker"%>
<%@page import="com.classes.company"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.classes.DBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vacancies</title>
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
                        <h1><i>"Your Next Adventure Awaits,</i></h1>
                        <h2 class="text-red"> <i>Browse Exciting Vacancies Here"</i></h2>
                    </div>
                    <div class="col-sm-7 d-none d-md-block">
                        <div class="row">
                            <div class="d-flex w-100">
                                <img class="w-100" src="images/trendhireLogo.png" alt="Banner">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>  


        <section class="jobListing">
            <div class="container-fluid">
                <%    String requestMethod = request.getMethod();

                    if ("GET".equals(requestMethod)) {
                        String success = request.getParameter("success");
                        if (success != null && success.equals("1")) {
                %>
                <div class='alert alert-success alert-dismissible fade show' role='alert'>
                    Application sent Successfully!
                    <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                </div>
                <%  }
                    if (success != null && success.equals("0")) {  %>
                <div class='alert alert-danger alert-dismissible fade show' role='alert'>
                    Application sent Failed!
                    <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                </div>
                <%  }

                    }
                %>
                <div class="container-fluid d-flex w-100 justify-content-center align-items-center">
                <h3>Available <span class="text-red">Vacancies</span></h3>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="joblist_Right">
                            <div class="row ">

                                <%
                                    int currentPage = (request.getParameter("page") != null) ? Integer.parseInt(request.getParameter("page")) : 1;
                                    int recordsPerPage = 8; // Number of records to display per page

                                    Connection connection = DBConnector.getCon();
                                    PreparedStatement statement = null;
                                    ResultSet resultSet = null;

                                    try {
                                        int totalRecords = 0;
                                        int totalPages = 0;

                                        String countQuery = "SELECT COUNT(*) AS total FROM vacancy";
                                        PreparedStatement countStatement = connection.prepareStatement(countQuery);
                                        ResultSet countResultSet = countStatement.executeQuery();
                                        if (countResultSet.next()) {
                                            totalRecords = countResultSet.getInt("total");
                                        }
                                        countResultSet.close();
                                        countStatement.close();

                                        totalPages = (int) Math.ceil((double) totalRecords / recordsPerPage);

                                        int startIndex = (currentPage - 1) * recordsPerPage;
                                        String query = "SELECT * FROM vacancy ORDER BY vacancyID DESC LIMIT ?, ?";

                                        statement = connection.prepareStatement(query);
                                        statement.setInt(1, startIndex);
                                        statement.setInt(2, recordsPerPage);
                                        resultSet = statement.executeQuery();

                                        while (resultSet.next()) {
                                            String companyID = resultSet.getString("companyID");
                                            String vacancyId = resultSet.getString("vacancyID");
                                            String title = resultSet.getString("title");
                                            String category = resultSet.getString("category");
                                            String location = resultSet.getString("location");
                                            String type = resultSet.getString("type");
                                            String salary = resultSet.getString("salary");
                                            String description = resultSet.getString("description");

                                            try {
                                                Connection con = DBConnector.getCon();
                                                String sql;
                                                sql = "SELECT * FROM company WHERE companyID = ?;";

                                                PreparedStatement stmt = con.prepareStatement(sql);

                                                stmt.setString(1, companyID);

                                                ResultSet rs = stmt.executeQuery();

                                                if (rs.next()) {

                                                    String comName = rs.getString("companyName");
                                                    String comAddress = rs.getString("companyAddress");
                                                    String comCategory = rs.getString("companyCategory");
                                                    String comWeb = rs.getString("companyWeb");
                                                    String comEmail = rs.getString("companyEmail");
                                                    String comEmployee = rs.getString("companyEmployee");
                                                    String comPic = rs.getString("companyPic");
                                                    String comAbout = rs.getString("companyAbout");

                                %>

                                <div class="col-sm-3" style="margin-top: 20px;">

                                    <div class="card" >


                                        <img class="card-img-top mx-auto" src="<% out.print(comPic); %>"
                                             alt="Logo">
                                        <div class="card-body" >
                                            <h4><% out.print(title); %></h4>
                                            <p class="peraOn"><% out.print(comName); %></p>
                                            <p>A <b><% out.print(type); %></b> Job vacancy available at <b><% out.print(comName); %></b>. Click below button to view full description about the vacancy. </p>
                                            <ul class="d-flex justify-content-between list-inline mb-0">
                                                <li class="list-inline-item pt-2 ">
                                                    <i class="fa fa-map-marker me-1" aria-hidden="true"></i>
                                                    <% out.print(location); %>
                                                   
                                                </li>
                                                <li class="list-inline-item pull-right">
                                                    <form action="vacancyDetails.jsp" method="POST">
                                                        <input type="hidden" name="vacancyId" value="<%= vacancyId %>">
                                                        <input type="hidden" name="title" value="<% out.print(title); %>">
                                                        <input type="hidden" name="category" value="<% out.print(category); %>">
                                                        <input type="hidden" name="location" value="<% out.print(location); %>">
                                                        <input type="hidden" name="type" value="<% out.print(type); %>">
                                                        <input type="hidden" name="salary" value="<% out.print(salary); %>">
                                                        <input type="hidden" name="description" value="<% out.print(description); %>">

                                                        <input type="hidden" name="comAddress" value="<% out.print(comAddress); %>">
                                                        <input type="hidden" name="comWeb" value="<% out.print(comWeb); %>">
                                                        <input type="hidden" name="comEmail" value="<% out.print(comEmail); %>">
                                                        <input type="hidden" name="comEmployee" value="<% out.print(comEmployee); %>">
                                                        <input type="hidden" name="comAbout" value="<% out.print(comAbout); %>">
                                                        <input type="hidden" name="comPic" value="<% out.print(comPic); %>">
                                                        <input type="hidden" name="comName" value="<% out.print(comName); %>">
                                                        <input type="hidden" name="companyID" value="<%= companyID %>">


                                                        <button class="btn btn-outline-danger rounded-0" type="submit" >View Details</button>
                                                                                                    
                                                    </form>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>




                                <%  } else {

                                            }

                                        } catch (SQLException e) {
                                            e.printStackTrace();
                                        }

                                    }

                                %>


                            </div>
                            <div class="col-md-6" style="margin-top: 20px">
                                <nav class="d-lg-flex justify-content-lg-end dataTables_paginate paging_simple_numbers">
                                    <ul class="pagination">
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