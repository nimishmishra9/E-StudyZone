<%-- 
    Document   : StudentHome.jsp
    Created on : 23 Jul, 2017, 11:33:31 AM
    Author     : user
--%>

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
        min-height:460px;
        margin-top:5px;
        margin-bottom:5px;
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
             
                  </div>
                        
                    </div>
                <div class="menu" > <div class="col-lg-12">
               
                    <div class="col-sm-12" style="background:#00bfa5">
                    <ul>
                        <li class="hvr hvr-bounce-in"><i><b><a href="#">Home</a></b></i></li>
                         <li class="hvr hvr-bounce-in"><i><b><a href="#">New</a></b></i></li>
                          <li class="hvr hvr-bounce-in"><i><b><a href="Discussion.jsp">Discussion</a></b></i></li>
                           <li class="hvr hvr-bounce-in"><i><b><a href="Complain.jsp">Complain</a></b></i></li>
                            <li class="hvr hvr-bounce-in"><i><b><a href="Feedback.jsp">Feedback</a></b></i></li>
                             <li class="hvr hvr-bounce-in"><i><b><a href="ManageProfile.jsp">Manage Profile</a></b></i></li>
                              <li class="hvr hvr-bounce-in"><i><b><a href="ChangePassword.jsp">Change Password</a></b></i></li>
                    </ul></div>
                     
                </div> 
                </div></div>
           <div class="row">    <div class="row"> <div class="middle" style=" margin-bottom:-8px;"> 
                      <div class="col-sm-12">
                          <div class="col-sm-3" style="min-height:450px;background:#3c3c3c">
                           
                            <marquee direction="up"  scrollamount="8" onmouseover="stop();" onmouseout="start();" >
                                   <h3 class="hvr hvr-bounce-in" style="margin-right:5px;"><i><a href="#" style="color:white; text-decoration:none;">Notifications</a></i></h3> <br>   
                                 <h3 class="hvr hvr-bounce-in"><i><a href="#" style="color:white; text-decoration:none">New</a ></i></h3> <br>   
                                      <h3 class="hvr hvr-bounce-in"><i><a href="#" style="color:white; text-decoration:none">News</a></i></h3> <br>   
                                           <h3 class="hvr hvr-pop"><i><a href="#" style="color:white; text-decoration:none">Current</a></i></h3><br>    
                                           <h3 class="hvr hvr-bounce-in"><i><a href="#" style="color:white; text-decoration:none">E-Books</a></i></h3> <br>   
                                           <h3 class="hvr hvr-bounce-in"><i><a href="#" style="color:white; text-decoration:none">Doubt</a></i></h3><br>   
                            </marquee>
                            </div>
           <div class="col-sm-9" style="min-height:450px; background:#00bfa5;"><center><h2 style="color:white;" ><i>Change your Password</i></h2></center><br>
        <div class="col-lg-4"></div>   <div class="col-lg-4">  <div class="main1">     
      
    
                         
                <div class="col-sm-12"><form action="code/ChangePasswordcode.jsp" method="post" style="background:rgba(0,0,0,.3); border-radius:10px 10px 10px 10px; ">
                              <br>     
                      <div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span>
  <input type="text" name="name" class="form-control" placeholder="Name" aria-describedby="basic-addon1"/>
</div><br/>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-pencil"></span></span>
  <input type="email" name="email" class="form-control" placeholder="enter the E-mail" aria-describedby="basic-addon1"/>
                                  </div> <br/>
                                  
                                  <div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-option-horizontal"></span></span>
  <input type="password" name="oldpassword" class="form-control" placeholder="enter the old password" aria-describedby="basic-addon1"/>
                                  </div> <br/>
     <div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-option-horizontal"></span></span>
  <input type="password" name="new1password" class="form-control" placeholder="enter the new password" aria-describedby="basic-addon1"/>
                                  </div> <br/>
                                   <div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-option-horizontal"></span></span>
  <input type="password" name="new2password" class="form-control" placeholder="enter the new password" aria-describedby="basic-addon1"/>
                                  </div> <br/>
                                   <div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-send"></span></span>
  <input type="submit" value="submit your new Password" class="form-control" style="color:white; background:lightseagreen;"/>
                            <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-send"></span></span>    
                                   </div> <br/>
                                  </form>  </div>
        
        
        
         </div></div></div>        
    
                      
                      
                      
                      </div></div></div>
                <div class="footer">
                    <div class="col-lg-12">
            
                    </div>
                </div></div>
           </div> </div></div>
       </body>
</html>
