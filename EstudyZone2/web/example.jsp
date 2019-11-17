<%-- 
    Document   : example.jsp
    Created on : 22 Jul, 2017, 1:48:10 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap-tbeme.min.css" rel="stylesheet" type="text/css"/>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.header1
{
min-height:50px;
background:black;
color:white;
}
ul li
{
display:inline;
text-decoration:none;
}
li
{
padding:10px 10px;
}
.header2
{
min-height:100px;
background:rgba(0,0,0,0.2);
}
.slider
{
min-height:400px;
background:orange;
}
.mail
{
min-height:60px;
background:rgba(0,0,0,0.2);
font-size:22px;
padding-top:1%;
font-family:monotype corsiva;
color:red;
}
.sevices
{
min-height:400px;
background-image:
background-size:100%,100%;
}
.s1
{
min-height:400px;
background:rgba(255,255,255,0.5);
}
.sin
{
background:lightgray; 
min-height:250px;
margin-top:20px;
border-radius:5px;
font-size:90px;
padding-top:20%;
box-shadow: 10px 10px 10px #888888;
}
</style>
</head>
<body>
<div class="col-sm-12 header1">
<ul>
<li><a href="#" style="color:white;">home</a></li>
<li><a href="#" style="color:white;">contact</a></li>
<li><a href="#" style="color:white;">about us</a></li>
<li><a href="#" style="color:white;">login</a></li>
</ul></div>
<div class="col-sm-12 header2">
<div class="col-sm-1"></div>
<div class="col-sm-2">
<img src="E:\dell walpapers\4156341.jpg" style="width:100px; height:100px; padding:1%"/>
</div>
<div class="col-sm-9"></div></div>

<div class="col-sm-12">
<div class="col-sm-1"></div>
<div class="col-sm-10 slider"></div>
<div class="col-sm-1"></div>
</div>
<div class="col-sm-12 mail">
<marquee><span class="glyphicon glyphicon-hand-left" style="color:green;"></span><a href="#" >hii!!! .......</a></marquee>

<div class="col-sm-12 sevices" style="background-image:url('394-1.jpg'); background-size:1000px 1000px;">
<div class="col-sm-12 s1">
<div class="col-sm-3">
<div class="col-sm-12 sin text-center"><span class="glyphicon glyphicon-cog" style="color:green;"></span><br>
<span style="font-size:40px; color:gray">setting</span>
</div>
</div>
<div class="col-sm-3">
<div class="col-sm-12 sin text-center">
<span class="glyphicon glyphicon-pencil" style="color:green;"></span><br>
<span style="font-size:40px; color:gray"><a>login</a></span>
</div></div>
<div class="col-sm-3">
<div class="col-sm-12 sin  text-center">
<span class="glyphicon glyphicon-earphone" style="color:green; "></span><br>
<span style="font-size:40px; color:gray">contact us</span>
</div></div>
<div class="col-sm-3">
<div class="col-sm-12 sin  text-center">
<a href="#"><span class="glyphicon glyphicon-option-horizontal" style="color:green;"></span><br></a>
<span style="font-size:40px; color:gray">more</span>
</div></div>
</div>
 </div></div>
</body>
</html>