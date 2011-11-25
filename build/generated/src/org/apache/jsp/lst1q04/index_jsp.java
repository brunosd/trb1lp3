package org.apache.jsp.lst1q04;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(2);
    _jspx_dependants.add("/lst1q04/../cabecalho.jsp");
    _jspx_dependants.add("/lst1q04/../rodape.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      out.write("        <title>Exercicio 3</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/css.css\" />\n");
      out.write("    </head>\n");
      out.write("        <body>\n");
      out.write("<center>\n");
      out.write("<div class=\"geral\">\n");
      out.write("<div class=\"top\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<h1>Primeiro Trabalho LP3</h1>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<div class=\"left\">\n");
      out.write("    <div class=\"menu\">\n");
      out.write("\n");
      out.write("<ul>\n");
      out.write("    <li><a href=\"../index.jsp\">Home</a></li>\n");
      out.write("</ul>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<div class=\"right\"></div>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Exercício 04</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"manipuladados.jsp\" method=\"get\">\n");
      out.write("            <dl>\n");
      out.write("                <dt>\n");
      out.write("                    <label for=\"N1\">Num1:</label>\n");
      out.write("                </dt>\n");
      out.write("                <dd>\n");
      out.write("                    <input type=\"number\" name=\"N1\" size=\"50\" placeholder=\"Ex: 4\"/>\n");
      out.write("                </dd>\n");
      out.write("                <dt>\n");
      out.write("                    <label for=\"N2\">Num2:</label>\n");
      out.write("                </dt>\n");
      out.write("                <dd>\n");
      out.write("                    <input type=\"number\" name=\"N2\" size=\"50\" placeholder=\"Ex: 15\"/>\n");
      out.write("                </dd>\n");
      out.write("                <dt>\n");
      out.write("                    <label for=\"D\">D:</label>\n");
      out.write("                </dt>\n");
      out.write("                <dd>\n");
      out.write("                    <input type=\"number\" name=\"D\"  size=\"50\" placeholder=\"Ex: 3\"/>\n");
      out.write("                </dd>\n");
      out.write("                <dt>\n");
      out.write("                    <input type=\"submit\" name=\"Enviar\" />\n");
      out.write("                </dt>\n");
      out.write("            </dl>\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    \n");
      out.write("\n");
      out.write("<div class=\"rodape\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<p>Integrantes:<br/> \n");
      out.write("Bruno Ramos e Eveline Almeida</p>");
      out.write("</div></div>\n");
      out.write("</center>\n");
      out.write("</body>\n");
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
