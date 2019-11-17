<%-- 
    Document   : StudentHome.jsp
    Created on : 23 Jul, 2017, 11:33:31 AM
    Author     : user
--%> 
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%
     if(session.getAttribute("username")==null)
     {
         response.sendRedirect("../login.jsp");
     }
     else
     {
             
%>


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
<script>
function startTime() {
    var today = new Date();
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);
    document.getElementById('txt').innerHTML =
    h + ":" + m + ":" + s;
    var t = setTimeout(startTime, 500);
}
function checkTime(i) 
{
    if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}
</script>
<style>
    .outer
    {
        min-height:600px;
        
    }
    .menu
    {
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
       
         background:#0277bd;
      
    }
     
     
    }
   .menu ul li a
    {
    text-decoration:none;
    font-size:17px;
    padding:17px;
    color:white;
    font-family:cursive;
    padding-bottom:3px;
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
       font-family:cursive;
         background:#00796b;
      margin-left:15px;
    }
    .middle
    {
        min-height:425px;
        margin-top:5px;
      
     
    }
    .footer
    {
     min-height:150px;   
      margin-top:5px;
      background:#00bfa5;
    }
    .container1
    {
      height:50px;
      color:white;
      background:#00bfa5;
      margin-top:-15px;
    }
</style>
    </head>
    <body onload="startTime()">
    
        
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
                        
                        <div class=" col-sm-10 name">
                  <%
                               Dbmanager db=new Dbmanager();
                               String str1="select * from consreg where EMAIL='"+session.getAttribute("username")+"'";
                              ResultSet rs=db.getRecord(str1);
                              rs.next();
                            %>
                           
     <%--                <div >
       <img src="<%=request.getContextPath()+"/AdminZone/adminupload/"+rs.getString("3.jpg") %>"
