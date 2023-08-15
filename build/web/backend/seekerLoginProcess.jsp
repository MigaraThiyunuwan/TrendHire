

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
        query = "SELECT * FROM seeker WHERE seekerUName = ?;";
       try{
        PreparedStatement statement = connection.prepareStatement(query);

        statement.setString(1, username);

        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {

            String dbpassword = resultSet.getString("seekerPassword");
            
            if (dbpassword.equals(password)) {
                
                String dbseekerId = resultSet.getString("seekerID");
                String dbfname = resultSet.getString("seekerFName");
                String dblname = resultSet.getString("seekerLName");
                String dbemail = resultSet.getString("seekerEmail");
                String dbuname = resultSet.getString("seekerUName");
                String dbphone = resultSet.getString("seekerPhone");
                String dbaddress = resultSet.getString("seekerAddress");
                String dbabout = resultSet.getString("seekerAbout");
                String dbImg = resultSet.getString("seekerImg");
                String dbCV = resultSet.getString("seekerCV");
                
                seeker seeker = new seeker(dbseekerId, dbfname, dblname, dbuname, dbphone, dbaddress, dbemail, dbabout);
                
                seeker.setProfilePath(dbImg);
                seeker.setCv(dbCV);
                
                if (seeker != null) {
                   
                    session.setAttribute("seeker", seeker);
                    response.sendRedirect("../index.jsp");
                }
                return;
            } else {
                response.sendRedirect("../seekerLogin.jsp?error=1");

            }
        }else{
            response.sendRedirect("../seekerLogin.jsp?error=1");
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
