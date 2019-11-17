<%@page import="mypack.Dbmanager"%>
<%

    String NAME = request.getParameter("name");

    String PHONENO = request.getParameter("phoneno");
    String CITY = request.getParameter("city");
    String ADDRESS = request.getParameter("address");
    String GENDER = request.getParameter("gender");
    String FNAME = request.getParameter("fname");
    String AADHARNO = request.getParameter("aadaharnum");
    String usertype = "student";

    Dbmanager db = new Dbmanager();
    String q="update estreg set name='"+NAME+"',PHONENO='"+PHONENO+"',CITY='"+CITY+"',ADDRESS='"+ADDRESS+"',GENDER='"+GENDER+"',FNAME='"+FNAME+"',AADHARNO='"+AADHARNO+"' where EMAIL='"+session.getAttribute("username") +"'";

    boolean res = db.executeNonQuery(q);
    if (res == true) {
     
        out.println("<script>alert('your profile is successfull updated');window.location.href='../ManageProfile.jsp';</script>");

    } else {
        out.println("<script>alert(' unsuccessfull');window.location.href='../ManageProfile.jsp';</script>");
    }
%>
