/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.entity.Customer;

/**
 *
 * @author sibus
 */
public class SaveCustomerByGender extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Customer> customers = (List<Customer>) session.getAttribute("customers");
        
        File file = new File("Gender based Details.txt");
        file.delete();
        file.createNewFile();
        for (int i = 0; i < customers.size(); i++) {
            Customer customer = customers.get(i);
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

            BufferedWriter bw = new BufferedWriter(new FileWriter(file,true));

            bw.write("Customer ID: " + customer.getId().toString());
            bw.newLine();
            bw.write("Name: " + customer.getName());
            bw.newLine();
            bw.write("Phone Number: " + customer.getPhoneNumber());
            bw.newLine();
            bw.write("EmailAddress: " + customer.getEmail());
            bw.newLine();
            bw.write("Gender: " + customer.getGender());
            bw.newLine();
            bw.write("Date Of Birth " + format.format(customer.getDob()));
            bw.newLine();
            bw.write("Password: " + customer.getPassword());
            bw.newLine();
            bw.write("==============Your Car(s) details==============\n"
                    + "REGISTRATION: " + customer.getCars().get(0).getRegistration() + "\n"
                    + "MANUFACTURER: " + customer.getCars().get(0).getManufacturer() + "\n"
                    + "MODEL: " + customer.getCars().get(0).getModel() + "\n"
                    + "MODE3L YEAR: " + customer.getCars().get(0).getYear());
            bw.newLine();
            bw.flush();

        }
        request.setAttribute("file", file);
        request.getRequestDispatcher("saving_female_customer_details_to_file_outcomes.jsp").forward(request, response);
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
            out.println("<title>Servlet SaveCustomerByGender</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SaveCustomerByGender at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
