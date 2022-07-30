/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Compte;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author inclu
 */
public class CompteDAO implements IDAO<Compte>{
    
    private DaoFactory daofactory;
    Connection cnx=null;
    PreparedStatement pst = null;

    CompteDAO(DaoFactory aThis) {
        this.daofactory = DaoFactory.getInstance();
    }

    @Override
    public void save(Compte e) {
         try {
            cnx = daofactory.getConnexion();
            pst = cnx.prepareStatement("INSERT INTO public.compte(\n" +"nom, prenom, mail, genre, contact, adresse, mot_de_passe)\n" +"VALUES ( ?, ?, ?, ?, ?, ?, ?);");
            pst.setString(1, e.getNom());
            pst.setString(2, e.getPrenom());
            pst.setString(3, e.getMail());
            pst.setString(4, e.getGenre());
            pst.setString(5, e.getContact());
            pst.setString(6, e.getAdresse());
            pst.setString(7, e.getMot_de_passe());
            pst.executeUpdate();
            System.out.println("comit()"+"Mety");
        } catch (SQLException ex) {
            System.out.println("Erreur SQL :: "+ ex.getMessage());
        }catch (Exception ex) {
            System.out.println("Erreur inconnu :: " + ex.getMessage());
        }
    }



    @Override
    public List<Compte> getAll() {
       List<Compte> listeView = new ArrayList<>();
        
        try {
            cnx = daofactory.getConnexion();
            pst = cnx.prepareStatement("SELECT * FROM public.compte");
            
            ResultSet res = pst.executeQuery();
            while(res.next()){
                
                listeView.add(new Compte(res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6),res.getString(7),res.getString(8)));
            }
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
        return listeView; 
    }

    @Override
    public void delete(String e) {
        try {
            
            cnx = daofactory.getConnexion();
            pst = cnx.prepareStatement("DELETE FROM public.compte where nom='"+e+"'");
            pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CompteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Compte> getAll(String sort) {
        List<Compte> listeView = new ArrayList<>();
        
        try {
            cnx = daofactory.getConnexion();
            pst = cnx.prepareStatement("SELECT * FROM public.compte where nom='"+sort+"'");
            
            ResultSet res = pst.executeQuery();
            while(res.next()){
                
                listeView.add(new Compte(res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6),res.getString(7),res.getString(8)));
            }
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
        return listeView; 
    }

    @Override
    public void update(Compte e, String modif) {
        try {
            cnx = daofactory.getConnexion();
            pst = cnx.prepareStatement("UPDATE public.compte SET nom=?, prenom=?, mail=?, genre=?, contact=?, adresse=?, mot_de_passe=?WHERE nom='"+modif+"';");
            pst.setString(1, e.getNom());
            pst.setString(2, e.getPrenom());
            pst.setString(3, e.getMail());
            pst.setString(4, e.getGenre());
            pst.setString(5, e.getContact());
            pst.setString(6, e.getAdresse());
            pst.setString(7, e.getMot_de_passe());
            pst.executeUpdate();
            
        } catch (SQLException ex) {
            System.out.println("Erreur SQL :: "+ ex.getMessage());
        }catch (Exception ex) {
            System.out.println("Erreur inconnu :: " + ex.getMessage());
        }
    }

    
    
}
