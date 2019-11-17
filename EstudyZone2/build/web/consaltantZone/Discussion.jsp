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
                         
                   
 <div class="row">   <div class="col-sm-9" style=" min-height:390px;margin-left:208px;"> 
       
                    <form action="stcode/postquestion.jsp" method="post">    

                                        <div class="col-sm-6">
                                            <br>                                
                                            <div class="input-group">
                                                <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-text-size"></span></span>
                                                <input type="text" name="question" class="form-control" placeholder="enter the Question" aria-describedby="basic-addon1"/>
                                           
                                                 <span class="input-group-addon" id="basic-addon1"></span>
                                                <input type="submit" value="Post your Question" class="form-control"  aria-describedby="basic-addon1" style="color:white; background:lightseagreen;"/>
                                                <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-send"></span></span>
                                            </div><br><br>

                                        </div> 
                                        
                                    </form>      
                                 <div class="row">
                            <div class="col-sm-12">
                                <table class="table table-bordered table-hover table-responsive">
                                    <tr>
                                        <th>S.No.</th>
                                        <th>Question</th>
                                        <th>Post By</th>
                                        <th>Post Date</th>
                                        <th>Reply</th>
                                        <th>View</th>
                                    </tr>
                                    <%
                                        int n = 1;
                                        Dbmanager d = new Dbmanager();
                                        String q = "select * from qus order by qid desc";
                                        ResultSet rs = d.getRecord(q);
                                        while (rs.next()) {
                                    %>

                                    <tr>
                                        <td><%=n%></td>   
                                        <td><%=rs.getString("qtext")%></td>   
                                        <td><%=rs.getString("userid")%></td>   
                                        <td><%=rs.getString("cdate")%></td>   
                                        <td><a href="consreply.jsp?qid=<%=rs.getString("qid")%>&qus=<%=rs.getString("qtext")%>">Reply</a></td>   
                                        <td><a href="showconsans.jsp?qid=<%=rs.getString("qid")%>&qus=<%=rs.getString("qtext")%>">View</a></td>   
                                      
                                    </tr>
                                    <%
                                        }
                                    %>
                                </table>
                            </div>
                        </div>
                                 </div>  </div></div></div></div>
                <div class="footer">
                    <div class="col-lg-12">
            
                    </div>
                </div></div>
           </div> </div></div>
       </body>
</html>
