package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Cloud_005flogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>A Novel Feature Matching Ranked Search</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("        <meta name=\"description\" content=\"Your page description here\" />\n");
      out.write("        <meta name=\"author\" content=\"\" />\n");
      out.write("        <!-- css -->\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/bootstrap-responsive.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/prettyPhoto.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- Theme skin -->\n");
      out.write("        <link id=\"t-colors\" href=\"color/default.css\" rel=\"stylesheet\" />\n");
      out.write("        <!-- Fav and touch icons -->\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"ico/apple-touch-icon-144-precomposed.png\" />\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"ico/apple-touch-icon-114-precomposed.png\" />\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"ico/apple-touch-icon-72-precomposed.png\" />\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" href=\"ico/apple-touch-icon-57-precomposed.png\" />\n");
      out.write("        <link rel=\"shortcut icon\" href=\"ico/favicon.png\" />\n");
      out.write("    </head>\n");
      out.write("    ");

        if (request.getParameter("Failed") != null) {
    
      out.write("\n");
      out.write("    <script>alert('Login Failed');</script>\n");
      out.write("    ");
            }
    
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("            <!-- start header -->\n");
      out.write("            <header>\n");
      out.write("                <div class=\"top\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row nomargin\">\n");
      out.write("                        <div class=\"span4\">\n");
      out.write("                            <div class=\"logo\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"span8\">\n");
      out.write("                            <div class=\"navbar navbar-static-top\">\n");
      out.write("                                <div class=\"navigation\">\n");
      out.write("                                    <nav>\n");
      out.write("                                        <ul class=\"nav topnav\">\n");
      out.write("                                            <li>\n");
      out.write("                                                <a href=\"index.html\">Home</a>\n");
      out.write("                                            </li>\n");
      out.write("                                            <li>\n");
      out.write("                                                <a href=\"DO_login.jsp\">Data Owner</a>\n");
      out.write("                                            </li>\n");
      out.write("                                            <li>\n");
      out.write("                                                <a href=\"DU_login.jsp\">Data User</a>\n");
      out.write("                                            </li>\n");
      out.write("                                            <li class=\"active\">\n");
      out.write("                                                <a href=\"Cloud_login.jsp\">Cloud</a>\n");
      out.write("                                            </li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </nav>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- end navigation -->\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </header>\n");
      out.write("            <section id=\"intro\">\n");
      out.write("                <div class=\"intro-content\">\n");
      out.write("                    <h2>A Novel Feature Matching Ranked Search<br>\n");
      out.write("                        Mechanism Over Encrypted Cloud Data</h2>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <section id=\"content\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"aligncenter\">\n");
      out.write("                            <h3>Cloud Server Login</h3><br><br>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"span6\">\n");
      out.write("                            <img src=\"img/cloud_login.jpg\" />\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"span6\">\n");
      out.write("                            <form id=\"contactform\" action=\"cloud\" method=\"post\" class=\"contactForm\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"span6 margintop10 field form-group\">\n");
      out.write("                                        <label>Email ID :</label>\n");
      out.write("                                        <input type=\"text\" name=\"name\" placeholder=\"Enter Your Email ID\" required=\"required\" /><br>\n");
      out.write("                                    </div><br>\n");
      out.write("                                    <div class=\"span6 margintop10 field form-group\">\n");
      out.write("                                        <label>Password :</label>\n");
      out.write("                                        <input type=\"password\" name=\"pass\" placeholder=\"Enter Your Password\" required=\"required\" /><br>\n");
      out.write("                                    </div><br>\n");
      out.write("                                    <div class=\"span6 margintop10 field form-group\">\n");
      out.write("                                        <button class=\"btn btn-success btn-large margintop10\" type=\"submit\">Login</button>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\t\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <div id=\"sub-footer\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <center> <p>&copy; 2021</p></center>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <a href=\"#\" class=\"scrollup\"><i class=\"icon-angle-up icon-rounded icon-bglight icon-2x\"></i></a>\n");
      out.write("        <!-- javascript\n");
      out.write("          ================================================== -->\n");
      out.write("        <!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("        <script src=\"js/jquery.js\"></script>\n");
      out.write("        <script src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.js\"></script>\n");
      out.write("        <script src=\"js/modernizr.custom.js\"></script>\n");
      out.write("        <script src=\"js/toucheffects.js\"></script>\n");
      out.write("        <script src=\"js/google-code-prettify/prettify.js\"></script>\n");
      out.write("        <script src=\"js/jquery.prettyPhoto.js\"></script>\n");
      out.write("        <script src=\"js/portfolio/jquery.quicksand.js\"></script>\n");
      out.write("        <script src=\"js/portfolio/setting.js\"></script>\n");
      out.write("        <script src=\"js/animate.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Template Custom JavaScript File -->\n");
      out.write("        <script src=\"js/custom.js\"></script>\n");
      out.write("    </body>\n");
      out.write("\n");
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
