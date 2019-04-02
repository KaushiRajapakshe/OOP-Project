/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Administration.dao;

import com.Administration.model.Doctor;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DoctorDAOImpl implements DoctorDAO {

    @Override
    public boolean add(Doctor doctor) {

        String sql =  "INSERT INTO doctor"
                + "(Doctor_ID,Name,Status,Email,NIC_Number,Telephone_Number,Password,MC_Registration_Number,Qualification,Specialization,Working_experience) "
                + "VALUES("
                +"'" + doctor.getDID()
                + "','" + doctor.getName()
                + "','" + doctor.getStatus()
                + "','" + doctor.getEmail()
                + "','" + doctor.getNIC()
                + "','" + doctor.getTelephoneNumber()
                + "','" + doctor.getPassword()
                + "','" + doctor.getMcRegistrationNumber()
                + "','" + doctor.getQualification()
                + "','" + doctor.getSpecialization()
                + "','" + doctor.getWorkingExperience()+"')";
              

        try {
            Connection con = Connection_DB.getInstance().getConnection();
            Statement st = con.createStatement();
          
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(DoctorDAOImpl.class.getName()).log(Level.SEVERE, "Error adding a record to the DB", ex);
            return false;
        }
        return true;
    }

    @Override
    public boolean update(Doctor doctor) {
     
            String sql = "UPDATE doctor " 
                  + "SET " + "Doctor_ID = '" + doctor.getDID()
                    + "',Name = '" + doctor.getName()
                    + " ',Status = '" + doctor.getStatus()
                    + "',Email = '" + doctor.getEmail()
                    + "', NIC_Number = '" + doctor.getNIC()
                    + "',Telephone_Number = '" + doctor.getTelephoneNumber()
                     + "', Password = '" + doctor.getPassword()
                    + "',MC_Registration_Number = '" + doctor.getMcRegistrationNumber()
                    + "',Qualification = '" + doctor.getQualification()
                    + "',Specialization = '" + doctor.getSpecialization()
                    + "',Working_experience = '" + doctor.getWorkingExperience()
                    + "'WHERE Doctor_ID = '" + doctor.getDID()+"'";
                  
            try {
                Connection con = Connection_DB.getInstance().getConnection();
                Statement st2 = con.createStatement();
                st2.executeUpdate(sql);
             
            } catch (SQLException ex) {
                Logger.getLogger(DoctorDAOImpl.class.getName()).log(Level.SEVERE, "Error updating a record to the DB", ex);
                return false;
            }
            
        
        return true;

    }

    @Override
    public boolean delete(Doctor doctor) {
        
            String sql = "DELETE FROM doctor WHERE Doctor_ID = '" + doctor.getDID()+"'";

            try {
                Connection con = Connection_DB.getInstance().getConnection();
                Statement st = con.createStatement();
                st.executeUpdate(sql);
            } catch (SQLException ex) {
                Logger.getLogger(DoctorDAOImpl.class.getName()).log(Level.SEVERE, "Error deleting a record to the DB", ex);
                return false;
            }
        
        return true;
    }

    @Override   
    public List<Doctor> getAllDoctorDetails() {

        ArrayList<Doctor> list = new ArrayList<Doctor>();

        String sql = "SELECT * FROM doctor";

        try {
            Connection con = Connection_DB.getInstance().getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);

            while (rs.next()) {
                String did = rs.getString("DID");
                String name = rs.getString("Name");
                String status = rs.getString("Status");
                String email = rs.getString("Email");
                String nic = rs.getString("NIC");
                String telephoneNumber = rs.getString("TelephoneNumber");
                String password = rs.getString("Password");
                String mcRegistrationNumber = rs.getString("McRegistrationNumber");          
                String qualification = rs.getString("Qualification");
                String specialization = rs.getString("Specialization");
                String workingExperience = rs.getString("WorkingExperience");

                Doctor doctor = new Doctor();
                doctor.setDID(did);
                doctor.setName(name);
                doctor.setStatus(status);
                doctor.setEmail(email);
                doctor.setNIC(nic);
                doctor.setTelephoneNumber(telephoneNumber);
                doctor.setPassword(password);
                doctor.setMcRegistrationNumber(mcRegistrationNumber);                
                doctor.setQualification(qualification);
                doctor.setSpecialization(specialization);
                doctor.setWorkingExperience(workingExperience);

//                boolean add = 
                    list.add(doctor);
                   
                    
            }
        } catch (SQLException ex) {
            Logger.getLogger(DoctorDAOImpl.class.getName()).log(Level.SEVERE, "Error reading records from the DB", ex);
        }

        return list;
    }

}
