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
public class UpdateServlet extends HttpServlet {
    
    CompteDAO compteDAO;

    @Override
    public void init() throws ServletException {
        DaoFactory daofactory = DaoFactory.getInstance();
        this.compteDAO = daofactory.getCompteDAOImpl();
        
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom = req.getParameter("nom");
        String prenom  = req.getParameter("prenom");
        String mail  = req.getParameter("mail"); 
        String genre  = req.getParameter("genre");
        String contact  = req.getParameter("contact");
        String adresse  = req.getParameter("adresse");
        String mot_de_passe = req.getParameter("mot_de_passe"); 
        Compte compte = new Compte();
        compte.setNom(nom);
        compte.setPrenom(prenom);
        compte.setMail(mail);
        compte.setGenre(genre);
        compte.setContact(contact);
        compte.setAdresse(adresse);
        compte.setMot_de_passe(mot_de_passe);
        try {
            compteDAO.update(compte,req.getParameter("modif"));
        } catch (Exception e) {
        }
        
        resp.sendRedirect("http://localhost:8085/TPweBservlet/compte");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(req.getParameter("modif")!=null){
            
             req.setAttribute("update", compteDAO.getAll(req.getParameter("modif")));
             this.getServletContext().getRequestDispatcher("/UpdateJSP.jsp").forward(req, resp); 
        }
    }
    
    
    
}
