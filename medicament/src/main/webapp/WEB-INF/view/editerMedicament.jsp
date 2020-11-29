<%@ page language="java" contentType="text/html; charset=windows-1256"
pageEncoding="windows-1256"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link rel="stylesheet" href="webjars/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="${jstlCss}" rel="stylesheet" />
<script type="text/javascript" src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<head>
<meta charset="windows-1256">
<title>Modifier un Medicament</title>
</head>
<body>
<div class="card mx-auto" style="
    width: 722px;
    margin-top: 50px;
    box-shadow: 10px 10px 10px lightgray;
">
<div class="card-body">
<form action="updateMedicament" method="post">
<br>
<br>
<div class="form-group row">
<label class="col-sm-2 col-form-label">id : </label> 
<div class="col-sm-10"><input id="disabledTextInput" type="text" name="idMedicament" value="${medicament.idMedicament}"></div>
</div>
<div class="form-group row">
<label class="col-sm-2 col-form-label">nom : </label> 
<div class="col-sm-10"><input type="text" class="form-control" name="nomMedicament" value="${medicament.nomMedicament}"></div>
</div>
<div class="form-group row">
<label class="col-sm-2 col-form-label">prix : </label> 
<div class="col-sm-10"><input type="text" class="form-control" name="prixMedicament" value="${medicament.prixMedicament}"></div>
</div>
<div class="form-group row">
<label class="col-sm-2 col-form-label">quantité: </label> 
<div class="col-sm-10"><input type="text" class="form-control" name="qteMedicament" value="${medicament.qteMedicament }"></div>
</div>
<div class="form-group row">
<label class="col-sm-2 col-form-label">Date création : </label> 
<div class="col-sm-10">
<fmt:formatDate pattern="yyyy-MM-dd" value="${medicament.dateCreation}" var="formatDate" />
<input type="date" class="form-control" name="date" value="${formatDate}"></input>
</div>
</div>
<a href="ListeMedicaments" class="btn btn-secondary float-right">Return</a>
<button type="submit" class="btn btn-success float-right" style="margin-right: 5px;">Modifier</button>
</form>
<br/>
<br/>
</div>
</div>

</body>
</html>