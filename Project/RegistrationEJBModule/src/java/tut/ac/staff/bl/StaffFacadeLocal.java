/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tut.ac.staff.bl;

import java.util.List;
import javax.ejb.Local;
import tut.ac.staff.entities.Staff;

/**
 *
 * @author T-man
 */
@Local
public interface StaffFacadeLocal {

    void create(Staff staff);

    void edit(Staff staff);

    void remove(Staff staff);

    Staff find(Object id);

    List<Staff> findAll();

    List<Staff> findRange(int[] range);

    int count();
    
    Staff findByStaffNo(Long staffNo);
    
    void editStaff(Long originalStaffNo, Staff updatedStaff);

    List<Staff> openLabs();
    
    boolean isLabOccupied(String labName);
    
}
