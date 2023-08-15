<%-- 
    Document   : statusProcess
    Created on : Aug 10, 2023, 5:53:15 PM
    Author     : HP
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.classes.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
    String appplicationID = request.getParameter("appplicationID");
    String status = request.getParameter("status");
    
    response.setContentType("text/html;charset=UTF-8");

    Connection connection = DBConnector.getCon();
    String query;
    query = "UPDATE application SET status = ? WHERE appplicationID = ?;";

    PreparedStatement statement = connection.prepareStatement(query);
    statement.setString(1, status);
    statement.setString(2, appplicationID);
    
    int a = -1;
    a = statement.executeUpdate();

    if (a > 0) {
        response.sendRedirect("../companyApplication.jsp");

    }


%>

        <h1>Hello World!</h1>
    </body>
</html>
