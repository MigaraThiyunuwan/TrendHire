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
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String category = request.getParameter("category");
    String web = request.getParameter("web");
    String email = request.getParameter("email");
    String employee = request.getParameter("employee");
    String username = request.getParameter("username");
    String HashedPassword = MD5.getMd5(request.getParameter("password"));
    String PicturePath = "./images/uploads/companyPictures/default.jpg";
    response.setContentType("text/html;charset=UTF-8");

    Connection connection = DBConnector.getCon();
    String query;
    query = "INSERT INTO company (companyName, companyAddress, companyCategory, companyWeb, companyEmail, companyEmployee, companyUsername, companyPassword, companyPic) VALUES (?,?,?,?,?,?,?,?,?);";

    PreparedStatement statement = connection.prepareStatement(query);
    statement.setString(1, name);
    statement.setString(2, address);
    statement.setString(3, category);
    statement.setString(4, web);
    statement.setString(5, email);
    statement.setString(6, employee);
    statement.setString(7, username);
    statement.setString(8, HashedPassword);
    statement.setString(9, PicturePath);

    int a = -1;
    a = statement.executeUpdate();

    if (a > 0) {
        response.sendRedirect("../companyLogin.jsp?success=1");

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
