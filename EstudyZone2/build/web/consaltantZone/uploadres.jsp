<%-- 
    Document   : StudentHome.jsp
    Created on : 23 Jul, 2017, 11:33:31 AM
    Author     : user
--%>


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
               
                    <div class="container1" >
                      
                        <div class="name">
                        <%
                               Dbmanager db=new Dbmanager();
                               String str1="select * from consreg where EMAIL='"+session.getAttribute("username")+"'";
                              ResultSet rs=db.getRecord(str1);
 
                            rs.next();
                            %>
                            <p style="color:white;font-family: cursive; margin-left:30px;font-size:25px ">Hellow &nbsp;
                                <%=rs.getString("name") %>
                                <%=rs.getString("subject")%></p>
                        
                  </div>
                  
                     <div class="date"></div>     
                    </div>
                <div class="menu" > <div class="col-lg-12">
               
                    <div class="col-sm-12" style="background:#00bfa5">
                    <ul>
                        <li class="hvr hvr-bounce-in"><i><b><a href="consaltanthome.jsp">Home</a></b></i></li>
                         <li class="hvr hvr-bounce-in"><i><b><a href="#">New</a></b></i></li>
                          <li class="hvr hvr-bounce-in"><i><b><a href="Discussion.jsp">Discussion</a></b></i></li>
                           <li class="hvr hvr-bounce-in"><i><b><a href="selectattendece.jsp">upload attendence</a></b></i></li>
                            <li class="hvr hvr-bounce-in"><i><b><a href="Feedback.jsp">Feedback</a></b></i></li>
                             <li class="hvr hvr-bounce-in"><i><b><a href="ManageProfile.jsp">Manage Profile</a></b></i></li>
                              <li class="hvr hvr-bounce-in"><i><b><a href="ChangePassword.jsp">Change Password</a></b></i></li>
                    </ul></div>
                     
                </div> 
                </div></div>
           <div class="row">    <div class="row"> <div class="middle" style=" margin-bottom:-8px;"> 
                      <div class="col-sm-12">
                          <div class="col-sm-3" style="min-height:390px;background:#3c3c3c">
                           
                            <marquee direction="up"  scrollamount="8" onmouseover="stop();" onmouseout="start();" >
                                   <h3 class="hvr hvr-bounce-in" style="margin-right:5px;"><i><a href="#" style="color:white; text-decoration:none;">Notifications</a></i></h3> <br>   
                                 <h3 class="hvr hvr-bounce-in"><i><a href="#" style="color:white; text-decoration:none">New</a ></i></h3> <br>   
                                      <h3 class="hvr hvr-bounce-in"><i><a href="#" style="color:white; text-decoration:none">News</a></i></h3> <br>   
                                           <h3 class="hvr hvr-pop"><i><a href="#" style="color:white; text-decoration:none">Current</a></i></h3><br>    
                                           <h3 class="hvr hvr-bounce-in"><i><a href="#" style="color:white; text-decoration:none">E-Books</a></i></h3> <br>   
                                           <h3 class="hvr hvr-bounce-in"><i><a href="#" style="color:white; text-decoration:none">Doubt</a></i></h3><br>   
                            </marquee>
                            </div>
                   
 <div class="row">   <div class="col-sm-9" style=" min-height:400px;margin-left:-8px; "> 
   <%
                                            
                   
                String str="select * from estreg";
                    ResultSet sr=db.getRecord(str);
                String rollno=null; 
       
                  while(sr.next())
                    {
                      rollno=sr.getString("rollno");
                      
                      
             %>
           
         <form action="stcode/rescode.jsp" method="post">  
           
           
           <table class="table table-bordered table-hover table-responsive" style="color:gray;padding-right:10px;" >
               
                 <tr>
                
                <th style="color:gray;padding-right:30px;"> NAME</th>
                    
                              <th style="color:gray;padding-right:30px;">phone no</th>
                              <th style="color:gray;padding-right:30px;">email</th>
                                     <th style="color:gray;padding-right:30px;">M.S.T-I</th>
                                          <th style="color:gray;padding-right:30px;">M.S.T-II</th>
                                          <th style="color:gray;padding-right:30px;">Final</th>
                                         <th style="color:gray;padding-right:30px;">Roll number</th>    
            </tr>
             
          
             <tr style="margin-top:20px;">
                
                <td style="padding-right:30px;"><%=sr.getString("name")%></td> 
              
                <td style="padding-right:30px;"><%=sr.getString("phoneno")%></td> 
                 <td style="padding-right:30px;"><input type="text" name="email"  value="<%=sr.getString("email")%>"/></td>
           <td style="padding-right:30px;"><input type="number" name="mst1" placeholder="gain/24" /></td> 
                <td style="padding-right:30px;"><input type="number" name="mst2" placeholder="gain/24" /></td> 
                  <td style="padding-right:30px;"><input type="number" name="final" placeholder="gain/60" /></td> 
               <td style="padding-right:30px;"><input type="number" name="rollno" value="<%=sr.getString("phoneno")%>" /></td>
            </tr>  
                                     
         </table>
                           
         <center>   <input type="submit" value="submit" style="margin-top:11px;"/> </center>    </form> <%}%>        </div>  </div></div></div></div>
                <div class="footer">
                    <div class="col-lg-12">
            
                    </div>
                </div></div>
           </div> </div></div>
       </body>
</html>

