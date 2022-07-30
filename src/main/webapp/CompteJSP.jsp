<%-- 
    Document   : CompteJSP
    Created on : 29 juil. 2022, 14:42:37
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

       
<%--test debut--%>
  
<section id="listcompte">
     

  <div class="container">
                         <h1 class="mb-5  text-center">Liste comptes</h1>
                    <div class="row   d-flex justify-content-center ">
                       

                      <div class="col-md-8">

                        <div class="search">
                              
                          <form name="recherche" id="recherche" action="/TPweBservlet/compte" method="GET" >
                            <input class="form-control" type="text" name="sort" placeholder="Recherche par nom"/>
                                <%--<input type="submit" class="btn btn-primary" name="boutonFind" value="Rechercher" href="#listcompte"/>--%>
                            <button type="submit" class="btn btn-primary">
                                Recherche
                            </button>
                           </form>
                        </div>
                            
                      </div>
                            
                    </div>
                            
                </div>
    </form>
    
    <div class="container mb-5 mt-5">
    <div class="pricing card-deck flex-column flex-md-row mb-3">
        
        <c:forEach var="compte" items="${compte}">
        <div class="card card-pricing popular shadow text-center px-3 mb-4">
            <span class="h6 w-60 mx-auto px-4 py-1 rounded-bottom bg-primary text-white shadow-sm">Utilisateur</span>
            <div class="bg-transparent card-header pt-4 border-0">
                <h3 class=" font-weight-normal text-primary text-center mb-0" data-pricing-value="30"><c:out value="${compte.nom}"/> <c:out value="${compte.prenom}"/></h3>
            </div>
            <div class="card-body pt-0">
                <ul class="list-unstyled mb-4">
                    <li>Mail: <c:out value="${compte.mail}"/></li>
                    <li>Genre: <c:out value="${compte.genre}"/></li>
                    <li>Adresse: <c:out value="${compte.adresse}"/></li>
                    
                </ul>
                    <a href="compte?suppr=${compte.nom}" id="suppr${compte.nom}" class="btn btn-primary mb-3">Supprimer</a>
                    <a href="update?modif=${compte.nom}" id="modif${compte.nom}" class="btn btn-primary mb-3">Editer</a>
                
            </div>
        </div>
        </c:forEach>  
    </div>
</div>
<div class=" mt-5 mb-5 text-center small"><a  target="_blank" href="http://localhost:8085/TPweBservlet" >Ajout compte ici !!!</a></div>
</section>

<%--text fin--%>
        
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
     <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

     <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
     <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script> 
</body>
</html>
