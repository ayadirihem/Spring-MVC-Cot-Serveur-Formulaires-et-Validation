<%@ page language="java" contentType="text/html; charset=windows-1256"
pageEncoding="windows-1256"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
<script type="text/javascript" src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<head>
<meta charset="ISO-8859-1">
<title>Créer un Medicament</title>
</head>
<body>
<div class="container mx-auto" style="
    margin-top: 50px;
    box-shadow: 7px 8px 10px 5px grey;
">
<div class="card-body">
<form action="saveMedicament" method="post">
<h3 class="text-uppercase">Ajouter Medicament</h3>
<hr>
<div class="form-group">
<label class="control-label">Nom Medicament :</label>
<input type="text" name="nomMedicament" class="form-control"/>
</div>
<div class="form-group">
<label class="control-label">Prix Medicament :</label>
<input type="text" name="prixMedicament" class="form-control"/>
</div>
<div class="form-group">
<label class="control-label">Quantité de  Medicament :</label>
<input type="text" name="qteMedicament" class="form-control"/>
</div>
<div class="form-group">
<label class="control-label">date création :</label>
<input type="date" name="date" class="form-control"/>
</div>
<div>
<a href="ListeMedicaments" class="btn btn-secondary float-right">Return</a>
<button type="submit" class="btn btn-danger float-right" style="margin-right: 5px;">Ajouter</button>
</div>
</form>
</div>

<br/>
<br/>
</div>
</body>
</html>