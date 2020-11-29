<%@ page language="java" contentType="text/html; charset=windows-1256"
pageEncoding="windows-1256"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link rel="stylesheet" href="webjars/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="${jstlCss}" rel="stylesheet" />
<script type="text/javascript" src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Liste Medicaments</title>
</head>
<body>
<c:if test="${not empty msg }">
<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
    <strong>Bien! </strong> ${msg}
</div>
</c:if>
<div class="container mx-auto" style="
    margin-top: 60px;
">
<div class="card">
<div class="card-header text-center font-weight-bold" style="
    background-color: #DB3056;
    color: white;
">
Liste des Medicaments
</div>
<div class="card-body">
<table class="table table-hover table-reflow">
<tr>
<th>ID</th><th>Nom Medicament</th><th>Prix</th><th>Qte</th><th>Date Création</th><th></th><th>Suppression<th>Edition</th>
</tr>
<c:forEach items="${medicaments}" var="p">
<tr>
<td>${p.idMedicament }</td>
<td>${p.nomMedicament }</td>
<td>${p.prixMedicament }</td>
<td>${p.qteMedicament }</td>
<td><fmt:formatDate pattern="dd/MM/yyyy" value="${p.dateCreation}" /></td>
<td><a onclick="return confirm('Etes-vous sûr ?')" href="supprimerMedicament?id=${p.idMedicament }">Supprimer</a></td>
<td><a href="modifierMedicament?id=${p.idMedicament }">Edit</a></td></tr>
</c:forEach>
</table>
</div>
</div>
</div>
<div style="
     position: fixed;
    bottom: 0px;
    right: 2px;
    margin-right: 2;
    margin-right: 10px;
    margin-bottom: 10px;">
    <a href="showCreate" title="add">
    <svg  title="add" width="50px" height="50px" viewBox="0 0 16 16" class="bi bi-pencil-square rounded" fill="currentColor" xmlns="http://www.w3.org/2000/svg" style="
    background: #FF6464;
    left: auto;
    position: auto;
    position: left;
    color: white;
">
  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
</svg>
    </a>

</div>
</body>
</html>