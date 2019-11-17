<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.Dbmanager"%>
<%
    String[] id = request.getParameterValues("p[]");
    Dbmanager db = new Dbmanager();
    if (id != null) {
        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        String str1 = "select * from consreg where EMAIL='" + session.getAttribute("username") + "'";

        String str = "select subject from javam where EMAIL='" + session.getAttribute("username") + "'";
            
    
        for (int i = 0; i < id.length; i++) {
            
    if(id !=null)
    {
            
            String query = "insert into attendence values('p','" +id[i] + "','" + db.getCurrentDate() + "','JAVA')";
            db.executeNonQuery(query);
    }         else
                {
                    
  String que = "insert into attendence values('A','" +id[i] + "','" + db.getCurrentDate() + "','JAVA')";
  db.executeNonQuery(que);
                }
        
        
        
        
        }
         String strq = "update attendence set att='A' where att<>'P' and tme='"+db.getCurrentDate()+"'";
       
        
        out.print("Ok");
    } else {

    }
%>