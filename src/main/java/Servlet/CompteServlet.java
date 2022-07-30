/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import DAO.CompteDAO;
import DAO.DaoFactory;
import Model.Compte;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author inclu
 */
public class CompteServlet extends HttpServlet {
    CompteDAO compteDAO;

    @Override
    public void init() throws ServletException {
        DaoFactory daofactory = DaoFactory.getInstance();
        this.compteDAO = daofactory.getCompteDAOImpl();
        
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet requestuest
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        if(!"".equals(request.getParameter("suppr"))){
           compteDAO.delete(request.getParameter("suppr"));
           
        }else{
            System.out.println("Pas de Suppession de N° : "+request.getParameter("suppr"));
            
        }
        
        if(request.getParameter("sort")!=null){
            request.setAttribute("compte", compteDAO.getAll(request.getParameter("sort")));
             this.getServletContext().getRequestDispatcher("/CompteJSP.jsp").forward(request, response); 
        }else{
            request.setAttribute("compte", compteDAO.getAll());
            this.getServletContext().getRequestDispatcher("/CompteJSP.jsp").forward(request, response);
        }
       
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
        
        String nom = request.getParameter("nom");
        String prenom  = request.getParameter("prenom");
        String mail  = request.getParameter("mail"); 
        String genre  = request.getParameter("genre");
        String contact  = request.getParameter("contact");
        String adresse  = request.getParameter("adresse");
        String mot_de_passe = request.getParameter("mot_de_passe"); 
        Compte compte = new Compte();
        compte.setNom(nom);
        compte.setPrenom(prenom);
        compte.setMail(mail);
        compte.setGenre(genre);
        compte.setContact(contact);
        compte.setAdresse(adresse);
        compte.setMot_de_passe(mot_de_passe);
        try {
            compteDAO.save(compte);
        } catch (Exception e) {
        }
        
        response.sendRedirect("http://localhost:8085/TPweBservlet/compte");
    }


    
    
    

}
