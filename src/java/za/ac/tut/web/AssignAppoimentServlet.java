/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.AppointmentFacadeLocal;
import za.ac.tut.ejb.bl.EmployeeFacadeLocal;
import za.ac.tut.entity.Appointment;
import za.ac.tut.entity.Employee;

/**
 *
 * @author sibus
 */
public class AssignAppoimentServlet extends HttpServlet {

    @EJB
    private EmployeeFacadeLocal empManager;
    private AppointmentFacadeLocal appointManager;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        long empID = Long.parseLong(request.getParameter("empID"));
        long appointmentID = Long.parseLong(request.getParameter("appointmentID"));
        List<Appointment> appointments = (List<Appointment>) session.getAttribute("appointmentsList");
        List<Appointment> appointmentList = (List<Appointment>) session.getAttribute("appointments");
        
        Appointment appointment = getAppointment(appointmentList, appointmentID);
        appointments.add(appointment);
        
        Employee employee = empManager.find(empID);
        
        session.setAttribute("employee", employee);
        session.setAttribute("appointmentsList", appointments);
        
        request.getRequestDispatcher("confirm_assign_appointment.jsp").forward(request, response);
        processRequest(request, response);
    }
    
    private Appointment getAppointment(List<Appointment> appointmentList, long appointmentID) {
        Appointment appointment = new Appointment();
        for (int i = 0; i < appointmentList.size(); i++) {
            Appointment get = appointmentList.get(i);
            if (get.getId() == appointmentID) {
               appointment = get; 
            }
        }
        return appointment;
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
            out.println("<title>Servlet AssignAppoimentServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AssignAppoimentServlet at " + request.getContextPath() + "</h1>");
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
