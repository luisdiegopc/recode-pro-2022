<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Edi��o do Usu�rio</title>
</head> <!--  .Usuario  UsuarioDao-->
<body>
	<%@ page import="com.crudjspjava.bean. *, com.crudjspjava.dao. *"%>
	
	<%
	 String id = request.getParameter("id"); 
	 Usuario usuario = UsuarioDao.getRegistroById(Integer.parseInt(id)); 
	%>
	
<div class="section-center">
    <div class="container">	
      <div class="row">
          <div class="col-12">
          	<h1> Edi��o do Usu�rio</h1>
	
				<form action="editusuario.jsp" method="post">
					<input type="hidden" name="id" value="<%=usuario.getId() %>"/>
					<table>
						<tr>
							<td>Nome: </td>
							<td><input type="text" name="nome" value="<%= usuario.getNome()%>" /></td>
						</tr>
						<tr>
							<td>Password: </td>
							<td><input type="password" name="password" value="<%= usuario.getPassword()%>" /></td>
						</tr>
						<tr>
							<td>Email: </td>
							<td><input type="email" name="email" value="<%= usuario.getEmail()%>" /></td>
						</tr>
						<tr>
							<td>Sexo: </td>
							<td><input type="radio" checked name="sexo" value="masculino" />Masculino
								<input type="radio" name="sexo" value="feminino" />Feminino
							</td>
						</tr>
						<tr>
							<td>Pa�s: </td>
							<td><input type="email" name="email" value="<%= usuario.getEmail()%>" /></td>
							<td>
								<select name="pais">
									<option>Brasil</option>
									<option>EUA</option>
									<option>Portugal</option>
									<option>Argentina</option>
									<option>Outro</option>
								</select>
							</td>
						</tr>
						<tr>
							 <td><input type="submit" value="Editar Usuario"> </input> </td>
						</tr>
					</table>
				
				</form>
          
          </div>  
      </div>
    </div>
</div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</body>
</html>

	