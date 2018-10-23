<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!doctype jsp>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>AGORA COM BOOTSTRAP!</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">
</head>

<body>

	<!-- INICIO LOGIN -->
		<c:if test="${usuarioLogado==null}">
			<form class="form-signin text-center" action="executa" method="post">

				<div>
					<h1 class="h1 mb-3 " style="font-size: 25px">GERENCIADOR DE
						EMPRESAS</h1>
					<br /> <input type="hidden" name="tarefa" value="Login" />
					<h2 class="h2 mb-3 font-weight-normal" style="font-size: 25px">Login</h2>

					<input type="email" id="inputEmail" name="email"
						class="form-control" placeholder="Email" required autofocus>

					<input type="password" id="inputPassword" name="senha"
						class="form-control" placeholder="Senha" required>

					<button class="btn btn-lg btn-success btn-block" type="submit">Entrar</button>
				</div>

				<!-- FIM LOGIN -->


				<!-- INICIO RODAPÉ -->
				<div>
					<p class="mt-5 mb-3 text-muted">&copy; Fabiano Dutra -
						Verdecard - Alura</p>

					<h1 class="h1 mb-3 font-weight-normal" style="font-size: 10px">SERVLETS
						+ BOOTSTRAP</h1>

					<img style="font-size: 2px" class="mb-4"
						src="https://vignette.wikia.nocookie.net/logopedia/images/d/d0/Java.svg/revision/latest?cb=20180314141626"
						alt="Java" width="50" height="50"> <img
						style="font-size: 2px" class="mb-4"
						src="https://upload.wikimedia.org/wikipedia/commons/7/7b/Tomcat-logo.svg"
						alt="SERVETS" width="50" height="50"> <img
						style="font-size: 2px" class="mb-4"
						src="https://getbootstrap.com/docs/4.1/assets/img/bootstrap-stack.png"
						alt="BOOTSTRAP" width="50" height="50">
				</div>
				<!-- FIM RODAPÉ -->
			</form>
		</c:if>
	<!-- FIM LOGIN -->


	<!-- INICIO LOGADO -->
		<c:if test="${usuarioLogado!=null}">

			<form class="form-signin text-center" action="executa" method="post">
				<input type="hidden" name="tarefa" value="Logout" />


				<div>Logado como: ${usuarioLogado.email}</div>
				<br /> <br /> <br />
				<div>

					<input type="hidden" name="tarefa" value="Logout" />

					<button class="btn btn-lg btn-primary btn-danger" type="submit">Sair</button>
				</div>
			</form>

		</c:if>
</body>
</html>


<!-------- PÁGINA LEGADA 

<html>
<title>GERENCIADOR DE EMPRESA!</title>
<head>
<link rel="stylesheet" type="text/css" href="reset.css">
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

	<h1 class="titulo">Gerenciador de empresas!</h1>

	<c:if test="${usuarioLogado==null}">
		<form action="executa" method="post">
			<input type="hidden" name="tarefa" value="Login" />


			<fieldset>
				<legend align="center">Login</legend>

				<table>
					<tr>
						<td>Email:</td>
						<td><input type="text" name="email" required /></td>
					</tr><tr>	
						<td>Senha:</td>
						<td><input type="password" name="senha" required /></td>						
					</tr>
					<tr>
					
					</tr>
				</table>
				<input type="submit" value="Login" />
			</fieldset>
		</form>
	</c:if>


	<c:if test="${usuarioLogado!=null}">
		Logado como: ${usuarioLogado.email}  
	<br>
		<br />
		<form action="executa" method="post">
			<input type="hidden" name="tarefa" value="BuscaEmpresa" /> <input
				type="submit" value="Buscar Empresas" />
		</form>

		<form action="executa" method="post">
			<input type="hidden" name="tarefa" value="NovaEmpresa" />
			<fieldset>
				<legend>Adicionar Empresa</legend>

				<table>
					<tr>
						<td>Nome:</td>
						<td><input type="text" name="nome" required /></td>
						<input type="hidden" name="tarefa" value="NovaEmpresa" />
						<td><input type="submit" value="Adicionar Empresa" /></td>
					</tr>
				</table>
			</fieldset>
		</form>


		<form action="executa" method="post">
			<input type="hidden" name="tarefa" value="Logout" /> <input
				type="submit" value="Logout" />
		</form>

	</c:if>

</body>
</html>
 -->