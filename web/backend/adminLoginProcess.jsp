

<%@page import="com.classes.Admin"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.classes.seeker"%>
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
        query = "SELECT * FROM admin WHERE adUsername = ?;";
       try{
        PreparedStatement statement = connection.prepareStatement(query);

        statement.setString(1, username);

        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
            

            String dbpassword = resultSet.getString("adPassword");
            if (dbpassword.equals(password)) {
                
                
                String dbadminId = resultSet.getString("adminID");
                String adFirstname = resultSet.getString("adFirstname");
                String adLastname = resultSet.getString("adLastname");
                String adPhone = resultSet.getString("adPhone");
                String adAddress = resultSet.getString("adAddress");
                String adUsername = resultSet.getString("adUsername");
                String adEmail = resultSet.getString("adEmail");
                String adPicture = resultSet.getString("adPicture");
                
                Admin admin = new Admin(dbadminId, adFirstname, adLastname, adPhone, adAddress, adUsername, adEmail, adPicture);
               
                if (admin != null) {
                    //  HttpSession session = request.getSession();
                    session.setAttribute("admin", admin);
                    response.sendRedirect("../index.jsp");
                }
                return;
            } else {
                response.sendRedirect("../adminLogin.jsp?error=1");

            }
        }else{
            response.sendRedirect("../adminLogin.jsp?error=1");
        }
       } catch(IOException e){
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
