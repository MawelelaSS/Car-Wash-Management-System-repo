/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.EmployeeFacadeLocal;
import za.ac.tut.entity.Employee;

/**
 *
 * @author sibus
 */
public class ViewWasherEmployeesServlet extends HttpServlet {
    @EJB 
    private EmployeeFacadeLocal manager;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String position = "car washer";
        List<Employee> employee = new ArrayList<>();
        List<Employee> employees = manager.findAll();
        for (int i = 0; i < employees.size(); i++) {
            Employee get = employees.get(i);
            if (get.getPosition().equalsIgnoreCase(position)) {
              employee.add(get);
            }
            
        }
        session.setAttribute("employee", employee);
        request.getRequestDispatcher("viewing_washer_outcomes.jsp").forward(request, response);
    }

}
