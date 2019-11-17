<%-- 
    Document   : home
    Created on : 20 Jul, 2017, 1:07:55 AM
    Author     : user
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.Dbmanager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
<head>
      <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,intial-scale=1oooooooo"/>
<link href="css\bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="css\font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="css\hover-min.css" rel="stylesheet" type="text/css"/>
<script src="css/jquery.js" type="text/javascript"></script>
<script src="css\bootstrap.min.js"></script>
<style>


    
    
      li:hover
    {
       
         background:#37474f;
      
    }    
   
     
    
   ul li a
    {
    text-decoration:none;

    color:WHITE;
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
     padding-left:15px;
     margin-right:30px;
    }
    
 
    li:hover
   {  
     background:#00796b;
    }
  
   p1:hover
   {
  
   font-family:cursive;
   }
   * {
  box-sizing: border-box;
}
.cont {
  position: relative;
  max-width: 800px;
  margin: 0 auto;
}

.cont img {vertical-align: middle;}

.cont .content {
  position: absolute;
  bottom: 0;
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
  color: #f1f1f1;
  width: 100%;
  padding: 20px;
}
   
</style>
</head>
<body><form>
<div class="header" style="min-height:771px;">
<div class="row">
<div class="col-sm-12" style="min-height:100px;">
<div class="col-sm-2" style="min-height:100px; float:left; background-image:url('images/logo.png');"></div>
<div class="col-sm-10" style="min-height:100px; background-image:url('images/banner.png');background-size:100% 100%"> 
</div></div></div>

<div class="col-sm-12" style="min-height:50px;  margin-top:10px; margin-bottom:10px; background:#00bfa5; background-repeat: no-repeat;background-attachment: fixed;">
    <div class="col-sm-10">
        <div class="menu">
        <ul>
            <li class="hvr hvr-bounce-in"><a href="home.jsp" style="color:white;text-decoration:none;font-family:cursive;">Home</a></li>   
            <li class="hvr hvr-bounce-in"><a href="login.jsp" style="color:white;text-decoration:none;font-family:cursive;">Login</a></li>   
            <li class="hvr hvr-bounce-in"><a href="Registration.jsp" style="color:white;text-decoration:none;font-family:cursive;">Registration</a></li>   
            <li class="hvr hvr-bounce-in"><a href="enquriy.jsp" style="color:white;text-decoration:none;font-family:cursive;"> Enquiry</a></li>   
            <li class="hvr hvr-bounce-in"><a href="#" style="color:white;text-decoration:none;font-family:cursive;">About Us</a></li>   
        </ul>     
</div>

</div></div>
    
    
    
    
    <div class="col-sm-12" style="min-height:499px; ">
       
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
   
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

 
      <div class="row"> <div class="row"><div class="carousel-inner">
     <div class="item active">
         <div class="carousel-caption" >
