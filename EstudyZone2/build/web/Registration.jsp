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
<div class="col-sm-2" style="min-height:100px; float:left"><img src="images/logo.png" width="225" height="100"/></div>
<div class="col-sm-10" style="min-height:100px; background-image:url('images/banner.png'); background-repeat: no-repeat;background-size:100% 100%; ">
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
    <div class="row">
        
      <div class="col-sm-12" style="min-height:499px; ">
       
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
   
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

 
      <div class="row"> <div class="row">
              <div class="carousel-inner">
                  <div class="item active" >
          <div class="carousel-caption" >
<h1 style="font-size:120px;font-family:cursive ;font-style:bold">Providing</h1>
<p style="font-size:40px;font-family:cursive ;font-style:bold">high quality of Education for Students</p>

   </div>
        <img src="images/bannerfirst.jpg" alt="Los Angeles" style="width:1800px; height:493px;">
       
      </div>
 
      <div class="item">
          <div class="carousel-caption" >
<h1 style="font-size:120px;font-family:cursive ;font-style:bold">Providing</h1>
<p style="font-size:40px;font-family:cursive ;font-style:bold">high quality of Education for Students</p>

   </div>
          <img src="images/111 (2).jpg" alt=""  style="width:1800px;  height:493px;"/>
     
      </div>
    
      <div class="item">
          <div class="carousel-caption" >
<h1 style="font-size:120px;font-family:cursive ;font-style:bold">Providing</h1>
<p style="font-size:40px;font-family:cursive ;font-style:bold">high quality of Education for Students</p>

   </div>
        <img src="images/4.jpg" alt="New york" style="width:1800px;  height:493px;">
      </div>
       </div></div></div>
   
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
    <div class="row">
<div class="col-sm-12" style="min-height:520px; margin-top:10px; background-image:url(images/bg.jpg); background-attachment: fixed;    background-position: center;    background-repeat: no-repeat; background-size:cover; margin-top:10px;  background-repeat: no-repeat; background-attachment: fix ">
    <div class="col-sm-2" style="min-height:520px;  ">
      <div class="row">  <marquee direction="up"  scrollamount="8" onmouseover="stop();" onmouseout="start();" style="background:rgba(0,0,0,.3); height:520px; ">
              <div class="marrquee" style="margin-left:15px">    <h3 class="hvr hvr-bounce-in"><a href="#" style=" text-decoration:none; color:white;">Notifications &nbsp;&nbsp;&nbsp;&nbsp;<span class="fa fa-bell" style="font-size:20px; color:white;"></span></a></h3><br>
             <h3 class="hvr hvr-bounce-in"><a href="#" style=" text-decoration:none;color:white;">News &nbsp;&nbsp;&nbsp;&nbsp;<span class="fa fa-desktop" style="font-size:20px; color:white;"></span></a></h3><br>
              <h3 class="hvr hvr-bounce-in"><a href="#" style=" text-decoration:none;color:white;">doubt &nbsp;&nbsp;&nbsp;&nbsp;<span class="fa fa-question-circle" style="font-size:20px; color:white;"></span></a></h3><br>
               <h3 class="hvr hvr-bounce-in"><a href="#" style=" text-decoration:none;color:white;">New &nbsp;&nbsp;&nbsp;&nbsp;<span class="fa fa-share-square " style="font-size:20px; color:white;"></span></a></h3><br>
                <h3 class="hvr hvr-bounce-in"><a href="#" style=" text-decoration:none;color:white;">E-Books &nbsp;&nbsp;&nbsp;&nbsp;<span class="fa fa-file-archive-o" style="font-size:20px; color:white;"></span></a></h3><br>
                </div>
          </marquee></div>
        
        
    </div>
    
 <div class="col-sm-10" style="min-height:520px;" >
     <div class="row" >
     <div style="background:rgba(0,0,0,.3); min-height:520px;"> 
    
         <br> <center><span style="color:white; font-size:50px; "> Free Registration !! &nbsp;</span></center> 
  
    <br> 
    <div class="col-sm-1">
</div> 
    <div class="col-sm-8">
         <form action="code/registrationCode.jsp" method="post"> 
<div class="col-sm-12" style="border-radius:10px 10px 10px 10px; background:rgba(0,0,0,.3); ">
<center>
  
    <div class="col-sm-6" style=" min-height:300px;">
       
        <br>
     
        <br> 
     
   
        
<div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span>
  <input type="text" name="name" class="form-control" placeholder="Name" aria-describedby="basic-addon1"/>
</div><br/>


  <div class="input-group">
                 <span class="input-group-addon" id="basic-addon1"><span class="fa fa-users"></span></span>
      <select class="form-control" name="registration" value="select1">
<option >who are you</option>
<option>consaltant</option>
<option>student</option>
</select> 
      </div><br>




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
  <input type="nummber" name="phoneno" class="form-control" placeholder="phone no." aria-describedby="basic-addon1"/>
</div><br/>



<div class="input-group">

    <h4 style="color:white"> select the gender</h4>
    <input  type="radio" name="gender" value="male"/><hp style="color:white;">Male</hp>&nbsp;&nbsp;
    <input type="radio" name="gender" value="female"/><hp style="color:white;">Female</hp>
</div><br/>
    </div><br>
    <div class="col-sm-6"><form
        <br><br>
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
<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-book"></span></span>
<select class="form-control" name="subject" value="select">
<option  >select subject if you teacher</option>
<option>java</option>
<option>toc</option>
<option>cntwo</option>
<option>dbms</option>
<option>daa</option>
</select> 
</div><br/> 


<div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-certificate"></span></span>
  <input type="number" name="rollno" class="form-control" placeholder="rollno number" aria-describedby="basic-addon1"/>
</div><br/>
<div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-send"></span></span>
  
  <input type="submit" value="register now!!!" class="form-control"  aria-describedby="basic-addon1" style="background:lightseagreen; color:white"/>
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-send"></span></span>
</div><br/>
 
    </div>

    
</center>

</div>
</form>       
        
        
    </div>
     </div></div></div></div>
  
<div class="col-sm-12"style="min-height:100px;margin-top:10px;  font-family: cursive;color:white">
     
    <div class="col-sm-6" style="min-height:50px;background:#00bfa5;">
        <p style="font-size: 20px;margin-bottom: 10px">&copy copyright 2k18 SBSSTC</P>
        <p style="font-size:15px">Design & Maintain By :- </p> <br> 
        <h3 style="margin-top:-20px; color:white">Er aman raj  pandey</h3>
        
    
    </div>
    <div class="col-sm-6" style="min-height:100px;background:#00bfa5">
        <p style="margin-top:10px; margin-bottom: -10px">S.B.S.S.T.C , PUNJAB</p>
        <br><br>  <p style="margin-top:-20px">phone:-+91 8934038934</p>
        <p style="font-size:20px ;color:white"></p>
        </div>
</div>
    
 </div>
   
</body>
</html>