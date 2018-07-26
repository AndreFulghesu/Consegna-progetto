/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestione;

import unica.model.Articoli;
import unica.model.ArticoliFactory;
import unica.model.UtenteFactory;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Andrea
 */
@WebServlet(name = "News", urlPatterns = {"/News"})
public class News extends HttpServlet {

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
        String command = request.getParameter("cmd");
        
        if(command != null && command.equals("search"))
        {
            String query_string = request.getParameter("query");
            
            System.out.println("L'utente ha digitato: " + query_string);
            
            ArrayList<Articoli> all_news = ArticoliFactory.getInstance()
                                    .searchNewsByQueryStr(query_string);
            
            
            request.setAttribute("newsList", all_news);
    }

    }
}