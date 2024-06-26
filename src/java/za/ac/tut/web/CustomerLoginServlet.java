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
import za.ac.tut.entity.Car;
import za.ac.tut.entity.Customer;
import za.ac.tut.entity.CustomerFacadeLocal;
import za.ac.tut.model.CarWashManager;

/**
 *
 * @author sibus
 */
public class CustomerLoginServlet extends HttpServlet {

    @EJB
    CustomerFacadeLocal manager;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       HttpSession session = request.getSession();
        String username = request.getParameter("phoneNumber");
        String password = request.getParameter("password");
        CarWashManager theManager = new CarWashManager();
        
        
        List<Customer> customersList = manager.findAll();
        Customer customer = getCustomer(customersList, username);
        //List<Car> cars = customer.getCars();
        if (theManager.AunthenticateCustomer(password, customer)) {
            
            session.setAttribute("customer", customer);
            request.getRequestDispatcher("select_service.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("customer_login.html").forward(request, response);
        }

        //processRequest(request, response);
    }

    private Customer getCustomer(List<Customer> customersList, String username) {
        Customer customer = null;
        for (int i = 0; i < customersList.size(); i++) {
            Customer get = customersList.get(i);
            if (get.getPhoneNumber().equals(username)) {
                 customer =  get;
            }
        }
        return customer;
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
            out.println("<title>Servlet CustomerLoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CustomerLoginServlet at " + request.getContextPath() + "</h1>");
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
