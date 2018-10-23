<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype jsp>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>LOGIN</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">
</head>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

	<form class="form-signin text-center" action="executa" method="post">
		<c:if test="${usuarioLogado != null}">
		Você esta logado como: ${usuarioLogado.email}
		</c:if>

		<c:if test="${usuarioLogado == null}">
		Usuário ou senha invalida
		</c:if>
		<br />
		<br />
		
		<input type="hidden" name="tarefa" value="Home" />
		<button type="submit" class="btn btn-lg btn-primary" >Início</button>
	</form>

	<!-- 
	<form action="/gerenciador" method="post">
		<input type="submit" value="Início" /> -->


</body>
</html>