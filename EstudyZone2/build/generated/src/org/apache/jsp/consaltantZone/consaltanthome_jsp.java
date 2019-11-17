package org.apache.jsp.consaltantZone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.sql.ResultSet;
import mypack.Dbmanager;

public final class consaltanthome_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

     if(session.getAttribute("username")==null)
     {
         response.sendRedirect("../login.jsp");
     }
     else
     {
             

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("       <meta charset=\"utf-8\"/>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width,intial-scale=1oooooooo\"/>\n");
      out.write("<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link href=\"css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link href=\"css/bootstrap-theme.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link href=\"css/hover-min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<script src=\"css/jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"css/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("<script>\n");
      out.write("function startTime() {\n");
      out.write("    var today = new Date();\n");
      out.write("    var h = today.getHours();\n");
      out.write("    var m = today.getMinutes();\n");
      out.write("    var s = today.getSeconds();\n");
      out.write("    m = checkTime(m);\n");
      out.write("    s = checkTime(s);\n");
      out.write("    document.getElementById('txt').innerHTML =\n");
      out.write("    h + \":\" + m + \":\" + s;\n");
      out.write("    var t = setTimeout(startTime, 500);\n");
      out.write("}\n");
      out.write("function checkTime(i) \n");
      out.write("{\n");
      out.write("    if (i < 10) {i = \"0\" + i};  // add zero in front of numbers < 10\n");
      out.write("    return i;\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("<style>\n");
      out.write("    .outer\n");
      out.write("    {\n");
      out.write("        min-height:600px;\n");
      out.write("        \n");
      out.write("    }\n");
      out.write("    .menu\n");
      out.write("    {\n");
      out.write("    .menu ul li a\n");
      out.write("    {\n");
      out.write("    text-decoration:none;\n");
      out.write("    font-size:18px;\n");
      out.write("    padding:20px;\n");
      out.write("    color:white;\n");
      out.write("\n");
      out.write("      \n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    ul li\n");
      out.write("    {\n");
      out.write("        color:white;    \n");
      out.write("      display:inline-block; \n");
      out.write("     margin-right:10px;\n");
      out.write("     margin-top:12px;\n");
      out.write("     border: 1px solid white;\n");
      out.write("     border-radius:10px 0px 10px 0px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("  \n");
      out.write("    li:hover\n");
      out.write("    {\n");
      out.write("       \n");
      out.write("         background:#0277bd;\n");
      out.write("      \n");
      out.write("    }\n");
      out.write("     \n");
      out.write("     \n");
      out.write("    }\n");
      out.write("   .menu ul li a\n");
      out.write("    {\n");
      out.write("    text-decoration:none;\n");
      out.write("    font-size:17px;\n");
      out.write("    padding:17px;\n");
      out.write("    color:white;\n");
      out.write("    font-family:cursive;\n");
      out.write("    padding-bottom:3px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    ul li\n");
      out.write("    {\n");
      out.write("        color:white;    \n");
      out.write("      display:inline-block; \n");
      out.write("     margin-right:10px;\n");
      out.write("     margin-top:12px;\n");
      out.write("     border: 1px solid white;\n");
      out.write("     border-radius:10px 0px 10px 0px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("  \n");
      out.write("    li:hover\n");
      out.write("    {\n");
      out.write("       font-family:cursive;\n");
      out.write("         background:#00796b;\n");
      out.write("      margin-left:15px;\n");
      out.write("    }\n");
      out.write("    .middle\n");
      out.write("    {\n");
      out.write("        min-height:425px;\n");
      out.write("        margin-top:5px;\n");
      out.write("      \n");
      out.write("     \n");
      out.write("    }\n");
      out.write("    .footer\n");
      out.write("    {\n");
      out.write("     min-height:150px;   \n");
      out.write("      margin-top:5px;\n");
      out.write("      background:#00bfa5;\n");
      out.write("    }\n");
      out.write("    .container1\n");
      out.write("    {\n");
      out.write("      height:50px;\n");
      out.write("      color:white;\n");
      out.write("      background:#00bfa5;\n");
      out.write("      margin-top:-15px;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"startTime()\">\n");
      out.write("    \n");
      out.write("        \n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-12\">\n");
      out.write("            <div class=\"outer\">\n");
      out.write("                <div class=\"row\">   <div class=\"header\" style=\"min-height:120px;\"> \n");
      out.write("                 <div class=\"row\">  <div class=\"col-sm-12\" >\n");
      out.write("                         <div class=\"col-sm-2\" style=\"min-height:100px;background-image:url('images/logo.png');background-size: 100% 100% ;  \"></div>\n");
      out.write("                       <div class=\"col-sm-10\" style=\"min-height:100px; background-image:url('images/banner.png');background-size: 100% 100% ;\"></div>\n");
      out.write("                     \n");
      out.write("                     </div> </div>\n");
      out.write("               </div>\n");
      out.write("                    <div class=\"container1\" >\n");
      out.write("                        \n");
      out.write("                        <div class=\" col-sm-10 name\">\n");
      out.write("                  ");

                               Dbmanager db=new Dbmanager();
                               String str1="select * from consreg where EMAIL='"+session.getAttribute("username")+"'";
                              ResultSet rs=db.getRecord(str1);
                              rs.next();
                            
      out.write("\n");
      out.write("                           \n");
      out.write("     ");
      out.write("\n");
      out.write("                 <span style=\"font-family:cursive;margin-left:10px; font-size: 30px;\">hello!!!&nbsp;&nbsp;");
      out.print(rs.getString("NAME"));
      out.write("</span>\n");
      out.write(" <span style=\"font-family:cursive;margin-left:300px; font-size: 30px;\"> welcome &nbsp;in &nbsp;");
      out.print(rs.getString("subject"));
      out.write(" &nbsp;section</span>\n");
      out.write("\n");
      out.write("                  </div><div class=\"col-sm-2 date\">\n");
      out.write("                      <div id=\"txt\" style=\"font-size:30px;margin-left:75px;margin-top:4px\"></div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                        <div class=\"menu\" > <div class=\"col-lg-12\" style=\"margin-top:5px;\">\n");
      out.write("               \n");
      out.write("              <div class=\"row\">      <div class=\"col-sm-12\" style=\"background:#00bfa5\">\n");
      out.write("                <div class=\"row\">    <ul>\n");
      out.write("                        <li class=\"hvr hvr-bounce-in\"><i><b><a href=\"consaltanthome.jsp\" >Home</a></b></i></li> \n");
      out.write("                          <li class=\"hvr hvr-bounce-in\"><i><b><a href=\"Discussion.jsp\">Discussion</a></b></i></li>\n");
      out.write("                           <li class=\"hvr hvr-bounce-in\"><i><b><a href=\"selectattendece.jsp\">upload attendence</a></b></i></li>\n");
      out.write("                            <li class=\"hvr hvr-bounce-in\"><i><b><a href=\"Feedback.jsp\">Feedback</a></b></i></li>\n");
      out.write("                             <li class=\"hvr hvr-bounce-in\"><i><b><a href=\"ManageProfile.jsp\">Manage Profile</a></b></i></li>\n");
      out.write("                              <li class=\"hvr hvr-bounce-in\"><i><b><a href=\"../StudentZone/ChangePassword.jsp\">Change Password</a></b></i></li>\n");
      out.write("                               <li class=\"hvr hvr-bounce-in\"><i><b><a href=\"logout.jsp\">logout  session</a></b></i></li>\n");
      out.write("         \n");
      out.write("                       </ul></div> \n");
      out.write("                   \n");
      out.write("                  </div></div>\n");
      out.write("                     \n");
      out.write("                </div> \n");
      out.write("                </div></div>\n");
      out.write("           <div class=\"row\">    <div class=\"row\"> <div class=\"middle\" style=\" margin-bottom:-8px;\"> \n");
      out.write("                      <div class=\"col-sm-12\" style=\"background-image:url('../images/k.jpg');   background-repeat:no-repeat;  background-size:100% 100%; background-attachment:fixed\">\n");
      out.write("                             <div class=\"row\" style=\"background:rgba(0,0,0,.7);\">\n");
      out.write("                                 <div class=\"col-sm-3\" style=\"margin-left:25px;\">\n");
      out.write("                           \n");
      out.write("                            <marquee direction=\"up\"  scrollamount=\"8\" onmouseover=\"stop();\" onmouseout=\"start();\" >\n");
      out.write("                                   <h3 class=\" hvr hvr-bounce-in \"><i><a href=\"#\" style=\"color:white; text-decoration:none;\">Notifications</a></i></h3> <br>   \n");
      out.write("                                 <h3 class=\"hvr hvr-bounce-in\"><i><a href=\"#\" style=\"color:white; text-decoration:none\">New</a ></i></h3> <br>   \n");
      out.write("                                      <h3 class=\"hvr hvr-bounce-in\"><i><a href=\"#\" style=\"color:white; text-decoration:none\">News</a></i></h3> <br>   \n");
      out.write("                                           <h3 class=\"hvr hvr-pop\"><i><a href=\"#\" style=\"color:white; text-decoration:none\">Current</a></i></h3><br>    \n");
      out.write("                                           <h3 class=\"hvr hvr-bounce-in\"><i><a href=\"#\" style=\"color:white; text-decoration:none\">E-Books</a></i></h3> <br>   \n");
      out.write("                                           <h3 class=\"hvr hvr-bounce-in\"><i><a href=\"#\" style=\"color:white; text-decoration:none\">Doubt</a></i></h3><br>   \n");
      out.write("                            </marquee>\n");
      out.write("                            </div>\n");
      out.write("                   \n");
      out.write(" <div class=\"row\">   <div class=\"col-sm-9\" style=\" min-height:425px;margin-left:-78px;font-family:cursive; \"> \n");
      out.write("        \n");
      out.write("                              <div class=\"col-sm-3\" style=\"min-height:210px;\"><center><h3 class=\"hvr hvr-bounce-in\" ><a href=\"uploadcenter.jsp\" style=\"color:white;text-decoration:none;font-size:30px;\">upload center</a></h3><br><a href=\"uploadcenter.jsp\" style=\"color:white;text-decoration:none\"><h1 class=\"hvr hvr-bounce-in\" > <span class=\"fa  fa-arrow-circle-up \" style=\"font-size:70px; color:white;\"></span></h1></a></center></div>\n");
      out.write("                              <div class=\"col-sm-3\" style=\"min-height:210px;\"><center><h3 class=\"hvr hvr-bounce-in\" ><a href=\"Discussion.jsp\" style=\"color:white;text-decoration:none;font-size:30px;\">Discussion</a></h3><br><a href=\"Discussion.jsp\" style=\"color:white;text-decoration:none\"><h1 class=\"hvr hvr-bounce-in\"> <span class=\"glyphicon glyphicon-user \" style=\"font-size:70px; color:white;\"></span></h1></a></center></div>\n");
      out.write("                                    <div class=\"col-sm-3\" style=\"min-height:210px; \"><center><h3 class=\"hvr hvr-bounce-in\" ><a href=\"attendence.jsp\" style=\"color:white;text-decoration:none;font-size:30px;\">upload Attendence</a></h3><br><a href=\"attendence.jsp\" style=\"color:white;text-decoration:none\"><h1 class=\"hvr hvr-bounce-in\"> <span class=\"glyphicon glyphicon-envelope\" style=\"font-size:70px; color:white;\"></span></h1></a></center></div>\n");
      out.write("                                    <div class=\"col-sm-3\" style=\"min-height:210px; \"><center><h3 class=\"hvr hvr-bounce-in\" ><a href=\"Feedback.jsp\" style=\"color:white;text-decoration:none;font-size:30px;\">Feedback</a></h3><br><a href=\"Feedback.jsp\" style=\"color:white;text-decoration:none\"><h1 class=\"hvr hvr-bounce-in\"> <span class=\"glyphicon glyphicon-sort-by-alphabet \" style=\"font-size:70px; color:white;\"></span></h1></a></center></div>\n");
      out.write("                                 <div class=\"col-sm-3\" style=\"min-height:210px; \"><center><h3 class=\"hvr hvr-bounce-in\" ><a href=\"ManageProfile.jsp\" style=\"color:white;text-decoration:none;font-size:30px;\">Manage Profile</a></h3><br><a href=\"ManageProfile.jsp\" style=\"color:white;text-decoration:none\"><h1 class=\"hvr hvr-bounce-in\"> <span class=\"glyphicon glyphicon-pencil \" style=\"font-size:70px; color:white;\"></span></h1></a></center></div>\n");
      out.write("                                 <div class=\"col-sm-3\" style=\"min-height:210px; \"><center><h3 class=\"hvr hvr-bounce-in\" ><a href=\"ChangePassword.jsp\" style=\"color:white;text-decoration:none;font-size:30px;\">Change password</a></h3><br><a href=\"ChangePassword.jsp\" style=\"color:white;text-decoration:none\"><h1 class=\"hvr hvr-bounce-in\"> <span class=\"glyphicon glyphicon-option-horizontal \" style=\"font-size:70px; color:white;\"></span></h1></a></center></div>\n");
      out.write("                                 <div class=\"col-sm-3\" style=\"min-height:210px; \"><center><h3 class=\"hvr hvr-bounce-in\" ><a href=\"uploadres.jsp\" style=\"color:white;text-decoration:none;font-size:30px;\">Upload Result</a></h3><br><a href=\"uploadres.jsp\" style=\"color:white;text-decoration:none\"><h1 class=\"hvr hvr-bounce-in\"> <span class=\"glyphicon glyphicon-blackboard \" style=\"font-size:70px; color:white;\"></span></h1></a></center></div>\n");
      out.write("                                 <div class=\"col-sm-3\" style=\"min-height:210px; \"><center><h3 class=\"hvr hvr-bounce-in\" ><a href=\"#\" style=\"color:white;text-decoration:none;font-size:30px;\">Add Books</a></h3><br><a href=\"#\" style=\"color:white;text-decoration:none\"><h1 class=\"hvr hvr-bounce-in\"> <span class=\"glyphicon glyphicon-education \" style=\"font-size:70px; color:white;\"></span></h1></a></center></div>\n");
      out.write("     </div>  </div></div></div></div></div>\n");
      out.write("      <div class=\"col-sm-12\"style=\"min-height:100px;margin-top:10px;  font-family: cursive;color:white\">\n");
      out.write("     \n");
      out.write("    <div class=\"col-sm-6\" style=\"min-height:50px;background:#00bfa5;\">\n");
      out.write("        <p style=\"font-size: 20px;margin-bottom: 10px\">&copy copyright 2k17 SBSSTC</P>\n");
      out.write("        <p style=\"font-size:15px\">Design & Maintain By :- </p> <br> \n");
      out.write("        <h3 style=\"margin-top:-20px; color:white\">Er Nimish Mishra </h3>\n");
      out.write("        \n");
      out.write("    \n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-6\" style=\"min-height:100px;background:#00bfa5\">\n");
      out.write("        <p style=\"margin-top:10px; margin-bottom: -10px\">S.B.S.S.T.C , PUNJAB</p>\n");
      out.write("        <br><br>  <p style=\"margin-top:-20px\">phone:-+91 8934038934</p>\n");
      out.write("        <p style=\"font-size:20px ;color:white\">Gmail:nimishmishra9@gmail.com</p>\n");
      out.write("        </div>\n");
      out.write("</div>\n");
      out.write("           </div>\n");
      out.write(" \n");
      out.write("           </div> \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        </div></div>\n");
      out.write("       </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write(" ");
    }
     
      out.write('\n');
      out.write('\n');
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
