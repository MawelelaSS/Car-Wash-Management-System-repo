/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
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
public class ViewWasherAppointmentsServlet extends HttpServlet {
    @EJB 
    private EmployeeFacadeLocal empManager;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        long carWasherId = (long)session.getAttribute("car_washer_id");
        Employee employee = empManager.find(carWasherId);
        
        List<Appointment> appointments = employee.getAppointments();
        request.setAttribute("appointments", appointments);
        
        request.getRequestDispatcher("view_washer_appointment_outcome.jsp").forward(request, response);
    }
}