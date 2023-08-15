<%@page import="com.classes.company"%>
<%@page import="java.sql.SQLException"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.classes.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
 <%

            String companyID = request.getParameter("companyID");
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String category = request.getParameter("category");
            String web = request.getParameter("web");
            String employee = request.getParameter("employee");
            String email = request.getParameter("email");
            String username = request.getParameter("username");
            String about = request.getParameter("about");
            String companyFile = request.getParameter("companyFile");

            response.setContentType("text/html;charset=UTF-8");

            try {

                Connection connection = DBConnector.getCon();
     
                String query = "UPDATE company SET companyName = ?, companyAddress = ?, companyCategory = ?, companyWeb = ?, companyEmail = ?, companyEmployee = ?, companyUsername = ?, companyAbout = ? WHERE companyID  = ?";

                PreparedStatement statement = connection.prepareStatement(query);
                statement.setString(1, name);
                statement.setString(2, address);
                statement.setString(3, category);
                statement.setString(4, web);
                statement.setString(5, email);
                statement.setString(6, employee);
                statement.setString(7, username);
                statement.setString(8, about);
                statement.setString(9, companyID);

                int a = statement.executeUpdate();

                if (a > 0) {
                    out.println(companyFile + "\n");
                  
                    company updatedCompany = new company(companyID, name, address, category, web, email, employee, username, companyFile, about);
                    
                    session.setAttribute("company", updatedCompany);
                    response.sendRedirect("../companyProfile.jsp");
                } else {
                    out.println(companyFile + "\n");
                    response.sendRedirect("../companyProfile.jsp?error=1");
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
