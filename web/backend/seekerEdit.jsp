<%@page import="java.sql.SQLException"%>
<%@page import="com.classes.seeker"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.classes.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%

    String id = request.getParameter("seekerID");
    String fname = request.getParameter("firstname");
    String lname = request.getParameter("lastname");
    String uname = request.getParameter("username");
    String phone = request.getParameter("number");
    String address = request.getParameter("address");
    String email = request.getParameter("email");
    String about = request.getParameter("aboutme");

    response.setContentType("text/html;charset=UTF-8");

    try {
        Connection connection = DBConnector.getCon();
      
        String query = "UPDATE seeker SET seekerFName = ?, seekerLName = ?, seekerEmail = ?, seekerPhone = ?, seekerUName = ?, seekerAddress = ?, seekerAbout = ? WHERE seekerID = ?";

        PreparedStatement statement = connection.prepareStatement(query);
        statement.setString(1, fname);
        statement.setString(2, lname);
        statement.setString(3, email);
        statement.setString(4, phone);
        statement.setString(5, uname);
        statement.setString(6, address);
        statement.setString(7, about);
        statement.setString(8, id);

        int a = statement.executeUpdate();

        if (a > 0) {
            
            seeker seeker = (seeker) session.getAttribute("seeker");
            
            seeker updatedSeeker = new seeker(id, fname, lname, uname, phone, address, email, about);
            updatedSeeker.setProfilePath(seeker.getProfilePath());
            session.setAttribute("seeker", updatedSeeker);
            response.sendRedirect("../userprofile.jsp");
        } else {

            response.sendRedirect("../userprofile.jsp?error=1");
        }

    } catch (SQLException e) {
        e.printStackTrace();

    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
