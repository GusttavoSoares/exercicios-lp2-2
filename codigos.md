#final.jsp


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
out.print(session.getAttribute("nome")); 
out.print(session.getAttribute("prontuario")); 
out.print(session.getAttribute("periodo")); 
out.print(session.getAttribute("curso")); 
%>

</body>
</html>
  
#formulario.jsp
  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="verificar.jsp" method="get">

<label for="nome">Nome</label> <br>
<input type="text" name="nome"> <br><br> 

<label for="prontuario">Prontuário</label> <br>
<input type="text" name="prontuario"> <br><br>

<label for="periodo">Período</label>

<select name="periodo">
	<option value="matutino"> Matutino </option>
	<option value="matutino"> Vespertino </option>
	<option value="matutino"> Noturno</option>
</select>

  <p>Curso Técnico</p>
  
	<label for="curso">Edificação</label>
	<input type="radio" name="curso" value="Edificação"/> <br> 
	
	<label for="curso">Informática</label>
	<input type="radio" name="curso" value="Informatica"/> <br>
	
	<label for="curso">Mecânica</label>
	<input type="radio" name="curso" value="Mecanica"/> <br>
	
  	<input type="submit" value="Enviar"/>
  
</form>

</body>
</html>
  
#verificar.jsp
  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Verificar</title>
</head>
<body>

<%
	String nome = request.getParameter("nome");
	String prontuario = request.getParameter("prontuario");
	String periodo = request.getParameter("periodo");
	String curso = request.getParameter("curso");
	
	if(nome == null || prontuario.isEmpty() || curso == null ) {
		response.sendRedirect(request.getContextPath() + "/formulario.jsp");
	} else {
	session.setAttribute("nome", nome); 
	session.setAttribute("prontuario", prontuario); 
	session.setAttribute("periodo", periodo); 
	session.setAttribute("curso", curso); 
	response.sendRedirect(request.getContextPath() + "/final.jsp");
	}
%>
</body>
</html>
