<%-- 
    Document   : StudentHome.jsp
    Created on : 23 Jul, 2017, 11:33:31 AM
    Author     : user
--%>
<%
  session.invalidate();
%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.Dbmanager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,intial-scale=1oooooooo"/>
   <script>
    function logout()
    {
        window.history.forward();
        window.setTimeout("window.location.href='../login.jsp'",1000);
    }
</script>

    </head>
    <body onload="logout()">
       </body>
</html>
