<%@page import="mypack.Dbmanager"%>
<%
String answer=request.getParameter("answer");
String qid=request.getParameter("qid");
String userid=session.getAttribute("username").toString();
Dbmanager  db=new Dbmanager();
int id=db.autoIncrement("aid", "ans");
String q="insert into ans values('"+id+"','"+qid+"','"+userid+"','"+answer+"','"+db.getCurrentDate()+"')";
String msg=(db.executeNonQuery(q)==true)?"Answer is Posted":"Answer is not Posted";
out.print("<script>alert('"+msg+"');window.location.href='../Discussion.jsp';</script>");



%>