/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Library;

import static com.sun.javafx.animation.TickCalculation.sub;
import com.sun.javafx.font.LogicalFont;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user1
 */
@WebServlet(name = "LibraryManagement", urlPatterns = {"/LibraryManagement"})
public class LibraryManagement extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         String username = request.getParameter("username");
           String password = request.getParameter("password");
           int flag=0;
           String sub = "Invalid username";
        try (PrintWriter out = response.getWriter()) {
           String a  = (String)request.getParameter("remamber");
            
          //out.print(a);
           if(a != null)
            {
                out.print(username+"=============");
                 out.print(password); 
                Cookie c = new Cookie("username", username);
                 c.setMaxAge(30);
                 response.addCookie(c);
                 Cookie c1 = new Cookie("password", password);
                 c1.setMaxAge(30);
                 response.addCookie(c1);
                 
            } 
           if(username.equals("user1") || username.equals("abcd"))
           {
               if(password.equals("user1"))
               {
                   response.sendRedirect("page1.jsp");
               }
               else if(password.equals("user10702"))
               {
                   
                   response.sendRedirect("page2.jsp");
                   
//                     disp = response.("/page1");
//                     disp.include(request, response);
               }
               else
                {
                   sub = "Invalid  password";
                   flag=1;
                }  

           }
           else
           {
               flag=1;
           }
           if(flag==1)
           {
               String str = "<font color=\"red\">" + sub + "</font>";
                request.setAttribute("str", str);
                
                RequestDispatcher disp = request.getRequestDispatcher("/LogIn.jsp");
                disp.include(request, response);
              
              
              // response.sendRedirect("http://localhost:8084/Login/LogIn.jsp");
           }
           
           
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
