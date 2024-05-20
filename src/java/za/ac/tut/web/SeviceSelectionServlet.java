/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.ServiceFacadeLocal;
import za.ac.tut.entity.Service;

/**
 *
 * @author sibus
 */
public class SeviceSelectionServlet extends HttpServlet {

    @EJB
    private ServiceFacadeLocal sfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String service = request.getParameter("service");
        String description = "";
        double price = 0;
        
        //System.out.println("service : " + service);
        if (service.equals("Full Wash")) {
            price = 150.00;            
            description = "Exterior wash, vacuum, and window cleaning with wax and tire shine";
        } else if (service.equals("Interior Wash")) {
            price = 40.00;            
            description = "Thorough cleaning of interior surfaces";
        } else if (service.equals("Premium Wash")) {
            price = 100.00;            
            description = "Deluxe wash with wax and tire shine";
        } else {
            if (service.equals("Basic Wash")) {
                price = 80.00;                
                description = "Exterior wash, vacuum, and window cleaning";
            }
        }
        Service createService = new Service(service, price, description);
        //sfl.create(createService);
        
        session.setAttribute("service", service);
        session.setAttribute("price", price);
        session.setAttribute("description", description);
        session.setAttribute("theService", createService);
        request.getRequestDispatcher("confirm_booking.jsp").forward(request, response);
        
        processRequest(request, response);
    }

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SeviceSelectionServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SeviceSelectionServlet at " + request.getContextPath() + "</h1>");
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
