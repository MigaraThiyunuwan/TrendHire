package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class seekerLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/stylesheet.css\">\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\t\n");
      out.write("        <script src=\"https://kit.fontawesome.com/0008de2df6.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header id=\"header\">\n");
      out.write("\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light\">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("\n");
      out.write("                    <a class=\"navbar-brand\" href=\"home.html\">\n");
      out.write("                        <!-- <img src=\"images/trendhireLogo.png\" class=\"w-100 main-logo\" alt=\"Logo\" title=\"Logo\">-->\n");
      out.write("                        <img src=\"images/trendhireLogo.png\" class=\"main-logo\" alt=\"Logo\" title=\"Logo\" style=\"max-width: 150px; max-height: 100px;\">\n");
      out.write("\n");
      out.write("                    </a>\n");
      out.write("\n");
      out.write("                    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                        <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                    </button>\n");
      out.write("\n");
      out.write("                    <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                        <ul class=\"navbar-nav navbar-center m-auto\">\n");
      out.write("                            <li class=\"nav-item active\">\n");
      out.write("                                <a class=\"nav-link\" href=\"home.html\">Home </a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"categories.html\">Categories</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"about-us.html\">About Us</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item drop-down\">\n");
      out.write("                                <a href=\"#\" class=\"dropdown-toggle nav-link\" data-bs-toggle=\"dropdown\">Pages</a>\n");
      out.write("\n");
      out.write("                                <div class=\"mega-menu fadeIn animated dropdown-menu\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-sm-3 border-right\">\n");
      out.write("                                            <ul class=\"list-unstyled\">\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"company-register.html\">Company Register</a></li>\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"employer-login.html\">Employer Login</a></li>\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"company-listing.html\">Company Listing</a></li>\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"company-details.html\">Company Details</a></li>\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"post-job.html\">Post Job</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-sm-3 border-right\">\n");
      out.write("                                            <ul class=\"list-unstyled\">\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"job-listing.html\">Job Listing</a></li>\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"job-details.html\">Job Details</a></li>\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"candidate-listing.html\">Candidate Listing</a></li>\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"candidate-details.html\">Candidate Details</a></li>\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"profile.html\">Profile</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-sm-3 border-right\">\n");
      out.write("                                            <ul class=\"list-unstyled\">\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"pricing.html\">Pricing</a></li>\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"register.html\">Register</a></li>\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"forgot-password.html\">Forgot Password</a></li>\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"login.html\">Login</a></li>\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"faq.html\">Faq</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-sm-3\">\n");
      out.write("                                            <ul class=\"list-unstyled\">\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"blog.html\">Blog </a></li>\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"blog-detail.html\">Blog Detail </a></li>\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"coming-soon.html\">Coming Soon</a></li>\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"not-found.html\">Not Found</a></li>\n");
      out.write("                                                <li><a class=\"dropdown-item\" href=\"term-conditions.html\">Term Conditions</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"contact-us.html\">Contact</a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("\n");
      out.write("                        <ul class=\"navbar-nav navbar-right\">\n");
      out.write("                            <li><a class=\"btn btn-link me-2\" href=\"profile.html\">\n");
      out.write("                                    <i class=\"fa-solid fa-upload me-2\"></i>Upload Resume\n");
      out.write("                                </a></li>\n");
      out.write("                            <li><a class=\"btn btn-danger\" href=\"register.html\">Sign Up</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        <section class=\"nearJob\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-5 nearcol\">\n");
      out.write("                        <h1>Your dream Job</h1>\n");
      out.write("                        <h2 class=\"text-red\">Is Near to You</h2>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-7 d-none d-md-block\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"d-flex w-100\">\n");
      out.write("                                <img class=\"w-100\" src=\"images/trendhireLogo.png\" alt=\"Banner\" />\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <section class=\"loginForm\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-6 mx-auto\">\t\n");
      out.write("                        <form action=\"./backend/seekerLoginProcess.jsp\" method=\"post\">\n");
      out.write("                            <h3 class=\"text-center\">LOGIN</h3>\n");
      out.write("                            <div class=\"latestForm\">\n");
      out.write("                                <!-- user input -->\n");
      out.write("                                <div class=\"form-group\"> \n");
      out.write("                                    <input type=\"text\" name=\"username\" id=\"userName\" class=\"form-control\" value=\"\" required> \n");
      out.write("                                    <label class=\"form-control-placeholder\" for=\"userName\">Username</label>\n");
      out.write("                                    <i class=\"fa fa-user iconSet\" aria-hidden=\"true\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- password input -->\n");
      out.write("                                <div class=\"form-group\"> \n");
      out.write("                                    <input type=\"password\" name=\"password\" id=\"password\" class=\"form-control\" value=\"\" required> \n");
      out.write("                                    <label class=\"form-control-placeholder\" for=\"password\">Password</label> \n");
      out.write("                                    <i class=\"fa fa-lock iconSet\" aria-hidden=\"true\"></i>\n");
      out.write("                                </div> \n");
      out.write("                            </div> \n");
      out.write("                            <!-- /. latestForm -->\n");
      out.write("                            <!-- 2 column grid layout for inline styling -->\n");
      out.write("                            <div class=\"row my-4\">\n");
      out.write("                                <div class=\"col d-flex justify-content-left\">\n");
      out.write("                                    <a class=\"forgotPwd\" href=\"forgot-password.html\">Forgot password?</a>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <!-- Submit button -->\n");
      out.write("                            <div class=\"d-grid\">\n");
      out.write("                                <input type=\"submit\" name=\"submit\" class=\"btn btn-danger\" id=\"login\" value=\"LOGIN\">\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </form>\t\n");
      out.write("\n");
      out.write("                        ");

                            String requestMethod = request.getMethod();

                            if ("GET".equals(requestMethod)) {
                                String error = request.getParameter("error");
                                if (error != null && error.equals("1")) {  
      out.write("\n");
      out.write("                        <div class='alert alert-danger alert-dismissible fade show' role='alert'>\n");
      out.write("                            Your Email or Password Incorrect!\n");
      out.write("                            <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>\n");
      out.write("                        </div>\n");
      out.write("                        ");
  }
                                if (error != null && error.equals("2")) {  
      out.write("\n");
      out.write("                        <div class='alert alert-danger alert-dismissible fade show' role='alert'>\n");
      out.write("                            You need to login to view profile!\n");
      out.write("                            <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>\n");
      out.write("                        </div>\n");
      out.write("                        ");
  }

                            }
                        
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <footer id=\"footer\">\n");
      out.write("\n");
      out.write("            <div class=\"container-fluid\" >\n");
      out.write("                <div class=\"row\" >\n");
      out.write("                    <div class=\"col-sm-3\" style=\"margin-top: 20px;\">\n");
      out.write("                        <a href=\"index.jsp\">\n");
      out.write("                            <img src=\"images/trendhireLogo.png\" alt=\"Logo\" title=\"Logo\">\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"footer_inner\">\n");
      out.write("                            <p class=\"w-90\">\"Welcome to TrendHire, your gateway to career opportunities. Explore, apply, and \n");
      out.write("                                connect with your dream jobs effortlessly. Join us today and shape your future!\" \n");
      out.write("                            </p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-2 mx-auto\" style=\"margin-top: 20px;\">\n");
      out.write("                        <h5>Usefull Links</h5>\n");
      out.write("                        <div class=\"footer_inner\">\n");
      out.write("                            <ul class=\"list-unstyled\">\n");
      out.write("                                <li><a href=\"about-us.html\">About Us</a></li>\n");
      out.write("                                <li><a href=\"contact-us.html\">Contact Us</a></li>\n");
      out.write("                                <li><a href=\"javascript:void(0);\">Services</a></li>\n");
      out.write("                                <li><a href=\"javascript:void(0);\">News & Blog </a></li>\n");
      out.write("                                <li><a href=\"javascript:void(0);\">Our features</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-3\" style=\"margin-top: 20px;\">\n");
      out.write("                        <h5>Contact Us</h5>\n");
      out.write("                        <div class=\"footer_inner\">\n");
      out.write("                            <div class=\"d-flex media\">\n");
      out.write("                                <i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>\n");
      out.write("                                <div class=\"media-body\"><p> <span class=\"f_rubik\">456,</span> tredy Road, New york <br> USA, MD <span class=\"f_rubik\">210093</span> </p></div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"d-flex media\">\n");
      out.write("                                <i class=\"fa-regular fa-envelope\"></i>\n");
      out.write("                                <div class=\"media-body\"><p>hr@gmail.com</p></div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"d-flex media\">\n");
      out.write("                                <i class=\"fa fa-phone\" aria-hidden=\"true\"></i>\n");
      out.write("                                <div class=\"media-body\"><p class=\"f_rubik\">+61-5869259325</p></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-3\" style=\"margin-top: 20px;\">\n");
      out.write("                        <h5>Get In Touch</h5>\n");
      out.write("                        <div class=\"footer_inner\">\n");
      out.write("                            <a href=\"index.jsp\">\n");
      out.write("                                <!--                            <img src=\"images/trendhireLogo.png\" alt=\"Logo\" title=\"Logo\">-->\n");
      out.write("                                <img src=\"images/trendhireLogo.png\" class=\"w-100 main-logo\" alt=\"Logo\" title=\"Logo\">\n");
      out.write("                            </a>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
