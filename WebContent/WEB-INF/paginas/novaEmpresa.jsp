<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Empresa adicionada</title>
</head>
<body>
	Empresa adicionada: ${nome}
	<br>
	<br>

	<form action="executa?tarefa=BuscaEmpresa" method="post">
		<input type="submit" value="Exibir Empresas"/>
	</form>
<br />
	<form action="/gerenciador" method="post" >
		<input type="submit" value="Início" />
</body>
</html>