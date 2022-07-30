<%-- 
    Document   : UpdateJSP
    Created on : 30 juil. 2022, 05:57:16
    Author     : inclu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modifier Compte</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
<form action="/TPweBservlet/update" method="post">
<c:forEach var="compte" items="${update}">    
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
                <h3 class="mb-5 text-uppercase text-center">Modifier compte</h3>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <label class="form-label" for="form3Example1m">Nom</label>
                        <input type="text" id="form3Example1m" class="form-control form-control-lg small" name="nom" required value='${compte.nom}'/>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <label class="form-label" for="form3Example1n">Prenom</label>
                      <input type="text" id="form3Example1n" class="form-control form-control-lg" name="prenom" required value='${compte.prenom}'/>
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                       <label class="form-label" for="form3Example1m1">Mail</label> 
                      <input type="text" id="form3Example1m1" class="form-control form-control-lg" name="mail" required value='${compte.mail}'/> 
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <label class="form-label" for="form3Example1n1">Mot de passe</label>
                      <input type="password" id="form3Example1n1" class="form-control form-control-lg" name="mot_de_passe" required value='${compte.mot_de_passe}'/>
                      
                    </div>
                  </div>
                </div>

                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example8">Adresse</label>
                  <input type="text" id="form3Example8" class="form-control form-control-lg" name="adresse" required value='${compte.adresse}'/>
                  
                </div>
                
                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example9">Contact</label>
                  <input type="text" id="form3Example9" class="form-control form-control-lg" name="contact" required value='${compte.contact}'/>
                  
                </div>
                 
                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example9">Genre</label>
                    <select class="form-control form-control-lg" name="genre">
                       
                      <c:if test="${compte.genre=='Masculin'}">
                      <option value="Masculin">Masculin</option>
                      <option value="Feminin">Feminin</option>
                      </c:if> 
                      <c:if test="${compte.genre=='Feminin'}">
                       <option value="Feminin">Feminin</option>
                       <option value="Masculin">Masculin</option>
                      
                      </c:if> 
                      
                    </select>
                
           
                <div class="d-flex justify-content-end pt-3">
                    
                  <input class="btn btn-warning btn-lg ms-2" type="submit" name="boutonOK" value="Valider"/>
                  
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
  </c:forEach> 
</section>
