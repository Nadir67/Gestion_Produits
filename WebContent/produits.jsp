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
	<div class="container col-md-10 col-md-offset-1">
	<div class="panel panel-info">
	 <div class="panel-heading">Recherche des Produits</div>
	 <div class="panel-body">
	    <form action="Nadir.php" method="get">
	       <label>Mot Clé</label>
	       <input type="text" name="motCle"value="${model.motCle}"/>
	       <button type="submit" class="btn btn-secondary">Chercher</button>
	    </form>
	    <table class="table table-striped">
	    <tr>
            <th>ID</th><th>Désignation</th><th>Prix</th><th>Quantité</th>
	    </tr>
	    <c:forEach items="${model.produits}" var="p">
	    <tr>
	    	<td>${p.id}</td>
	    	<td>${p.designation}</td>
	    	<td>${p.prix}</td>
	    	<td>${p.quantite}</td>
	    	<td><a onClick="return confirm('Etes Vous Sure?')" href="Supprime.php?id=${p.id}">Supprimer</a></td>
	    	 	<td><a href="Edit.php?id=${p.id}">Edit</a></td>
	    	
	    </tr>
	    </c:forEach>
	    </table>
	   
	    </div>
	 </div>
	</div>
</body>
</html>