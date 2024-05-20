/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.AppointmentFacadeLocal;
import za.ac.tut.ejb.bl.PaymentFacadeLocal;
import za.ac.tut.ejb.bl.ServiceFacadeLocal;
import za.ac.tut.entity.Appointment;
import za.ac.tut.entity.Customer;
import za.ac.tut.entity.CustomerFacadeLocal;
import za.ac.tut.entity.Payment;
import za.ac.tut.entity.Service;

/**
 *
 * @author sibus
 */
public class PaymentServlet extends HttpServlet {

    @EJB
    private AppointmentFacadeLocal appointmentManager;
    private PaymentFacadeLocal paymentManager;
    private ServiceFacadeLocal serviceManager;
    private CustomerFacadeLocal customerManager;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Service theService = (Service) session.getAttribute("theService");
        Customer customer = (Customer) session.getAttribute("customer");

        //create a service and add it to the list
        List<Service> services = new ArrayList<>();
        services.add(theService);

        //create List of Appoinment
        List<Appointment> appointments = (List<Appointment>) session.getAttribute("appointments");
        //get payment method from dropdown
        String paymentMethod = request.getParameter("paymentMethod");

        //Appointment appointment;
        //Payment payment;
        double amount;
        String url = "index.html";

        //find customer in db
        if (paymentMethod.equals("Cash Payment")) {
            amount = 0.00;
            Payment payment = new Payment(amount, new Date());
            Appointment appointment = new Appointment(new Date(), services, payment);
            appointment.setCustomerID(customer.getId());
            appointments.add(appointment);
            customer.setAppointments(appointments);
            appointmentManager.create(appointment);
//            customer.setAppointments(appointments);
//            customerManager.edit(customer);
            //paymentManager.create(payment);
            //appointmentManager.create(appointment);
            //url = "payement_completed.jsp";
            // session.setAttribute("customer", customer);
            request.getRequestDispatcher("payement_completed.jsp").forward(request, response);
        } else {
            amount = theService.getPrice();
            Payment payment = new Payment(amount, new Date());
            Appointment appointment = new Appointment(new Date(), services, payment);
            appointment.setCustomerID(customer.getId());
            appointments.add(appointment);
            customer.setAppointments(appointments);
            appointmentManager.create(appointment);
            request.getRequestDispatcher("enter_card_details.jsp").forward(request, response);
        }

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
            out.println("<title>Servlet PaymentServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PaymentServlet at " + request.getContextPath() + "</h1>");
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
