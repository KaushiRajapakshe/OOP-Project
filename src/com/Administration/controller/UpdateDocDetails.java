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
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "UpdateDocDetails", urlPatterns = {"/UpdateDocDetails"})
public class UpdateDocDetails extends HttpServlet {

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
        PrintWriter out = response.getWriter();

        String did = request.getParameter("did");
        String name = request.getParameter("name");
        String status = request.getParameter("status");
        String email = request.getParameter("email");
        String nic = request.getParameter("nic");
        String telephoneNumber = request.getParameter("telephoneNumber");
        String password = request.getParameter("password");
        String mcRegistrationNumber = request.getParameter("mcRegistrationNumber");
        String qualification = request.getParameter("qualification");
        String specialization = request.getParameter("specialization");
        String workingExperience = request.getParameter("workingExperience");

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

        DoctorDAO doctorDao = new DoctorDAOImpl();
        doctorDao.update(doctor);
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
