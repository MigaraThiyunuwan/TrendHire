
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.classes.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.classes.MD5"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String firstname = request.getParameter("firstname");
            String lastName = request.getParameter("lastname");
            String email = request.getParameter("email");
            String username = request.getParameter("username");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String HashedPassword = MD5.getMd5(request.getParameter("password"));
            String PicturePath = "./images/uploads/profilePictures/default.jpg";
            String cv = "./images/uploads/cvs/default.pdf";
            response.setContentType("text/html;charset=UTF-8");

            if (firstname == null || firstname.isEmpty()) {
                response.sendRedirect("../userRegisterForm.jsp?error=1");
            }

            if (lastName == null || lastName.isEmpty()) {
                response.sendRedirect("../userRegisterForm.jsp?error=1");;
            }

            if (email == null || !email.matches("[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")) {
                response.sendRedirect("../userRegisterForm.jsp?error=1");
            }

            if (username == null || username.isEmpty()) {
                response.sendRedirect("../userRegisterForm.jsp?error=1");
            }
            
            if (phone == null || phone.isEmpty()) {
                response.sendRedirect("../userRegisterForm.jsp?error=1");
            }
            
            if (address == null || address.isEmpty()) {
                response.sendRedirect("../userRegisterForm.jsp?error=1");
            }

    

            Connection connection = DBConnector.getCon();
            String query;
            query = "INSERT INTO seeker (seekerFName, seekerLName, seekerEmail, seekerPhone, seekerUName, seekerAddress, seekerPassword, seekerImg, seekerCV) VALUES (?,?,?,?,?,?,?,?,?);";
        
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, firstname);
            statement.setString(2, lastName);
            statement.setString(3, email);
            statement.setString(4, phone);
            statement.setString(5, username);
            statement.setString(6, address);
            statement.setString(7, HashedPassword);
            statement.setString(8, PicturePath);
            statement.setString(9, cv);
            int a = -1;
            a = statement.executeUpdate();
        
            if (a > 0) {
                response.sendRedirect("../seekerLogin.jsp?success=1");
        
            }else{
                response.sendRedirect("../userRegistraterForm.jsp?success=0");
            }


      

        %>
    </body>
</html>
