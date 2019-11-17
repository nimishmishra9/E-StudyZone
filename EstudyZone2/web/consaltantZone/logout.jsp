<%
    session.invalidate();
    %>


<%-- 
    Document   : logout
    Created on : 25 Jul, 2017, 7:00:20 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function clear()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../login.jsp'",500);
                
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onload="clear()">
     
    </body>
</html>
