<%@page import="mypack.SmsSender"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.Dbmanager"%>
<%
      String mst1=request.getParameter("mst1");
        String mst2=request.getParameter("mst2");
           String finalm=request.getParameter("final");
       String rollno=request.getParameter("rollno");
       String email=request.getParameter("email");
         Dbmanager db=new Dbmanager();
         
 String str="select subject from consreg where EMAIL='"+session.getAttribute("username")+"'";
      ResultSet rs=db.getRecord(str); 
   String fn=null;
        String psw=null;
      String subject=null;
      String sn=null;
   
  while(rs.next())
{ 
subject=rs.getString("subject");
}
  String id="nll";
 String str1="select * from estreg ";
     
 String str2="select max(stid) from estreg";
   ResultSet rs2=db.getRecord(str2);
  ResultSet rs1=db.getRecord(str1);
   
while(rs1.next())
{ 
 
sn = rs1.getString("name");
psw = rs1.getString("phoneno");
fn = rs1.getString("FNAME");
}
 
     if(subject.equalsIgnoreCase("java"))
              {    
    String query="insert into javam values('"+mst1+"','"+mst2+"','"+finalm+"','"+rollno+"','"+email+"')";
          boolean res=db.executeNonQuery(query);

          if(res==true)
       { 
         
             SmsSender sm=new SmsSender();
                sm.SendSms(psw,"Hello! your chiled is failed in the mst-1 please take care on him/her");
              
     out.print("<script>alert('successfull in java');window.location.href='../uploadres.jsp';</script>");
       }
       else
       {
       out.println("<script>alert('unsuccessfull 1')</script>");
       }
               }  
              
              
              
               else if(subject.equalsIgnoreCase("toc"))
              {  
                  
             
                  
    String query="insert into tocm values('"+mst1+"','"+mst2+"','"+finalm+"','"+rollno+"','"+email+"')";
                     
                   boolean res=db.executeNonQuery(query);
                    
          if(res==true)
       {
        SmsSender sm=new SmsSender();
 sm.SendSms(psw,"Hello! "+ fn +" your child "+ sn +" ji is failed in the mst-1 please take care on him/her result otherwise he/she may be re-appear or may year back.he got only 5 marks out of 24  thank you:-Nimish Mishra(team E-Study Zone)");                    
   
              
      out.print("<script>alert('successfull in toc');window.location.href='../uploadres.jsp';</script>");

   
       }
       else
       {
       out.println("<script>alert('unsuccessfull')</script>");
       }
                      }  
                
                  else if(subject.equalsIgnoreCase("dbms"))
              {                  
    String query="insert into dbmsm values('"+mst1+"','"+mst2+"','"+finalm+"','"+rollno+"','"+email+"')";
          boolean res=db.executeNonQuery(query);
          if(res==true)
       {
       
       out.print("<script>alert('successfull in dbms');window.location.href='../uploadres.jsp';</script>");

   
       }
       else
       {
       out.println("<script>alert('unsuccessfull')</script>");
       }
              }  
              
                  else if(subject.equalsIgnoreCase("cntwo"))
              {                  
    String query="insert into CNtwo values('"+mst1+"','"+mst2+"','"+finalm+"','"+rollno+"','"+email+"')";
          boolean res=db.executeNonQuery(query);
          if(res==true)
       {
           
                   
            SmsSender sm=new SmsSender();
  sm.SendSms(psw,"Hello! "+ fn +" your child "+ sn +" is failed in the mst-1 please take care on him/her result otherwise he/she may be re-appeear or may get year back.he got only 5 marks out of 24  thank you:-Nimish Mishra(team E-Study Zone)");                    
       
     out.print("<script>alert('successfull in cn-II');window.location.href='../uploadres.jsp';</script>");

   
       }
       else
       {
       out.println("<script>alert('unsuccessfull')</script>");
       }
              }  
                  else if(subject.equalsIgnoreCase("daa"))
              {                  
    String query="insert into daa values('"+mst1+"','"+mst2+"','"+finalm+"','"+rollno+"','"+email+"')";
          boolean res=db.executeNonQuery(query);
          if(res==true)
       {
       SmsSender sm=new SmsSender();
                           sm.SendSms(psw,"Hello!"+fn+" your chiled"+sn+" is failed in the mst-1 please take care on him/her otherwise he/she may be re-appeear or may get year back  thank you:-Nimish Mishra(team E-Study Zone)");

         out.print("<script>alert('successfull in daa');window.location.href='../uploadres.jsp';</script>");

   
       }
       else
       {
       out.println("<script>alert('unsuccessfull')</script>");
       }
              } 
       else
                  {
  out.print("<script>alert(' sorry!!! select the subject');window.location.href='../uploadres.jsp';</script>");

                  }
             
    %>
  