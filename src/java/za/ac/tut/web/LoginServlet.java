/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.EmployeeFacadeLocal;
import za.ac.tut.entity.Customer;
import za.ac.tut.entity.CustomerFacadeLocal;
import za.ac.tut.entity.Employee;
import za.ac.tut.exception.UserDoNotExistException;
import za.ac.tut.model.CarWashManager;

/**
 *
 * @author sibus
 */
public class LoginServlet extends HttpServlet {

    @EJB
    private CustomerFacadeLocal manager;
    private EmployeeFacadeLocal empManager;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String rootUsername = getServletConfig().getInitParameter("username");
        String rootPassword = getServletConfig().getInitParameter("password");
        String washerUsername = getServletConfig().getInitParameter("car_washer_username");
        String washerPassword = getServletConfig().getInitParameter("car_washer_password");
        String url = "index.html";
        CarWashManager theManager = new CarWashManager();
       boolean isBlank = theManager.isBlank(username, password,rootUsername, rootPassword);
       boolean carWasherBlank = theManager.isBlank(username, password,rootUsername, rootPassword);
       
        List<Customer> customersList = manager.findAll();
            Customer customer = getCustomer(customersList, username);
        if (theManager.AunthenticateAdmin(username, password, rootUsername, rootPassword)) {
            // request.getRequestDispatcher("admin_login_outcome.jsp").forward(request, response);
            url = "admin_login_outcome.jsp";

        } else if (theManager.AunthenticateCarWasher(username, password, washerUsername, washerPassword)) {
            //Employee employee = empManager.find(url)
            url = "car_washer_id_entry.jsp";
        } 
        
        else if (theManager.AunthenticateCustomer(password, customer)) {
           
            //List<Car> cars = customer.getCars();
            
                session.setAttribute("customer", customer);
                url = "customer_operation_choice.jsp";
            }else{
            throw new UserDoNotExistException("User Do not Exist");
        }
        

        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
        processRequest(request, response);
    }

    private Customer getCustomer(List<Customer> customersList, String username) {
        Customer customer = null;
        for (int i = 0; i < customersList.size(); i++) {
            Customer get = customersList.get(i);
            if (get.getPhoneNumber().equals(username)) {
                customer = get;
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
            out.println("<title>Servlet LoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
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
