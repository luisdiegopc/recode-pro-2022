<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Visualização de Usuários</title>
</head>
<body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<%@ page import="com.crudjspjava.dao.UsuarioDao, com.crudjspjava.bean.*, java.util.*"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
	 
	<%
	List<Usuario> list = UsuarioDao.getAllUsuarios();
	request.setAttribute ("list", list); 
	%>
<div class="section-center">
  	<div class="container">	
		<div class="row">
			<div class="col-12">
			<h1 class="text-center"> Listagem de Usuários Cadastrados</h1>
				<br><br>
				 <table class="table table-bordered">
					<tr> 
						<th>ID </th>
						<th>Nome</th>
						<th>Password</th>
						<th>Email</th>
						<th>Sexo</th>
						<th>País</th>
						<th>Editar</th>
						<th>Excluir</th> 
				    </tr>		
						<c:forEach   items="${list}" var="usuario"> 
							<tr>
								<td>${usuario.getId()} </td>
								<td>${usuario.getNome()}</td>
								<td>${usuario.getPassword()} </td>
								<td>${usuario.getEmail()} </td>
								<td>${usuario.getSexo()} </td>
								<td>${usuario.getPais()} </td>
								<td><a href="editform.jsp?id=${usuario.getId()}" >Editar</a> </td>
								<td><a href="deleteusuario.jsp?id=${usuario.getId()}" >Excluir</a> </td>
							</tr>
						</c:forEach>
				</table>
					<br>
					<button type="button" class="btn btn-outline-primary"><a href="addusuarioform.jsp" >Adicionar Novo Usuário</a></button>
				
			</div>
		</div>	
	</div>
</div>	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</body>
</html>