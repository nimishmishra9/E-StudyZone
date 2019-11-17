<%-- 
    Document   : test
    Created on : 22 Jul, 2017, 11:28:18 AM
    Author     : user
--%>

<%@page import="mypack.Dbmanager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Dbmanager db = new Dbmanager();
            out.println(db.getCon());
            out.println(db.autoIncrement("id", "feedback"));
        %>
    </body>
</html>