<h1 style="font-size:120px;font-family:cursive ;font-style:bold">Providing</h1>
<p style="font-size:40px;font-family:cursive ;font-style:bold">high quality of Education for Students</p>

   </div>
        <img src="images/bannerfirst.jpg" alt="" style="width:1800px; height:493px;">
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
        <img src="images/4.jpg" alt="" style="width:1800px;  height:493px;">
      </div>
       </div>
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
<div class="col-sm-12" style="min-height:700px; margin-top:10px; margin-bottom:8px; color:white;">
    <div class="col-sm-12" style="min-height:25px; background:#00bfa5; color:white;">
        <%
            try
            {
          Dbmanager db=new Dbmanager();
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection     cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","estudyzone","estudyzone");
           String str="select  *  from news";
             PreparedStatement pre=cn.prepareStatement(str);
         ResultSet rs=db.getRecord(str);
         while(rs.next())
          {
        %>
        <marquee direction="left" behavior="alternate"  scrollamount="10" onmouseover="stop();" onmouseout="start();">
              
            <span class="fa fa-hand-o-left" style="min-height:25px; color:black; font-size:30px; "></span>&nbsp;  <sapn  style="min-height:25px; color:white; font-size:30px; font-family:cursive;" class="hvr hvr-bounce-in"> <%=rs.getString("msg")%>  </sapn>
             
          
        </marquee>
        <%
          }
            }
            catch(Exception e)
            {
                out.print(e);
            }
        %>
        
    </div >
    <div class="col-sm-12" style="min-height:650px; background-image:url(images/bg.jpg);  background-attachment: fixed;    background-position: center;   background-repeat: no-repeat; background-size: cover; margin-top:10px;  background-repeat: no-repeat; background-attachment: fix">     
        <div class="row"> <div class="hm" style="min-height:650px; ">
        <div class="col-sm-3" style="min-height:195px; margin-top:80px; "><center><h3 class="hvr hvr-bounce-in" ><a href="login.jsp" style="color:white;text-decoration:none;font-family:cursive;">Log in</a"></h3><br><a href="login.jsp" style="color:white;text-decoration:none"><h1 class="hvr hvr-bounce-in" > <span class="fa fa-users" style="font-size:70px; color:white;"></span></h1></a></center></div>
  <div class="col-sm-3" style="min-height:195px; margin-top:80px; "><center><h3 class="hvr hvr-bounce-in" ><a href="Registration.jsp" style="color:white;text-decoration:none;font-family:cursive;">Registration</a></h3><br><a href="Registration.jsp" style="color:white;text-decoration:none"><h1 class="hvr hvr-bounce-in" > <span class="fa fa-pencil " style="font-size:70px; color:white;"></span></h1></a></center></div>
  <div class="col-sm-3" style="min-height:195px; margin-top:80px;"><center><h3 class="hvr hvr-bounce-in" ><a href="enquriy.jsp" style="color:white;text-decoration:none;font-family:cursive;"> Enquiry</a></h3><br><a href="enquriy.jsp" style="color:white;text-decoration:none"><h1 class="hvr hvr-bounce-in"> <span class="fa fa-bullhorn " style="font-size:70px; color:white;"></span></h1></a></center></div>
    <div class="col-sm-3" style="min-height:195px;margin-top:80px; "><center><h3 class="hvr hvr-bounce-in" ><a href="#" style="color:white;text-decoration:none;font-family:cursive;">Contact Us</a></h3><br><a href="#.jsp" style="color:white;text-decoration:none"><h1 class="hvr hvr-bounce-in" > <span class="fa fa-phone-square" style="font-size:70px; color:white;"></span></h1></a></center></div>
     <div class="col-sm-3" style="min-height:195px; margin-top:80px;"><center><h3 class="hvr hvr-bounce-in" ><a href="Downloadcenter.jsp" style="color:white;text-decoration:none;font-family:cursive;">Download center</a></h3><br><a href="Downloadcenter.jsp" style="color:white;text-decoration:none"><h1 class="hvr hvr-bounce-in" > <span class="fa fa-arrow-circle-o-down" style="font-size:70px; color:white;"></span></h1></a></center></div>
      <div class="col-sm-3" style="min-height:195px; margin-top:80px; "><center><h3 class="hvr hvr-bounce-in" ><a href="login.jsp" style="color:white;text-decoration:none;font-family:cursive;">Class room</a></h3><br><a href="login.jsp" style="color:white;text-decoration:none"><h1 class="hvr hvr-bounce-in" > <span class="fa fa-bell" style="font-size:70px; color:white;"></span></h1></a></center></div>
       <div class="col-sm-3" style="min-height:195px; margin-top:80px; "><center><h3 class="hvr hvr-bounce-in" ><a href="#" style="color:white;text-decoration:none;font-family:cursive;">Online fee</a></h3><br><a href="Downloadcenter.jsp" style="color:white;text-decoration:none"><h1 class="hvr hvr-bounce-in" > <span class="fa fa-flag-checkered" style="font-size:70px; color:white;"></span></h1></a></center></div>
        <div class="col-sm-3" style="min-height:195px; margin-top:80px; "><center><h3 class="hvr hvr-bounce-in" ><a href="#" style="color:white;text-decoration:none;font-family:cursive;">More about us</a></h3><br><a href="Downloadcenter.jsp" style="color:white;text-decoration:none"><h1 class="hvr hvr-bounce-in" > <span class="fa fa-tree" style="font-size:70px; color:white;"></span></h1></a></center></div>
 </div></div></div>
        
        
        
        
    </div>

<div class="col-sm-12"style="min-height:100px;margin-top:10px;  font-family: cursive;color:white">
     
    <div class="col-sm-6" style="min-height:50px;background:#00bfa5;">
        <p style="font-size: 20px;margin-bottom: 10px">&copy copyright 2k18 SBSSTC</P>
        <p style="font-size:15px">Design & Maintain By :- </p> <br> 
        <h3 style="margin-top:-20px; color:white">aman  </h3>
        
    
    </div>
    <div class="col-sm-6" style="min-height:100px;background:#00bfa5">
        <p style="margin-top:10px; margin-bottom: -10px">S.B.S.S.T.C , PUNJAB</p>
        <br><br>  <p style="margin-top:-20px">phone:</p>
        <p style="font-size:20px ;color:white"></p>
        </div>
</div>
</div>
    </form>
</body>
</html>
