/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tut.ac.za;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tut.ac.staff.bl.StaffFacadeLocal;
import tut.ac.staff.entities.Staff;
import tut.ac.za.bl.AdminFacadeLocal;

/**
 *
 * @author T-man
 */
@WebServlet(name = "AddStaffServlet", urlPatterns = {"/AddStaffServlet"})
public class AddStaffServlet extends HttpServlet {
    
    @EJB AdminFacadeLocal afl;
    @EJB StaffFacadeLocal stf;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Long staffno=Long.parseLong(request.getParameter("staffno"));
        String surname=request.getParameter("surname");
        String initials=request.getParameter("initials");
        String labName=request.getParameter("labName");
        
        
        Staff staff=createStaff(staffno, surname, initials, labName);
        
        Admin admin=afl.verifyStudentNumber(staffno);
        
        
        
        stf.create(staff);
        
        request.setAttribute("staff", staff);
        
        RequestDispatcher disp=request.getRequestDispatcher("signin_output.jsp");
        disp.forward(request, response);
        
    }
    
    private Staff createStaff(Long staffno, String surname, String initials,String labName){
        Staff staff=new Staff();
        staff.setInitials(initials);
        staff.setId(staffno);
        staff.setLabName(labName);
        staff.setSurname(surname);
        staff.setSigninDate(new Date());
        
        
        return staff;
    }


}
