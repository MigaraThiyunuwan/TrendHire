<%-- 
    Document   : companyRegistrationProcess
    Created on : Aug 7, 2023, 6:25:13 PM
    Author     : HP
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.classes.DBConnector"%>
<%@page import="com.classes.DBConnector"%>
<%@page import="com.classes.MD5"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String companyID = request.getParameter("companyID");
    String title = request.getParameter("title");
    String category = request.getParameter("category");
    String location = request.getParameter("location");
    String type = request.getParameter("type");
    String salary = request.getParameter("salary");
    String description = request.getParameter("description");
    
    response.setContentType("text/html;charset=UTF-8");

    Connection connection = DBConnector.getCon();
    String query;
    query = "INSERT INTO vacancy (companyID, title, category, location, type, salary, description) VALUES (?,?,?,?,?,?,?);";

    PreparedStatement statement = connection.prepareStatement(query);
    statement.setString(1, companyID);
    statement.setString(2, title);
    statement.setString(3, category);
    statement.setString(4, location);
    statement.setString(5, type);
    statement.setString(6, salary);
    statement.setString(7, description);
   

    int a = -1;
    a = statement.executeUpdate();

    if (a > 0) {
        response.sendRedirect("../companyProfile.jsp?success=1");

    }else{
         response.sendRedirect("../companyProfile.jsp?success=0");
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
