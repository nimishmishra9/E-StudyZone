<%-- 
    Document   : logincode.jsp
    Created on : 22 Jul, 2017, 12:31:14 PM
    Author     : user
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.Dbmanager"%>
<%
 String id=request.getParameter("id");
       String password=request.getParameter("password");
        Dbmanager db=new Dbmanager();
        String query="select * from admin where adminid='"+id+"' and password='"+password+"'";
        out.print(query);
        
       ResultSet rs=db.getRecord(query);
       if(rs.next())
       {
        session.setAttribute("adminid", id);
        response.sendRedirect("../AdminZone/welcome.jsp");
       }
       else
       {
          response.sendRedirect("../adminlogin.jsp");
       }
 
%>
