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
        <script src="css/jquery.js" type="text/javascript"></script>
        <script src="css/bootstrap.min.js" type="text/javascript"></script>
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/hover-min.css" rel="stylesheet" type="text/css"/>
        <style>
            .outer
            {
                min-height:700px;
                background:lightseagreen;
            }
            .menu
            {
                margin-top:5px;
                min-height:50px; 
                background:#398439;


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
                margin-right:5px;
                margin-top:10px;
                border: 1px solid white;
            }


            li:hover
            {

                background:#37474f;

            }
            .middle
            {
                min-height:400px;
                margin-top:5px;
            }
            .footer
            {
                min-height:150px;   
                margin-top:5px;
                background:#a5d6a7;
            }
        </style>
    </head>
    <body>
        <div class="col-sm-12">
            <div class="outer">
                <div class="header" style="min-height:100px;"> 
                    <div class="row">  <div class="col-sm-12" style="min-height:10px;">
                            <div class="col-sm-3" style="min-height:100px; background:#398439; "></div>
                            <div class="col-sm-9" style="min-height:100px; background:#398439;"></div>
                        </div> </div>
                </div>
                <div class="menu"> <div class="col-lg-12">

                        <div class="col-sm-11">
                            <ul>
                                <li class="hvr hvr-bounce-in"><i><b><a>Home</a></b></i></li>
                                <li class="hvr hvr-bounce-in"><i><b><a>New</a></b></i></li>
                                <li class="hvr hvr-bounce-in"><i><b><a>Discussion</a></b></i></li>
                                <li class="hvr hvr-bounce-in"><i><b><a>Complain</a></b></i></li>
                                <li class="hvr hvr-bounce-in"><i><b><a>Feedback</a></b></i></li>
                                <li class="hvr hvr-bounce-in"><i><b><a>Manage Profile</a></b></i></li>
                                <li class="hvr hvr-bounce-in"><i><b><a>Change Password</a></b></i></li>
                            </ul></div>
                        <div class="col-lg-1"></div>
                    </div> 
                </div>
                <div class="row">    <div class="row"> <div class="middle"> 
                            <div class="col-sm-12">
                                <div class="col-sm-3" style="min-height:400px;background:#3c3c3c">

                                    <marquee direction="up"  scrollamount="8" onmouseover="stop();" onmouseout="start();" >
                                        <h3 class="hvr hvr-bounce-in" style="margin-right:5px;"><i><a href="#" style="color:white; text-decoration:none;">Notifications</a></i></h3> <br>   
                                        <h3 class="hvr hvr-bounce-in"><i><a href="#" style="color:white; text-decoration:none">New</a ></i></h3> <br>   
                                        <h3 class="hvr hvr-bounce-in"><i><a href="#" style="color:white; text-decoration:none">News</a></i></h3> <br>   
                                        <h3 class="hvr hvr-pop"><i><a href="#" style="color:white; text-decoration:none">Current</a></i></h3><br>    
                                        <h3 class="hvr hvr-bounce-in"><i><a href="#" style="color:white; text-decoration:none">E-Books</a></i></h3> <br>   
                                        <h3 class="hvr hvr-bounce-in"><i><a href="#" style="color:white; text-decoration:none">Doubt</a></i></h3><br>   
                                    </marquee>
                                </div>

                                <div class="col-sm-9" style=" min-height:400px;background:#398439;"> 
                                    <form action="stcode/postanscode.jsp" method="post">    

                                        <div class="col-sm-4">
                                            <br>                                


                                            <span style="color:white;font-size:30px">Q. &nbsp;</span>       <span style="color:white; font-size:30px"><%=request.getParameter("qus")%></span>

                                            <br>                                
                                            <div class="input-group">
                                                <input type="hidden" name="qid" value="<%=request.getParameter("qid") %>">
                                                <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-text-size "></span></span>
                                                <input type="text" name="answer" class="form-control" placeholder="enter your answer" aria-describedby="basic-addon1"/>
                                            </div><br>
                                            <div class="input-group">
                                                <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-send"></span></span>
                                                <input type="submit" value="submit" class="form-control"  aria-describedby="basic-addon1"/>
                                                <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-send"></span></span>
                                            </div>

                                        </div> 

                                    </form>      

                                </div></div></div>




                    </div></div>
                <div class="footer">
                    <div class="col-lg-12">
                        <><><><>
                    </div>
                </div>
            </div></div>
    </body>
</html>