/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mypack.Dbmanager;
import mypack.SmsSender;

/**
 *
 * @author user
 */
@WebServlet(name = "Enquiry", urlPatterns = {"/Enquiry"})
public class Enquiry extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Enquiry</title>");
            out.println("</head>");
            out.println("<body>");

            Dbmanager dm = new Dbmanager();
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            String address = request.getParameter("address");
            String contactno = request.getParameter("contactno");
            String emailaddress = request.getParameter("emailaddress");
            String message = request.getParameter("message");
            SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
            String enquirydt = df.format(new Date());
            ResultSet rs = dm.getRecord("select nvl(max(id),0)+1 from enquiry");
            rs.next();
            int id = rs.getInt(1);
          
            String query = "insert into enquiry values(" + id + ",'" + name + "','" + gender + "','" + address + "','" + contactno + "','" + message + "','" + emailaddress + "','" + enquirydt + "')";
            boolean res = dm.executeNonQuery(query);
            if (res == true) {
                SmsSender sm=new SmsSender();
                sm.SendSms(contactno, "Hello ! "+name+" Your registration is successfull. welcome in the E-study Zone :-  Nimish Mishra(Team E-Study Zone)");
                out.println("<h2> your enuiry is submitted</h2>");
            } else {
                out.println("<h2>Database  Error</h2>");
            }

            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {

        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
