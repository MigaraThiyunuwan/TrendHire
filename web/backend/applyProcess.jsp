<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.classes.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String vacancyID = request.getParameter("vacancyID");
    String seekerID = request.getParameter("seekerID");
    String companyID = request.getParameter("companyID");
    
    String status = "Waiting";
    
    response.setContentType("text/html;charset=UTF-8");

    Connection connection = DBConnector.getCon();
    String query;
    query = "INSERT INTO application (vacancyID, seekerID, companyID, status) VALUES (?,?,?,?);";

    PreparedStatement statement = connection.prepareStatement(query);
    statement.setString(1, vacancyID);
    statement.setString(2, seekerID);
    statement.setString(3, companyID);
    statement.setString(4, status);
    
   
    int a = -1;
    a = statement.executeUpdate();

    if (a > 0) {
        response.sendRedirect("../vacancies.jsp?success=1");

    }else{
         response.sendRedirect("../vacancies.jsp?success=0");
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
