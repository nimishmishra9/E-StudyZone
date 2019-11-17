

<%@page import="mypack.Dbmanager"%>
<%
Dbmanager db=new Dbmanager();
int a=db.autoIncrement("id","news");
String str="insert into news values("+a+",'"+request.getParameter("msg")+"','"+db.getCurrentDate()+"')";
if(db.executeNonQuery(str)==true)
{
    out.println("<script>alert('done');window.location.href='../managenewsevent.jsp';</script>");
}
else
{
 out.println("<script>alert('sry');window.location.href='../managenewsevent.jsp';</script>");   
}
%>
