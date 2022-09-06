<%@ page import="com.crudjspjava.dao.UsuarioDao" %>
<jsp:useBean id="u" class="com.crudjspjava.bean.Usuario" scope="session">   </jsp:useBean> 
 <jsp:setProperty property="*" name="u"/>
 
 <%
  int i = UsuarioDao.salvarUsuario(u);
 	
 	if (i > 0) {
 		response.sendRedirect("addusuario-sucess.jsp"); 
 	} else {
 		response.sendRedirect("addusuario-error.jsp"); 
 	}
 %>