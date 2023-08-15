<%-- 
    Document   : delete
    Created on : Aug 10, 2023, 7:46:08 PM
    Author     : HP
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.classes.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String vacancyID = request.getParameter("vacancyID");
    String appplicationID = request.getParameter("appplicationID");
    String userId = request.getParameter("userId");
    String companyID = request.getParameter("companyID");
    String adminDeleteVacancy = request.getParameter("adminDeleteVacancy");
    
    

    response.setContentType("text/html;charset=UTF-8");

    if (vacancyID != null) {

        Connection connection = DBConnector.getCon();
        String query;
        query = "DELETE FROM vacancy WHERE vacancyID = ?;";

        PreparedStatement statement = connection.prepareStatement(query);
        statement.setString(1, vacancyID);

        int a = -1;
        a = statement.executeUpdate();

        if (a > 0) {
            response.sendRedirect("../companyVacancies.jsp?success=1");

        } else {
            response.sendRedirect("../companyVacancies.jsp?success=0");
        }
    }

    if (appplicationID != null) {

        Connection connection = DBConnector.getCon();
        String query;
        query = "DELETE FROM application WHERE appplicationID = ?;";

        PreparedStatement statement = connection.prepareStatement(query);
        statement.setString(1, appplicationID);

        int a = -1;
        a = statement.executeUpdate();

        if (a > 0) {
            response.sendRedirect("../userApplication.jsp?success=1");

        } else {
            response.sendRedirect("../userApplication.jsp?success=0");
        }
    }

    if (userId != null) {

        Connection connection = DBConnector.getCon();
        String query;
        query = "DELETE FROM seeker WHERE seekerID  = ?;";

        PreparedStatement statement = connection.prepareStatement(query);
        statement.setString(1, userId);

        int a = -1;
        a = statement.executeUpdate();

        if (a > 0) {
            response.sendRedirect("../adminUser.jsp?success=1");

        } else {
            response.sendRedirect("../adminUser.jsp?success=0");
        }
    }

    if (companyID != null) {

        Connection connection = DBConnector.getCon();
        String query;
        query = "DELETE FROM company WHERE companyID = ?;";

        PreparedStatement statement = connection.prepareStatement(query);
        statement.setString(1, companyID);

        int a = -1;
        a = statement.executeUpdate();

        if (a > 0) {
            response.sendRedirect("../adminCompany.jsp?success=1");

        } else {
            response.sendRedirect("../adminCompany.jsp?success=0");
        }
    }
    
if (adminDeleteVacancy != null) {

        Connection connection = DBConnector.getCon();
        String query;
        query = "DELETE FROM vacancy WHERE vacancyID = ?;";

        PreparedStatement statement = connection.prepareStatement(query);
        statement.setString(1, adminDeleteVacancy);

        int a = -1;
        a = statement.executeUpdate();

        if (a > 0) {
            response.sendRedirect("../adminPost.jsp?success=1");

        } else {
            response.sendRedirect("../adminPost.jsp?success=0");
        }
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
