

<%@page import="java.io.IOException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.classes.company"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.classes.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.classes.MD5"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username = request.getParameter("username");
    String password = MD5.getMd5(request.getParameter("password"));
    response.setContentType("text/html;charset=UTF-8");
    try {
        Connection connection = DBConnector.getCon();
        String query;
        query = "SELECT * FROM company WHERE companyUsername = ?;";
        try {
            PreparedStatement statement = connection.prepareStatement(query);

            statement.setString(1, username);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {

                String dbpassword = resultSet.getString("companyPassword");
                if (dbpassword.equals(password)) {
                    String dbcompanyId = resultSet.getString("companyID");
                    String dbName = resultSet.getString("companyName");
                    String dbAddress = resultSet.getString("companyAddress");
                    String dbCategory = resultSet.getString("companyCategory");
                    String dbWeb = resultSet.getString("companyWeb");
                    String dbEmail = resultSet.getString("companyEmail");
                    String dbEmployee = resultSet.getString("companyEmployee");
                    String dbUsername = resultSet.getString("companyUsername");
                    String dbPic = resultSet.getString("companyPic");
                    String dbAbout = resultSet.getString("companyAbout");
                    company company = new company(dbcompanyId, dbName, dbAddress, dbCategory, dbWeb, dbEmail, dbEmployee, dbUsername, dbPic, dbAbout);
                    company.setCompanyPicture(dbPic);
                    if (company != null) {
                        //  HttpSession session = request.getSession();
                        session.setAttribute("company", company);
                        response.sendRedirect("../index.jsp");
                    }
                    return;
                } else {
                    response.sendRedirect("../companyLogin.jsp?error=1");

                }
            } else {
                response.sendRedirect("../companyLogin.jsp?error=1");

            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    } catch (SQLException e) {
        e.printStackTrace();
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
