

<%@page import="mypack.Dbmanager"%>
<%
 String oldpass=request.getParameter("oldpass");
 String newpass=request.getParameter("newpassword");
 String confirm=request.getParameter("confirmpass");
 Dbmanager  db=new Dbmanager();
 String str="update login set PASSW='"+confirm+"' where EMAIL='"+session.getAttribute("username")+"' and PASSW='"+oldpass+"'";
// out.println(str);
 if(newpass.equals(confirm)==true)
 {
     if(db.executeNonQuery(str)==true)
     {
         out.println("done");
     }
     else
     {
         out.println("sry");
     }
 }
 else
 {
     out.println("both are not match");
 }
%>
