<%@page import="mypack.Dbmanager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.Dbmanager"%>
<%
    ResultSet rs=null;
    String name="",emailaddress="";
    long contactno=0;
    String feedback=request.getParameter("feedback");
    Dbmanager dm=new Dbmanager();
   
   int id=dm.autoIncrement("id", "feedback");

    String username=session.getAttribute("username").toString();
    String query1="select name,phoneno,email from estreg where email='"+username+"'";


    rs=dm.getRecord(query1);
    if(rs.next()==true)
    {
    name=rs.getString(1);
    contactno=rs.getLong(2);
    emailaddress=rs.getString(3);
    }
    SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
    String feedbackdt=df.format(new Date());
    String query2="insert into feedback values("+id+",'"+name+"',"+contactno+",'"+emailaddress+"','"+feedback+"','"+feedbackdt+"')";
    if(dm.executeNonQuery(query2)==true)
    {
       
    out.print("<script>alert('Your Feedback is submitted');window.location.href='../Feedback.jsp';</script>");  
    }
    else
    {
    out.print("<script>alert('Database Error');window.location.href='../Feedback.jsp';</script>");
    }
%>