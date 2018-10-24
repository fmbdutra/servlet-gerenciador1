<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype jsp>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<!-- Custom styles for sign in -->
<link href="signin.css" rel="stylesheet">

<title>INICIO</title>
</head>

<body>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>


	<!-- INICIO LOGIN -->
	<c:if test="${usuarioLogado==null}">
		<div class="bodyform">
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


				<!-- INICIO RODAPÉ -->
				<div>
					<p class="mt-5 mb-3 text-muted">&copy; Fabiano Dutra -
						Verdecard - Alura</p>

					<h1 class="h1 mb-3 font-weight-normal" style="font-size: 10px">SERVLETS
						+ BOOTSTRAP</h1>

					<img style="font-size: 2px" class="mb-4"
						src="https://vignette.wikia.nocookie.net/logopedia/images/d/d0/Java.svg/revision/latest?cb=20180314141626"
						alt="Java" width="35" height="50"> <img
						style="font-size: 2px" class="mb-4"
						src="https://upload.wikimedia.org/wikipedia/commons/7/7b/Tomcat-logo.svg"
						alt="SERVETS" width="50" height="50"> <img
						style="font-size: 2px" class="mb-4"
						src="https://getbootstrap.com/docs/4.1/assets/img/bootstrap-stack.png"
						alt="BOOTSTRAP" width="50" height="50">
				</div>
				<!-- FIM RODAPÉ -->
			</form>
		</div>
	</c:if>
	<!-- FIM LOGIN -->


	<!-- INICIO LOGADO -->
	<c:if test="${usuarioLogado!=null}">

		<nav class="navbar navbar-expand-sm navbar-dark"
			style="background-color: #009933">
			<a class="navbar-brand">GERENCIADOR DE EMPRESAS </a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarText" aria-controls="navbarText"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse " id="navbarText">
				<ul class="navbar-nav mr-auto nav">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Features</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Pricing</a>
					</li>
				</ul>
				<span class="navbar-text"> Logado como:
					${usuarioLogado.email} </span>
			</div>
		</nav>
	
	</br>

		<!-- INICIO ADICIONAR EMPRESA -->
		<div>
			<form class="form-inline" action="executa" method="post">
				<input type="hidden" name="tarefa" value="NovaEmpresa" />
				<legend>Adicionar Empresa</legend>

				<!-- 	<div class="form-group mb-2">
					<label for="staticEmail2" class="sr-only">Email</label> <input
						type="text" readonly class="form-control-plaintext"
						id="staticEmail2" value="email@example.com"> <input
						type="hidden" name="tarefa" value="NovaEmpresa" />
				</div> -->
				<div class="form-group mx-sm-1 mb-2">
					<label for="inputPassword2" class="sr-only">Nome Empresa</label> 
					<input
						type="text" class="form-control" name="nome"
						placeholder="Nome Empresa" required> <input type="hidden"
						name="tarefa" value="NovaEmpresa" />
				</div>

				<button type="submit" class="btn btn-primary mb-2">Adicionar
				</button>
			</form>
		</div>

		<!--  FIM ADICIONAR EMPRESA -->
		
		Logado como: ${usuarioLogado.email}<br><br>


		<form action="executa" method="post">
			<input type="hidden" name="tarefa" value="Logout" />
			<button class="btn btn-sm btn-danger" type="submit">Sair</button>
		</form>
	</c:if>
	<!-- FIM LOGADO -->


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