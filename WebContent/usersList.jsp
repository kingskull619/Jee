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
<title>juegos JEE|Lista de Usuarios</title>
</head>
<body>
<%@ include file="includes/header.jsp" %>
	
	<div class="row" style="padding-top: 10%; margin-bottom: 10%">
		<div class="col-md-10 col-md-offset-1" style="background-color: #555; padding: 5px; border-radius: 10px">
			<table class="table">
				<thead>
					<tr>
						<th>Clave de Usuario</th>
						<th>Nombre de Usuario</th>
						<th>Contrase&ntilde;a</th>
						<th>Nombres</th>
						<th>Apellidos</th>
						<th>Email</th>
						<th>Fecha de Nacimiento</th>
						<th>Acciones</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="users">
						<tr>
							<th><s:property value="id" /></th>
							<th><a href="editInfoUserAction?idUser=<s:property value="id" />"><s:property value="userName" /></a></th>
							<th><s:property value="passWord" /></th>
							<th><s:property value="name" /></th>
							<th><s:property value="lastName" /></th>
							<th><s:property value="email" /></th>
							<th><s:property value="birthDate" /></th>
							<th>
								<a href="editInfoUserAction?idUser=<s:property value="id" />">Editar </a>
								<a href="deleteUserAction?idUser=<s:property value="id" />">Borrar</a>
							</th>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</div>

	<!-- /END THE FEATURETTES -->
    <%@ include file="includes/footer.php" %>
    
</body>
</html>