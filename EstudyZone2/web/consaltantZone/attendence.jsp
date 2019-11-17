<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.Dbmanager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,intial-scale=1oooooooo"/>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
<link href="css/hover-min.css" rel="stylesheet" type="text/css"/>
<script src="css/jquery.js" type="text/javascript"></script>
<script src="css/bootstrap.min.js" type="text/javascript"></script>
<style>
    .outer
    {
        min-height:700px;
        
    }
    .menu
    {
    .menu ul li a
    {
    text-decoration:none;
    font-size:18px;
    padding:20px;
    color:white;
  margin-top:10px; 
      
    }
    
    ul li
    {
        color:white;    
      display:inline-block; 
     margin-right:10px;
     margin-top:12px;
     border: 1px solid white;
     border-radius:10px 0px 10px 0px;
    }
    
  
    li:hover
    {
       
         background:#0277bd;
      
    }
     
     
    }
   .menu ul li a
    {
    text-decoration:none;
    font-size:18px;
    padding:20px;
    color:white;
    
    }
    
    ul li
    {
        color:white;    
      display:inline-block; 
     margin-right:10px;
     margin-top:12px;
     border: 1px solid white;
     border-radius:10px 0px 10px 0px;
    }
    
  
    li:hover
    {
       
         background:#00796b;
      margin-left:15px;
    }
    .middle
    {
        min-height:410px;
        margin-top:5px;
    }
    .footer
    {
     min-height:150px;   
      margin-top:-5px;
      background:#00bfa5;
    }
    .container1
    {
      height:50px;
      color:white;
      background:#00bfa5;
    margin-bottom: 5px;
    margin-top:-15px;
    }
</style>
    </head>
    <body>
     
        
        <div class="row">
        <div class="col-sm-12">
            <div class="outer">
                <div class="row">   <div class="header" style="min-height:120px;"> 
                 <div class="row">  <div class="col-sm-12" >
                         <div class="col-sm-2" style="min-height:100px;background-image:url('images/logo.png');background-size: 100% 100% ;  "></div>
                       <div class="col-sm-10" style="min-height:100px; background-image:url('images/banner.png');background-size: 100% 100% ;"></div>
                     
                     </div> </div>
               </div>
                    <div class="container1" >
                        <div class="date"></div>
                        <div class="name">
                <%
                   
              Dbmanager db=new Dbmanager();
              String a;
               SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
                 a=db.getCurrentDate(); 
                               String str1="select * from consreg where EMAIL='"+session.getAttribute("username")+"'";
                              ResultSet rs=db.getRecord(str1);
                              rs.next();
                            %>
                           <p style="font-family:cursive;font-size: 20px;">HII!!!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("name")%>&nbsp;&nbsp;<%=rs.getString("subject")%></p>
                            
                            
                  </div>
                     
                    </div>
                <div class="menu" > <div class="col-lg-12">
               
                    <div class="col-sm-12" style="background:#00bfa5">
                    <ul>
                        <li class="hvr hvr-bounce-in"><i><b><a href="consaltanthome.jsp">Home</a></b></i></li>
                         <li class="hvr hvr-bounce-in"><i><b><a href="#">New</a></b></i></li>
                          <li class="hvr hvr-bounce-in"><i><b><a href="Discussion.jsp">Discussion</a></b></i></li>
                           <li class="hvr hvr-bounce-in"><i><b><a href="#">upload attendence</a></b></i></li>
                            <li class="hvr hvr-bounce-in"><i><b><a href="Feedback.jsp">Feedback</a></b></i></li>
                             <li class="hvr hvr-bounce-in"><i><b><a href="ManageProfile.jsp">Manage Profile</a></b></i></li>
                              <li class="hvr hvr-bounce-in"><i><b><a href="ChangePassword.jsp">Change Password</a></b></i></li>
                    </ul></div>
                     
                </div> 
                </div></div>
           <div class="row">    <div class="row"> <div class="middle" style=" margin-bottom:-8px;"> 
                      <div class="col-sm-12">
                        
                   
 <div class="row">   <div class="col-sm-9" style=" min-height:400px;margin-left:-8px; "> 
   
         
      
         
         <table class="table table-bordered table-hover table-responsive" style="margin-left:170px;" >
         <%
                                            
              
                String str="select * from estreg";
                    ResultSet sr=db.getRecord(str);
                      String rollno=null;
        
                    while(sr.next())
                    {
                       
             %> 
         <form action="code/attencode.jsp" method="post" >  
   
                <tr style="text-align:center">
                    <th style="padding:20px;">ID</th> 
                      <th style="padding:20px;">Date</th>
              <th style="padding:20px;">Name</th>
           
               <th style="padding:20px;">E-Mail</th>
               <th style="padding:20px;">phone no</th>
                <th style="padding:20px;">Roll no.</th>
              
                  <th style="padding:20px;">present</th>
                  <th style="padding:20px;">absent</th>
                  <th style="padding:20px;">total</th>
             </tr>
            
             <tr>
                 <td style="padding:20px;"><%=sr.getString("STID")%></td> &nbsp;&nbsp;
                <td style="padding:20px;"><%out.println(a);%></td> &nbsp;&nbsp;
                 <td style="padding:20px;"><%=sr.getString("name")%></td> &nbsp;&nbsp;
                 <td style="padding:20px;"><%=sr.getString("email")%></td> &nbsp;&nbsp;
                <td  style="padding:20px;"><%=sr.getString("phoneno")%></td> &nbsp;&nbsp;
                    <td style="padding:20px;"><%=sr.getString("rollno")%></td> &nbsp;&nbsp;
                 <td style="padding:20px;">
             </td> 
                <%
                 rollno=sr.getString("rollno"); 
                
                %>
             
                
                <td style="padding:20px;"><input type="checkbox" name="p[]" value="<%=sr.getString("rollno")%>" /></td>
          
             </tr>
                
           <%          
                  }
                                        %> 
       
             </table><input type="submit" value="upload" /> 
          
                </form>            
       
         
         
         
         
         
         
                                 </div>  </div></div></div></div>
                <div class="footer">
                    <div class="col-lg-12">
            
                    </div>
                </div></div>
           </div> </div></div>
       </body>
</html>

