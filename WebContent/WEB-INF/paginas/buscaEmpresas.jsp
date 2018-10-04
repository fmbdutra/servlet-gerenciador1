
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Busca</title>
</head>
<body>
	Resultado da pesquisa:
	<ul>
		<c:forEach var="empresa" items="${empresas}">
			<li>${empresa.id}- ${empresa.nome}</li>
		</c:forEach>
	</ul>

	<form action="/gerenciador" method="post">
		<input type="submit" value="Início" />
	</form>
</body>
</html>