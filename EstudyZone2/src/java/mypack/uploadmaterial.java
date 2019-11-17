/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet(name = "uploadmaterial", urlPatterns = {"/uploadmaterial"})
public class uploadmaterial extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet uploadmaterial</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet uploadmaterial at " + request.getContextPath() + "</h1>");
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
            throws ServletException, IOException 
    {
        processRequest(request, response);
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
            throws ServletException, IOException
    {
        PrintWriter out = response.getWriter() ;
        try {
          Part p=  request.getPart("upfile");
          String filename=p.getSubmittedFileName();
         InputStream i=p.getInputStream();
        Dbmanager db=new Dbmanager();
        int a=db.autoIncrement("ID","uploaddata");
        String msg=request.getParameter("msg");
        String str="insert into uploaddata values('"+a+"','"+(a+filename)+"','"+msg+"','"+db.getCurrentDate()+"')";
        if(db.executeNonQuery(str)==true)
        {
            File f=new File(request.getRealPath("/AdminZone/adminupload"),a+filename);
            Files.copy(i,f.toPath());
            out.println("<script>alert('done');window.location.href='AdminZone/adminuploadcenter.jsp';</script>");
        }
        else
        {
            out.println("<script>alert('sry');window.location.href='/AdminZone/adminuploadcenter.jsp';</script>");
        }
        } catch (Exception e) {
            out.println("error"+e);
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
