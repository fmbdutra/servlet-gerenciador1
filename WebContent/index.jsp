<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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