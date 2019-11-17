<%@page import="mypack.Dbmanager"%>
<%
    
      String NAME=request.getParameter("name");
      String EMAIL=request.getParameter("email");
      String PASSWD=request.getParameter("password");
      String PHONENO=request.getParameter("phoneno");
      String CITY=request.getParameter("city");
      String ADDRESS=request.getParameter("address");
      String GENDER=request.getParameter("gender");
      String FNAME=request.getParameter("fname");
      String rollno=request.getParameter("rollno");
      String subject=request.getParameter("subject");
      String usertype=request.getParameter("registration");   
       Dbmanager db=new Dbmanager();
       if(usertype.equalsIgnoreCase("student"))
       {
       int a=db.autoIncrement("STID","estreg");
       String query="insert into estreg values("+a+",'"+NAME+"','"+EMAIL+"','"+PASSWD +"','"+PHONENO+"','"+ CITY  +"','"+ ADDRESS  +"','"+GENDER+"','"+FNAME+"','"+db.getCurrentDate()+"','"+rollno+"')";
       String cmd="insert into login values('"+EMAIL+"','"+PASSWD+"','"+db.getCurrentDate()+"','"+usertype+"')";
       boolean res=db.executeNonQuery(query);
        boolean res1=db.executeNonQuery(cmd);
       if(res1==true)
       { 
     out.print("<script>alert('successfull ');window.location.href='../login.jsp';</script>");
       }
       else
       {
       out.println("<script>alert('failed')</script>");
       }
       }
       else if(usertype.equalsIgnoreCase("consaltant"))
       {
         String query1="insert into consreg values('"+NAME+"','"+EMAIL+"','"+PASSWD +"','"+PHONENO+"','"+ CITY  +"','"+ ADDRESS  +"','"+GENDER+"','"+FNAME+"','"+rollno+"','"+db.getCurrentDate()+"','"+subject+"')";
       String cmd1="insert into conslogin values('"+EMAIL+"','"+PASSWD+"')";
      boolean res=db.executeNonQuery(query1);
       if(res==true)
        {
      db.executeNonQuery(cmd1);
      out.println("<script>alert('your registration is successfull in consaltant zone');window.location.href='../login.jsp';</script>");
    }
      else
     {
       out.println("<script>alert('E-mail maybe wrong registration is unsuccessfull in consalatant zone');window.location.href='../Registration.jsp';</script>");
       }
           
       }
       else
      {
      out.println("<script>alert('E-mail maybe wrong registration is unsuccessfull');window.location.href='../Registration.jsp';</script>");
      }
      
                           
%>
   