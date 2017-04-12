/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ubl.jwp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author edwin < edwinkun at gmail dot com >
 */
public class RegistrasiServlet extends HttpServlet {

    // harusnya menggunakan database, namun sementara pakai array dulu ya
    private String[] data = {"Nama 1", "Nama 2", "Nama 3"};
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nama = request.getParameter("nama");
        
        // ambil array dari session
        HttpSession session = request.getSession();
        String dataHasilSessions[] = (String[]) session.getAttribute("data");
        
        // create array baru
        if(dataHasilSessions == null)
            dataHasilSessions = new String[0];
        String a[] = new String[dataHasilSessions.length+1];
        
        // copy isi array session ke array baru
        for (int i = 0; i < dataHasilSessions.length; i++) {
            a[i] = dataHasilSessions[i];
        }
        
        // masukkan data terakhir ke array paling belakang
        a[dataHasilSessions.length] = nama;
        
        // terakhir masukkan aray baru ke session
        session.setAttribute("data", a);
        
        response.sendRedirect("/JWP05UTS/admin/registrasi.jsp");
    }
}
