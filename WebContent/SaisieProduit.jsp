<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
   <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Produits</title>

</head>
<body>
<%@include file="header.jsp" %>
	<div class="container col-md-8 col-md-offset-2 col-xs-12">
	<div class="panel panel-info">
	 <div class="panel-heading">Saisie d'un Produit </div>
	 <div class="panel-body">
	 	<form action="SaveProduit.php" methode="post">
	 		<div class="form-group">
	 			<label class="control-label">ID</label>
	 			<input type="text" name="id" value="${produit.id}" class="form-control" required="required"/>
	 			<span></span>
	 		</div>
	 		<div class="form-group">
	 			<label class="control-label">Désignation</label>
	 			<input type="text" name="designation" value="${produit.designation}" class="form-control" required="required"/>
	 			<span></span>
	 		</div>
	 		
	 		<div class="form-group">
	 			<label class="control-label">Prix</label>
	 			<input type="text" name="prix" value="${produit.prix}" class="form-control"/>
	 			<span></span>
	 		</div>
	 		
	 		<div class="form-group">
	 			<label class="control-label">Quantité</label>
	 			<input type="text" name="quantite" value="${produit.quantite}" class="form-control"/>
	 			<span></span>
	 		</div>
	 		<div>
	 			<button type="submit" class="btn btn-secondary">Save</button>
	 		</div>
	 	</form>
	   
	    </div>
	 </div>
	</div>
</body>
</html>