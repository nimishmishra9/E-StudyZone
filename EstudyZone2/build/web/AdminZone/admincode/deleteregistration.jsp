


<%@page import="mypack.Dbmanager"%>
<%
   Dbmanager db=new Dbmanager();
   String str="delete from estreg where email='"+request.getParameter("id")+"'";
   if(db.executeNonQuery(str)==true)
   {
       out.println("<script>alert('done');window.location.href='../manageusers.jsp';</script>");
   }
   else
   {
   out.println("<script>alert('sry');window.location.href='../manageusers.jsp';</script>");
   }
%>