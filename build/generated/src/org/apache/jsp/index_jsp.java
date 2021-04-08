package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title>Home Page</title>\r\n");
      out.write("<link\r\n");
      out.write("\thref=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css\"\r\n");
      out.write("\trel=\"stylesheet\"\r\n");
      out.write("\tintegrity=\"sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1\"\r\n");
      out.write("\tcrossorigin=\"anonymous\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-- Nav Bar -->\r\n");
      out.write("\t<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\r\n");
      out.write("\t\t<div class=\"container-fluid\">\r\n");
      out.write("\t\t\t<a class=\"navbar-brand\" href=\"index.jsp\">Home</a>\r\n");
      out.write("\t\t\t<button class=\"navbar-toggler\" type=\"button\"\r\n");
      out.write("\t\t\t\tdata-bs-toggle=\"collapse\" data-bs-target=\"#navbarNav\"\r\n");
      out.write("\t\t\t\taria-controls=\"navbarNav\" aria-expanded=\"false\"\r\n");
      out.write("\t\t\t\taria-label=\"Toggle navigation\">\r\n");
      out.write("\t\t\t\t<span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("\t\t\t</button>\r\n");
      out.write("\t\t\t<div class=\"collapse navbar-collapse\" id=\"navbarNav\">\r\n");
      out.write("\t\t\t\t<ul class=\"navbar-nav\">\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link active\"\r\n");
      out.write("\t\t\t\t\t\thref=\"pending_stocks.jsp\">Pending_stocks</a></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link active\"\r\n");
      out.write("\t\t\t\t\t\thref=\"contact.jsp\">Contact Us</a></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link active\"\r\n");
      out.write("\t\t\t\t\t\thref=\"about.jsp\" tabindex=\"-1\" aria-disabled=\"true\">About</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</nav>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<main role=\"main\">\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- Main jumbotron for a primary marketing message or call to action -->\r\n");
      out.write("\t\t<div class=\"jumbotron\">\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<h1 class=\"display-3\">Blood Bank Management System</h1>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<p>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"btn btn-primary btn-lg\" href=\"admin_login.jsp\"\r\n");
      out.write("\t\t\t\t\t\trole=\"button\">Admin</a>\r\n");
      out.write("\t\t\t\t</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</main>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"carouselExampleSlidesOnly\" class=\"carousel slide\"\r\n");
      out.write("\t\tdata-ride=\"carousel\">\r\n");
      out.write("\t\t<div class=\"carousel-inner\">\r\n");
      out.write("\t\t\t<div class=\"carousel-item active\">\r\n");
      out.write("\t\t\t\t<img src=\"img\\a.jpg\" class=\"d-block w-100\" alt=\"...\">\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<p></p>\r\n");
      out.write("\t</br>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<form onsubmit=\"return valid()\" action=\"Request\" method=\"post\" class=\"container\">\r\n");
      out.write("\t\t<h2>&nbsp; Request for blood</h2>\r\n");
      out.write("\t\t<p></p>\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<label for=\"exampleFormControlInput1\">Name</label> <input type=\"text\"\r\n");
      out.write("\t\t\t\trequired=\"required\" class=\"form-control\" name=\"name\"\r\n");
      out.write("\t\t\t\tid=\"exampleFormControlInput1\" placeholder=\"Full Name\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<p></p>\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<label for=\"exampleFormControlInput1\">Mobile</label> <input\r\n");
      out.write("\t\t\t\ttype=\"number\" class=\"form-control\" required=\"required\" name=\"mob\"\r\n");
      out.write("\t\t\t\tid=\"contact\" placeholder=\"Mobile\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<p></p>\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<label for=\"exampleFormControlInput1\">Email address</label> <input\r\n");
      out.write("\t\t\t\trequired type=\"email\" class=\"form-control\" name=\"email\"\r\n");
      out.write("\t\t\t\tid=\"exampleFormControlInput1\" placeholder=\"name@example.com\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<p></p>\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<label for=\"exampleFormControlSelect1\">Blood Group</label> <select\r\n");
      out.write("\t\t\t\tclass=\"form-control\" name=\"bloodgroup\" palceholder=\"Blood Group\" required\r\n");
      out.write("\t\t\t\tid=\"exampleFormControlSelect1\">\r\n");
      out.write("\t\t\t\t<option></option>\r\n");
      out.write("\t\t\t\t<option>A+</option>\r\n");
      out.write("\t\t\t\t<option>A-</option>\r\n");
      out.write("\t\t\t\t<option>B-</option>\r\n");
      out.write("\t\t\t\t<option>B+</option>\r\n");
      out.write("\t\t\t\t<option>AB+</option>\r\n");
      out.write("\t\t\t\t<option>Ab-</option>\r\n");
      out.write("\t\t\t\t<option>O+</option>\r\n");
      out.write("\t\t\t\t<option>O-</option>\r\n");
      out.write("\t\t\t</select>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<p></p>\r\n");
      out.write("\t\t&nbsp; &nbsp;\r\n");
      out.write("\t\t<button  type=\"submit\" class=\"btn btn-dark\">Request</button>\r\n");
      out.write("\t</form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<p></p>\r\n");
      out.write("\t</br>\r\n");
      out.write("\t<p></p>\r\n");
      out.write("\t</br>\r\n");
      out.write("\r\n");
      out.write("\t<footer></footer>\r\n");
      out.write("\t<footer class=\"container\">\r\n");
      out.write("\t\t<p>© Blood Bank Management System 2021</p>\r\n");
      out.write("\t</footer>\r\n");
      out.write("\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\tfunction valid() {\r\n");
      out.write("\t\t\tvar n = document.getElementById(\"contact\").value;\r\n");
      out.write("\t\t\tif (n.length < 10) {\r\n");
      out.write("\t\t\t\talert('mobile no is invalid');\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse return true;\r\n");
      out.write("\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
