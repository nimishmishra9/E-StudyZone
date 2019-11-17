<%-- 
    Document   : home
    Created on : 20 Jul, 2017, 1:07:55 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
      <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,intial-scale=1oooooooo"/>
<link href="css\bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="css\font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="css\hover-min.css" rel="stylesheet" type="text/css"/>
<script src="css\jquery.js"></script>
<script src="css\bootstrap.min.js"></script>
<style>


    
    
      li:hover
    {
       
         background:#37474f;
      
    }    
   
     
     
    }
   ul li a
    {
    text-decoration:none;
    padding:20px;
    color:white;
    }
    
    ul li
    {
        width:auto;
         font-size:20px;
        
        color:white;    
      display:inline-block; 
     margin-right:10px;
     margin-top:10px;
     border:1px solid white;
     border-radius:10px 0px 10px 0px;
    padding-right:25px;
     padding-left:25px;
     margin-right:30px;
    }
    
 
    li:hover
{  
     background:#00796b;
    }
  
   
</style>
</head>
<body>
<div class="header" style="min-height:991px;">
<div class="row">
<div class="col-sm-12" style="min-height:100px;">
<div class="col-sm-2" style="min-height:100px; float:left"><img src="images/logo.png" width="225"; height="100"/></div>
<div class="col-sm-10" style="min-height:100px; "> <img src="images/banner.png" alt="Los Angeles" style="width:1250px;height:100px;">
</div></div></div>

<div class="col-sm-12" style="min-height:50px; ; margin-top:10px; margin-bottom:10px; background:#00bfa5;">
    <div class="col-sm-7"><div class="menu">
        <ul>
            <li class="hvr hvr-bounce-in"><a href="home.jsp" style="color:white;text-decoration:none;">Home</a></li>   
            <li class="hvr hvr-bounce-in"><a href="login.jsp" style="color:white;text-decoration:none;">Login</a></li>   
            <li class="hvr hvr-bounce-in"><a href="Registration.jsp" style="color:white;text-decoration:none;">Registration</a></li>   
            <li class="hvr hvr-bounce-in"><a href="enquriy.jsp" style="color:white;text-decoration:none;"> Enquiry</a></li>   
            <li class="hvr hvr-bounce-in"><a href="#" style="color:white;text-decoration:none;">About Us</a></li>   
        </ul>     
</div>

</div></div>
    
    <div class="col-sm-12" style="min-height:200px; ">
       
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
   
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

 
    <div class="carousel-inner">
     <div class="item active">
        <img src="images/Slide-1.jpg" alt="Los Angeles" style="width:1500px; height:200px;">
      </div>
 
      <div class="item">
        <img src="images/1.jpg" alt="Chicago" style="width:1500px;  height:200px;"">
      </div>
    
      <div class="item">
        <img src="images/ws_Blue_Abstract_1280x1024.jpg" alt="New york" style="width:1500px;  height:200px;"">
      </div>
    </div>
   
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
    </div>
<div class="col-sm-12" style="min-height:450px; margin-top:10px;">
    <div class="col-sm-3" style="min-height:450px; background:rgba(0,0,0,.1); color:white">
        <marquee direction="up"  scrollamount="8" onmouseover="stop();" onmouseout="start();">
            <h3 class="hvr hvr-bounce-in"><a href="#" style=" text-decoration:none;">Notifications &nbsp;&nbsp;&nbsp;&nbsp;<span class="fa fa-bell" style="font-size:20px; color:#00bfa5;"></span></a></h3><br>
             <h3 class="hvr hvr-bounce-in"><a href="#" style=" text-decoration:none">News &nbsp;&nbsp;&nbsp;&nbsp;<span class="fa fa-desktop" style="font-size:20px; color:#00bfa5;"></span></a></h3><br>
              <h3 class="hvr hvr-bounce-in"><a href="#" style=" text-decoration:none">doubt &nbsp;&nbsp;&nbsp;&nbsp;<span class="fa fa-question-circle" style="font-size:20px; color:#00bfa5;"></span></a></h3><br>
               <h3 class="hvr hvr-bounce-in"><a href="#" style=" text-decoration:none">New &nbsp;&nbsp;&nbsp;&nbsp;<span class="fa fa-share-square " style="font-size:20px; color:#00bfa5;"></span></a></h3><br>
                <h3 class="hvr hvr-bounce-in"><a href="#" style=" text-decoration:none">E-Books &nbsp;&nbsp;&nbsp;&nbsp;<span class="fa fa-file-archive-o" style="font-size:20px; color:#00bfa5;"></span></a></h3><br>
                
        </marquee>
        
        
    </div>
 <div class="col-sm-9" style="min-height:450px; background:#00bfa5;">
    
     <center><h3 style="color:white;"> registration</h3></center>

  
   
    <br> 
    <div class="col-sm-3">
</div> 
    <div class="col-sm-6">
         <form action="code/registrationCode.jsp" method="post"> 
<div class="col-sm-12" style="border-radius:10px 10px 10px 10px; background:rgba(0,0,0,.3); ">

    <center>
  
    <div class="col-sm-6" style=" min-height:300px;">
       
        <br>
<div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span>
  <input type="text" name="name" class="form-control" placeholder="Name" aria-describedby="basic-addon1"/>
</div><br/>
<div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-text-size"></span></span>
  <input type="email" name="email" class="form-control" placeholder="enter the email" aria-describedby="basic-addon1"/>
</div><br/>
<div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-option-horizontal"></span></span>
  <input type="password" name="password" class="form-control" placeholder="password" aria-describedby="basic-addon1"/>
</div><br/>

<div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-earphone"></span></span>
  <input type="number" name="phoneno" class="form-control" placeholder="phone no." aria-describedby="basic-addon1"/>
</div><br/>



<div class="input-group">

    <h4 style="color:white"> select the gender</h4>
    <input  type="radio" name="gender" value="male"/><hp style="color:white;">Male</hp>&nbsp;&nbsp;
    <input type="radio" name="gender" value="female"/><hp style="color:white;">Female</hp>
</div><br/>
    </div><br>
<div class="col-sm-6"><form
    <br>
    <div class="input-group">
<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-home"></span></span>
<select class="form-control" name="city" value="select1">
<option  >select the city</option>
<option>shahjahanpur</option>
<option>ferozepur</option>
<option>lucknow</option>
<option>mumbai</option>
</select> 
</div><br/>
<div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-bed"></span></span>
 <textarea name="address" class="form-control" placeholder="address" aria-describedby="basic-addon1"></textarea>
</div><br/>
    
    
<div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-picture"></span></span>
  <input type="text" name="fname" class="form-control" placeholder="father name" aria-describedby="basic-addon1"/>
</div><br> 



<div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-certificate"></span></span>
  <input type="number" name="aadaharnum" class="form-control" placeholder="aadhar number" aria-describedby="basic-addon1"/>
</div><br/>
<div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-send"></span></span>
  
  <input type="submit" value="register now!!!" class="form-control"  aria-describedby="basic-addon1"/>
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-send"></span></span>
</div><br/>
     
    </div>

    
</center>

</div>
</form>       
        
        
    </div>
</div></div>
<div class="col-sm-12"style="min-height:150px;margin-top:10px;">
    

    <div class="col-sm-6" style="min-height:150px;background:#00bfa5">
           <h1 style="margin-left:0">Enroll:- spi/st/2017/034</h1> 
    </div>
    <div class="col-sm-6" style="min-height:150px;background:#00bfa5">
          <h1>NIMISH MISHRA</h1>  
        <h3>S.B.S.S.T.C , PUNJAB</h3>
   
    </div></div>
 </div>
   
</body>
</html>
