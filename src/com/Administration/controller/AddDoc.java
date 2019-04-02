/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Administration.controller;

import com.Administration.dao.DoctorDAO;
import com.Administration.dao.DoctorDAOImpl;
import com.Administration.model.Doctor;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author user
 */
@WebServlet(name = "AddDoc", urlPatterns = {"/AddDoc"})
public class AddDoc extends HttpServlet {

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
       
        String Doctor_ID = request.getParameter("did");
        String Name = request.getParameter("name");
        String Status = request.getParameter("status");
        String Email = request.getParameter("email");
        String NIC_Number = request.getParameter("nic");
        String Telephone_Number = request.getParameter("telephoneNumber");
        String Password = request.getParameter("password");
        String MC_Registration_Number = request.getParameter("mcRegistrationNumber");        
        String Qualification = request.getParameter("qualification");
        String Specialization = request.getParameter("specialization");
        String Working_experience = request.getParameter("workingExperience");

        Doctor doctor = new Doctor();
        doctor.setDID(Doctor_ID);
        doctor.setName(Name);
        doctor.setStatus(Status);
        doctor.setEmail(Email);
        doctor.setNIC(NIC_Number);
        doctor.setTelephoneNumber(Telephone_Number);
        doctor.setPassword(Password);
        doctor.setMcRegistrationNumber(MC_Registration_Number);       
        doctor.setQualification(Qualification);
        doctor.setSpecialization(Specialization);
        doctor.setWorkingExperience(Working_experience);

        DoctorDAO doctorDao = new DoctorDAOImpl();
        doctorDao.add(doctor);
        response.sendRedirect("DoctorManagement.jsp");

      
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
       // System.out.println("doc id is " + id);
        //request.setAttribute("value", id);
        //request.getRequestDispatcher("AddDoc.jsp").forward(request, response);
    }

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
