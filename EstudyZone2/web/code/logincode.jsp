<%-- 
    Document   : logincode.jsp
    Created on : 22 Jul, 2017, 12:31:14 PM
    Author     : user
--%>

<%@page import="mypack.Dbmanager"%>
<%@page import="java.sql.ResultSet"%>
<%
    String usertype1=request.getParameter("registration");
    
 String id=request.getParameter("userid");
       String password=request.getParameter("password");
        Dbmanager db=new Dbmanager(); 
        String query="select usertype from login where email='"+id+"' and passw='"+password+"'";
        String str="select * from adminlogin where USEREMAIL='"+id+"' and PASSWD='"+password+"'";
      String str1="select * from conslogin where EMAIL='"+id+"' and  password='"+password+"'";
        ResultSet rs=db.getRecord(query);
        ResultSet rs1=db.getRecord(str);
        ResultSet rs2=db.getRecord(str1);
     if(rs.next()==true)  
       {
         String usertype=rs.getString(1);
        if(usertype.equals("student"))
         {
         session.setAttribute("username",id);
         response.sendRedirect("../StudentZone/StudentHome.jsp");
         }
          
       }
       else if(rs1.next()==true)
      {
          session.setAttribute("admin",id);
           response.sendRedirect("../AdminZone/AdminHome.jsp");
       }
      else if(rs2.next()==true)
      {
           session.setAttribute("username",id);
           response.sendRedirect("../consaltantZone/consaltanthome.jsp");
       }
       else
       {
           out.println("sorry");
          response.sendRedirect("../login.jsp");
      }
 
%>
