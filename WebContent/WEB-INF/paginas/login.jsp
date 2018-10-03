<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${usuarioLogado != null}">
	Você esta logado como: ${usuarioLogado.email}
	</c:if>

	<c:if test="${usuarioLogado == null}">
		Usuário ou senha invalida
	</c:if>
	<br>
	<br>

	<table>
		<tr>
			<td>
				<form action="/gerenciador" method="post">
					<input type="submit" value="Inicio" />

					<form action="executa?tarefa=BuscaEmpresa" method="post">
						<input type="submit" value="Buscar Empresas" />
					</form>
			</td>
		</tr>
	</table>
</body>
</html>