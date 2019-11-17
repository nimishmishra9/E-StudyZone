<%@page import="mypack.Dbmanager"%>
<%
String question=request.getParameter("question");
String userid=session.getAttribute("username").toString();
Dbmanager db=new Dbmanager();
int id=db.autoIncrement("qid", "qus");
String q="insert into qus values('"+id+"','"+userid+"','"+question+"','"+db.getCurrentDate()+"')";
db.executeNonQuery(q);
response.sendRedirect("../Discussion.jsp");

%>