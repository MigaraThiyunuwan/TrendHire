/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.classes.DBConnector;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig

/**
 *
 * @author HP
 */
public class companyPictureUpdate extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet companyPictureUpdate</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet companyPictureUpdate at " + request.getContextPath() + "</h1>");
            
              try {
                // Get the uploaded image file
                Part part = request.getPart("image");

                // Get the user ID from the hidden input field
                String companyID = request.getParameter("companyID");
               

                // Extract the file extension from the submitted filename
                String fileExtension = getFileExtension(part.getSubmittedFileName());

                // Generate the new filename using the user ID and file extension
                String fileName = companyID + fileExtension;
                String dbpath = "./images/uploads/companyPictures/" + fileName;
                // Specify the directory where the uploaded image will be saved
                String uploadDirectory = "C:\\Users\\HP\\Documents\\NetBeans_8.2\\TrendHIRE\\web\\images\\uploads\\companyPictures";

                // Create the directory if it doesn't exist
                Path uploadPath = Paths.get(uploadDirectory);
                if (!Files.exists(uploadPath)) {
                    Files.createDirectories(uploadPath);
                }
                Path existingFilePath = uploadPath.resolve(fileName);
                if (Files.exists(existingFilePath)) {
                    // Delete the existing file before overwriting
                    Files.delete(existingFilePath);
                }

                // Save the image file
                try (InputStream input = part.getInputStream()) {
                    Path filePath = uploadPath.resolve(fileName);
                    Files.copy(input, filePath);
                }

                Connection connection = DBConnector.getCon();
                String query;
                query = "UPDATE company SET companyPic =? WHERE companyID = ?;";

                PreparedStatement statement = connection.prepareStatement(query);
                statement.setString(1, dbpath);
                statement.setString(2, companyID);

                int a = -1;
                a = statement.executeUpdate();

                if (a > 0) {
                
                    response.sendRedirect("companyProfile.jsp");

                }

            } catch (Exception e) {
                response.getWriter().println("Error: " + e.getMessage());
            }
            
            
            out.println("</body>");
            out.println("</html>");
        }
    }
     private String getFileExtension(String fileName) {
        int dotIndex = fileName.lastIndexOf('.');
        if (dotIndex > 0 && dotIndex < fileName.length() - 1) {
            return fileName.substring(dotIndex);
        }
        return "";
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