</div>  --%>
                 <span style="font-family:cursive;margin-left:10px; font-size: 30px;">hello!!!&nbsp;&nbsp;<%=rs.getString("NAME")%></span>
 <span style="font-family:cursive;margin-left:300px; font-size: 30px;"> welcome &nbsp;in &nbsp;<%=rs.getString("subject")%> &nbsp;section</span>

                  </div><div class="col-sm-2 date">
                      <div id="txt" style="font-size:30px;margin-left:75px;margin-top:4px"></div>

                    </div>
                        
                    </div>
                        <div class="menu" > <div class="col-lg-12" style="margin-top:5px;">
               
              <div class="row">      <div class="col-sm-12" style="background:#00bfa5">
                <div class="row">    <ul>
                        <li class="hvr hvr-bounce-in"><i><b><a href="consaltanthome.jsp" >Home</a></b></i></li> 
                          <li class="hvr hvr-bounce-in"><i><b><a href="Discussion.jsp">Discussion</a></b></i></li>
                           <li class="hvr hvr-bounce-in"><i><b><a href="selectattendece.jsp">upload attendence</a></b></i></li>
                            <li class="hvr hvr-bounce-in"><i><b><a href="Feedback.jsp">Feedback</a></b></i></li>
                             <li class="hvr hvr-bounce-in"><i><b><a href="ManageProfile.jsp">Manage Profile</a></b></i></li>
                              <li class="hvr hvr-bounce-in"><i><b><a href="../StudentZone/ChangePassword.jsp">Change Password</a></b></i></li>
                               <li class="hvr hvr-bounce-in"><i><b><a href="logout.jsp">logout  session</a></b></i></li>
         
                       </ul></div> 
                   
                  </div></div>
                     
                </div> 
                </div></div>
           <div class="row">    <div class="row"> <div class="middle" style=" margin-bottom:-8px;"> 
                      <div class="col-sm-12" style="background-image:url('../images/k.jpg');   background-repeat:no-repeat;  background-size:100% 100%; background-attachment:fixed">
                             <div class="row" style="background:rgba(0,0,0,.7);">
                                 <div class="col-sm-3" style="margin-left:25px;">
                           
                            <marquee direction="up"  scrollamount="8" onmouseover="stop();" onmouseout="start();" >
                                   <h3 class=" hvr hvr-bounce-in "><i><a href="#" style="color:white; text-decoration:none;">Notifications</a></i></h3> <br>   
                                 <h3 class="hvr hvr-bounce-in"><i><a href="#" style="color:white; text-decoration:none">New</a ></i></h3> <br>   
                                      <h3 class="hvr hvr-bounce-in"><i><a href="#" style="color:white; text-decoration:none">News</a></i></h3> <br>   
                                           <h3 class="hvr hvr-pop"><i><a href="#" style="color:white; text-decoration:none">Current</a></i></h3><br>    
                                           <h3 class="hvr hvr-bounce-in"><i><a href="#" style="color:white; text-decoration:none">E-Books</a></i></h3> <br>   
                                           <h3 class="hvr hvr-bounce-in"><i><a href="#" style="color:white; text-decoration:none">Doubt</a></i></h3><br>   
                            </marquee>
                            </div>
                   
 <div class="row">   <div class="col-sm-9" style=" min-height:425px;margin-left:-78px;font-family:cursive; "> 
        
                              <div class="col-sm-3" style="min-height:210px;"><center><h3 class="hvr hvr-bounce-in" ><a href="uploadcenter.jsp" style="color:white;text-decoration:none;font-size:30px;">upload center</a></h3><br><a href="uploadcenter.jsp" style="color:white;text-decoration:none"><h1 class="hvr hvr-bounce-in" > <span class="fa  fa-arrow-circle-up " style="font-size:70px; color:white;"></span></h1></a></center></div>
                              <div class="col-sm-3" style="min-height:210px;"><center><h3 class="hvr hvr-bounce-in" ><a href="Discussion.jsp" style="color:white;text-decoration:none;font-size:30px;">Discussion</a></h3><br><a href="Discussion.jsp" style="color:white;text-decoration:none"><h1 class="hvr hvr-bounce-in"> <span class="glyphicon glyphicon-user " style="font-size:70px; color:white;"></span></h1></a></center></div>
                                    <div class="col-sm-3" style="min-height:210px; "><center><h3 class="hvr hvr-bounce-in" ><a href="attendence.jsp" style="color:white;text-decoration:none;font-size:30px;">upload Attendence</a></h3><br><a href="attendence.jsp" style="color:white;text-decoration:none"><h1 class="hvr hvr-bounce-in"> <span class="glyphicon glyphicon-envelope" style="font-size:70px; color:white;"></span></h1></a></center></div>
                                    <div class="col-sm-3" style="min-height:210px; "><center><h3 class="hvr hvr-bounce-in" ><a href="Feedback.jsp" style="color:white;text-decoration:none;font-size:30px;">Feedback</a></h3><br><a href="Feedback.jsp" style="color:white;text-decoration:none"><h1 class="hvr hvr-bounce-in"> <span class="glyphicon glyphicon-sort-by-alphabet " style="font-size:70px; color:white;"></span></h1></a></center></div>
                                 <div class="col-sm-3" style="min-height:210px; "><center><h3 class="hvr hvr-bounce-in" ><a href="ManageProfile.jsp" style="color:white;text-decoration:none;font-size:30px;">Manage Profile</a></h3><br><a href="ManageProfile.jsp" style="color:white;text-decoration:none"><h1 class="hvr hvr-bounce-in"> <span class="glyphicon glyphicon-pencil " style="font-size:70px; color:white;"></span></h1></a></center></div>
                                 <div class="col-sm-3" style="min-height:210px; "><center><h3 class="hvr hvr-bounce-in" ><a href="ChangePassword.jsp" style="color:white;text-decoration:none;font-size:30px;">Change password</a></h3><br><a href="ChangePassword.jsp" style="color:white;text-decoration:none"><h1 class="hvr hvr-bounce-in"> <span class="glyphicon glyphicon-option-horizontal " style="font-size:70px; color:white;"></span></h1></a></center></div>
                                 <div class="col-sm-3" style="min-height:210px; "><center><h3 class="hvr hvr-bounce-in" ><a href="uploadres.jsp" style="color:white;text-decoration:none;font-size:30px;">Upload Result</a></h3><br><a href="uploadres.jsp" style="color:white;text-decoration:none"><h1 class="hvr hvr-bounce-in"> <span class="glyphicon glyphicon-blackboard " style="font-size:70px; color:white;"></span></h1></a></center></div>
                                 <div class="col-sm-3" style="min-height:210px; "><center><h3 class="hvr hvr-bounce-in" ><a href="#" style="color:white;text-decoration:none;font-size:30px;">Add Books</a></h3><br><a href="#" style="color:white;text-decoration:none"><h1 class="hvr hvr-bounce-in"> <span class="glyphicon glyphicon-education " style="font-size:70px; color:white;"></span></h1></a></center></div>
     </div>  </div></div></div></div></div>
      <div class="col-sm-12"style="min-height:100px;margin-top:10px;  font-family: cursive;color:white">
     
    <div class="col-sm-6" style="min-height:50px;background:#00bfa5;">
        <p style="font-size: 20px;margin-bottom: 10px">&copy copyright 2k17 SBSSTC</P>
        <p style="font-size:15px">Design & Maintain By :- </p> <br> 
        <h3 style="margin-top:-20px; color:white">Er Nimish Mishra </h3>
        
    
    </div>
    <div class="col-sm-6" style="min-height:100px;background:#00bfa5">
        <p style="margin-top:10px; margin-bottom: -10px">S.B.S.S.T.C , PUNJAB</p>
        <br><br>  <p style="margin-top:-20px">phone:-+91 8934038934</p>
        <p style="font-size:20px ;color:white">Gmail:nimishmishra9@gmail.com</p>
        </div>
</div>
           </div>
 
           </div> 
        
        
        </div></div>
       </body>
</html>

 <%    }
     %>

