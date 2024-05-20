/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.entity.Appointment;
import za.ac.tut.entity.Car;
import za.ac.tut.entity.Customer;
import za.ac.tut.entity.CustomerFacadeLocal;
import za.ac.tut.exception.UserAlreadyExistException;
import za.ac.tut.model.CarWashManager;

/**
 *
 * @author sibus
 */
public class SignInServlet extends HttpServlet {

    @EJB
    CustomerFacadeLocal cusManager;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        CarWashManager manager = new CarWashManager();
        String name = request.getParameter("name");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String strDob = request.getParameter("dob");
        SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
        Date dob = null;
        try {
            dob = format.parse(strDob);
        } catch (ParseException ex) {
            ex.printStackTrace();
        }
        String password = request.getParameter("thePassword");
        String confirmPassword = request.getParameter("confirmationPassword");
         boolean numberLength = manager.checkNumberLength(phoneNumber.length());
        CarWashManager customerManager = new CarWashManager();
        boolean notBlank = customerManager.isBlank(name, phoneNumber, email, password, confirmPassword);
        boolean isValidPassword = customerManager.isPassWordValid(password, confirmPassword);
        boolean notOnDB = manager.doesUserExist(phoneNumber, cusManager.findAll());
        if (numberLength && notBlank && isValidPassword && notOnDB) {
            Customer customer = new Customer(name, phoneNumber, email, gender, dob, password);
            List<Car> carList = new ArrayList<>();
            List<Appointment> appointments = new ArrayList<>();

            session.setAttribute("customer", customer);
            session.setAttribute("carList", carList);
            session.setAttribute("appointments", appointments);
            //manager.create(customer);
            //request.setAttribute("customer", customer);

            request.getRequestDispatcher("customer_login_outcome.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("sign_in.html").forward(request, response);
        }

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
            out.println("<title>Servlet SignInServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignInServlet at " + request.getContextPath() + "</h1>");
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
