<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
	Bem vindo ao nosso gerenciador de empresas!
	<br />
	
	<c:if test="${usuarioLogado!=null}">
		Logado como: ${usuarioLogado.email}<br/>
	</c:if>

	<form action="executa" method="post">
	<input type="hidden" name="tarefa" value="NovaEmpresa" />
		<table>
			<tr>
				<td>Nome:</td>
				<td><input type="text" name="nome" /></td>
				<br />
			<tr>
				<input type="hidden" name="tarefa" value="NovaEmpresa" />
				<td><input type="submit" value="Enviar" /></td>
			</tr>
		</table>
	</form>

	<form action="login" method="post">
		<table>
			<tr>
				<td>Email:</td>
				<td><input type="text" name="email" /></td>
			
				<td>Senha:</td>
				<td><input type="password" name="senha" /></td>
			
				<td><input type="submit" value="Login" /></td>
			</tr>
		</table>
	</form>

	<!--  
	<form action="executa?tarefa=Logout" method="post">  
			<input type="submit" value="Logout" />
	</form>	
	
	OU 
	-->
	<form action="executa" method="post">
		<input type="hidden" name="tarefa" value="Logout" />
		<input type="submit" value="Logout" />
	</form>
<!--  
	<form action="busca" method="get">
		<input type="submit" value="Buscar Empresas" />
	</form>
-->


<form action="executa?tarefa=BuscaEmpresa" method="post">
		<input type="submit" value="Buscar Empresas" />
	</form>

</body>
</html>