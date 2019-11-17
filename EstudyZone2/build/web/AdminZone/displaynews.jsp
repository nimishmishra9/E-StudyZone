<%-- 
    Document   : displaynews
    Created on : 29 Jul, 2017, 10:32:24 AM
    Author     : user
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.Dbmanager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Display news</h1>
        <table border="1px solid black">
            <tr>
                <th>ID</th>
                <th>MSG</th>
                <th>date</th>
                <th>delete</th>
            </tr>
            <%
               Dbmanager db=new Dbmanager();
               String str="select * from news";
             ResultSet rs=db.getRecord(str);
             while(rs.next())
             {
            %>
            <tr>
                <td><%=rs.getString("id")%></td>
                <td><%=rs.getString("msg")%></td>
                <td><%=rs.getString("cdate")%></td>
                <td><a href="admincode/deletenews.jsp?id=<%=rs.getString("id")%>">Delete</a></td>
            </tr>
            <%
             }
            %>
        </table>
    </body>
</html>
