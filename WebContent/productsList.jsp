<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/carousel.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap-social.css">
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<title>Juegos JEE|Lista de Productos</title>
</head>
<body>
<%@ include file="includes/header.jsp" %>

	<div class="row" style="padding-top: 10%; margin-bottom: 10%">
		<div class="col-md-10 col-md-offset-1"style="background-color: #555; padding: 5px; border-radius: 10px">
			<table class="table">
				<thead>
					<tr>
						<th>Clave de Producto</th>
						<th>Nombre</th>
						<th>Precio</th>
						<th>Estrellas</th>
						<th>Cantidad</th>
						<th>Fecha de creaci&oacute;n</th>
						<th>Acciones</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="products">
						<tr>
							<th><s:property value="idProduct" /></th>
							<th><a href="editInfoProductAction?idProduct=<s:property value="idProduct" />"><s:property value="name" /></a></th>
							<th><s:property value="prize" /></th>
							<th><s:property value="stars" /></th>
							<th><s:property value="quantity" /></th>
							<th><s:property value="creationDate" /></th>
							<th>
								<a href="editInfoProductAction?idProduct=<s:property value="idProduct" />">Editar </a>
								<a href="deleteProductAction?idProduct=<s:property value="idProduct" />">Borrar</a>
								<a href="estadisticsAction?idProduct=<s:property value="idProduct" />">Obtener estadisticas</a>
							</th>
						</tr>
					</s:iterator>
				</tbody>
			</table>
			
		<a href="listConsolesOnProductAction">Registra un Producto</a>
		</div>
	</div>

	<!-- /END THE FEATURETTES -->
      <%@ include file="includes/footer.php" %>

</body>
</html>