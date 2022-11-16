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

/////////////////////////////////////////
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
   <form action='Cadastro' method='post'>
    
    <label for="nome">Nome:</label>
    <input type="text" id="nome" name="nome" /> <br><br>
    
    <label for="endereco">Endereço:</label>
    <input type="text" id="endereco" name="endereco" /> <br><br>
    
    <label for="bairro">Bairro:</label>
    <input type="text" id="bairro" name="bairro" /> <br><br>
    
    <label for="cidade">Cidade:</label>
    <input type="text" id="cidade" name="cidade" /> <br><br>
    
    <label for="cep">CEP:</label>
    <input type="text" id="cep" name="cep" /> <br><br>
    
    <label for="telefone">Telefone:</label>
    <input type="text" id="telefone" name="telefone" /> <br><br>
    
    <input type="submit" value="Cadastrar" />
    
  </form>
</body>
</html>
	
	
////////////////
	
package ifsp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Cadastro")
public class Cadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cadastro() {
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String endereco = request.getParameter("endereco");
		String bairro = request.getParameter("bairro");
		String cidade = request.getParameter("cidade");
		String cep = request.getParameter("cep");
		String telefone = request.getParameter("telefone");
		
		if (nome.isBlank() || endereco.isBlank() || bairro.isBlank() || cidade.isBlank() || cep.isBlank() || telefone.isBlank()) {
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		} else {
			PrintWriter out = response.getWriter();
			out.print("Cadastro realizado ocm sucesso");
		}
		doGet(request, response);
	}

}
