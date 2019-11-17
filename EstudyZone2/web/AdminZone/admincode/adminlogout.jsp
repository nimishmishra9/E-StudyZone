<%-- 
    Document   : adminlogout
    Created on : 29 Jul, 2017, 10:15:40 AM
    Author     : user
--%>
<%
   session.invalidate();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../AdminHome.jsp'",2000);
            }
        </script>
    </head>
    <body onload="logout()">
        
    </body>
</html>
