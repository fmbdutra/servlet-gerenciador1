<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	Bem vindo ao nosso gerenciador de empresas!
	<br />
	<br />

	<c:if test="${usuarioLogado==null}">
		<form action="executa" method="post">
			<input type="hidden" name="tarefa" value="Login" />
			<fieldset>
				<legend>Login</legend>

				<table>
					<tr>
						<td>Email:</td>
						<td><input type="text" name="email" /></td>

						<td>Senha:</td>
						<td><input type="password" name="senha" /></td>

						<td><input type="submit" value="Login" /></td>
					</tr>
				</table>
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
						<td><input type="text" name="nome" /></td>
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