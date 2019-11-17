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
        min-height:410px;
        margin-top:5px;
    }
    .footer
    {
     min-height:150px;   
      margin-top:0px;
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
    .middlein
    {
        color:white;
       background:red;
       border-radius: 10px 10px 10px 10px;
       border:1px solid;
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
                        <li class="hvr hvr-bounce-in"><i><b><a>Home</a></b></i></li>
                         <li class="hvr hvr-bounce-in"><i><b><a>New</a></b></i></li>
                          <li class="hvr hvr-bounce-in"><i><b><a>Discussion</a></b></i></li>
                           <li class="hvr hvr-bounce-in"><i><b><a>Complain</a></b></i></li>
                            <li class="hvr hvr-bounce-in"><i><b><a>Feedback</a></b></i></li>
                             <li class="hvr hvr-bounce-in"><i><b><a>Manage Profile</a></b></i></li>
                              <li class="hvr hvr-bounce-in"><i><b><a>Change Password</a></b></i></li>
                    </ul></div>
                     
                </div> 
                </div></div>
           <div class="row">    <div class="row"> <div class="middle" style=" margin-bottom:-8px;"> 
                      <div class="col-sm-12" style="margin-bottom:5px;">
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
                          
                           <div class="col-sm-9" style=" min-height:450px;margin-left:-8px;background:#00bfa5;"> 

                                        <center><h1 style="color:white">manage profile here</h1> </center>  
                                        <div class="col-sm-2"></div>
                                        <%
                                            String q = "select * from consreg where EMAIL='" + session.getAttribute("username") + "'";
                                            Dbmanager db = new Dbmanager();
                                            ResultSet rs = db.getRecord(q);
                                           if(rs.next())
                                            {
                                        %>

                                        <form action="code/ManageProfilecode.jsp"  method="post">                  
                                            <div class="col-sm-4" style="background:rgba(0,0,0,.3); min-height:300px;border-radius:10px 0 0 10px">
                                                <br>
                                                <div class="input-group">
                                                    <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span>
                                                    <input type="text" name="name" value="<%=rs.getString("name") %>" class="form-control" placeholder="Name" aria-describedby="basic-addon1"/>
                                                </div><br/>
                                                <div class="input-group">
                                                    <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-text-size"></span></span>
                                                    <input type="text" value="<%=rs.getString("email") %>" readonly="" name="email" class="form-control" placeholder="enter the email" aria-describedby="basic-addon1"/>
                                                </div><br/>
                                                

                                                <div class="input-group">
                                                    <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-earphone"></span></span>
                                                    <input type="text" value="<%=rs.getString("phoneno") %>" name="phoneno" class="form-control" placeholder="phone no." aria-describedby="basic-addon1"/>
                                                </div><br/>


                                                <div class="input-group">

                                                    <h4 style="color:white"> select the gender</h4>
                                                    <input  type="radio" name="gender" <% if(rs.getString("gender").toLowerCase().equals("male")) { %> checked=""  <% } %>  value="male" /> <hp style="color:white">Male</hp>&nbsp;  <input type="radio" <%   if(rs.getString("gender").toLowerCase().equals("female")) { %> checked=""  <% } %> name="gender" value="female"/> <hp style="color:white">female</hp>

                                                </div><br/>  


                                            </div>
                                            <div class="col-sm-4" style="background:rgba(0,0,0,.3);min-height:312px;border-radius:0 10px 10px 0">
                                                <br>                   
                                                <div class="input-group">
                                                    <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-home"></span></span>
                                                    <select class="form-control" name="city" value="select1">
                                                        <option><%=rs.getString("city") %></option>
                                                        <option>shahjahanpur</option>
                                                        <option>ferozepur</option>
                                                        <option>lucknow</option>
                                                        <option>mumbai</option>
                                                    </select> 
                                                </div><br/>

                                                <div class="input-group">
                                                    <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-bed"></span></span>
                                                    <textarea name="address" class="form-control" placeholder="address" aria-describedby="basic-addon1">
                                                        <%=rs.getString("address") %>
                                                    </textarea>
                                                </div><br/>





                                                <div class="input-group">
                                                    <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-picture"></span></span>
                                                    <input type="text" name="fname" value="<%=rs.getString("fname") %>" class="form-control" placeholder="father name" aria-describedby="basic-addon1"/>
                                                </div><br> 



                                                <div class="input-group">
                                                    <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-certificate"></span></span>
                                                    <input type="text" name="subject" value="<%=rs.getString("subject") %>" class="form-control" placeholder="aadhar number" aria-describedby="basic-addon1"/>
                                                </div><br/>

                                                <div class="input-group">
                                                    <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-send"></span></span>
                                                    <input type="submit" value="Update" class="form-control"  aria-describedby="basic-addon1"/>
                                                </div><br/>
                                            </div> </form>
                                        <%
                                            }
                                        %>
                                    </div> 
                   
  </div></div></div>
                <div class="footer">
                    <div class="col-lg-12">
            NIMISH MISHRA
                    </div>
                </div></div>
           </div> </div></div>
       </body>
</html>
