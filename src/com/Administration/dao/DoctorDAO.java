
package com.Administration.dao;

import com.Administration.model.Doctor;
import java.util.List;

public interface DoctorDAO {
    List<Doctor> getAllDoctorDetails();
    boolean add(Doctor doctor);
    boolean update(Doctor doctor);
    boolean delete(Doctor doctor);
}
