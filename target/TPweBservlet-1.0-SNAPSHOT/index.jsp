<%-- 
    Document   : index.jsp
    Created on : 30 juil. 2022, 02:55:33
    Author     : inclu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compte</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
<form action="compte" method="POST">       
 <section class="h-100 bg-dark">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase text-center">compte</h3>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <label class="form-label" for="form3Example1m">Nom</label>
                      <input type="text" id="form3Example1m" class="form-control form-control-lg" name="nom" required/>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <label class="form-label" for="form3Example1n">Prenom</label>
                      <input type="text" id="form3Example1n" class="form-control form-control-lg" name="prenom" required/>
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                       <label class="form-label" for="form3Example1m1">Mail</label> 
                      <input type="text" id="form3Example1m1" class="form-control form-control-lg" name="mail" required/>  
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <label class="form-label" for="form3Example1n1">Mot de passe</label>
                      <input type="password" id="form3Example1n1" class="form-control form-control-lg" name="mot_de_passe" required/>
                      
                    </div>
                  </div>
                </div>

                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example8">Adresse</label>
                  <input type="text" id="form3Example8" class="form-control form-control-lg" name="adresse" required/>
                  
                </div>
                
                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example9">Contact</label>
                  <input type="text" id="form3Example9" class="form-control form-control-lg" name="contact" required/>
                  
                </div>
                 
                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example9">Genre</label>
                    <select class="form-control form-control-lg" name="genre">
                      <option value="Masculin">Masculin</option>
                      <option value="Feminin">Feminin</option>
                      
                    </select>
                
           
                <div class="d-flex justify-content-center pt-3">
                    
                  <input class="btn btn-warning btn-lg ms-2 " type="submit" name="boutonOK" value="Valider"/>
                  
                </div>
                    <br/>
                    <div class="text-center  small"><a  target="_blank" href="http://localhost:8085/TPweBservlet/compte" >Liste comptes ici !!!</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
        
  </div>
</section>