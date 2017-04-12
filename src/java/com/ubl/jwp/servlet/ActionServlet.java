package com.ubl.jwp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * <pre>
 *  com.ubl.jwp.servlet.ActionServlet 
 * </pre>
 *
 * @author edwin < edwinkun at gmail dot com >
 * Apr 12, 2017 10:31:53 AM
 *
 */
public class ActionServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // tangkap username dan password
        String nama = request.getParameter("nama");
        String password = request.getParameter("password");
        
        // misalkan berhasil, maka forward ke halaman admin kemudian berikan session
        if(nama.equals("admin") && password.equals("admin")) {
            HttpSession session = request.getSession();
            session.setAttribute("nama", nama); // set session dengan parameter "nama"
            
            response.sendRedirect("admin/registrasi.jsp");  
        } else {
            // gagal login, arahkan ke index.jsp
            response.sendRedirect("index.jsp?error=fail");  
        }
        
    }
    
}
