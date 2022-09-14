<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado</title>
</head>
<body>

<%!
public int gerarNumeroAleatorio(){
	Random gerador = new Random();
	return gerador.nextInt
			(1,100);
}

%>

<%
String valor = request.getParameter("valor");
int numeroAleatorio = gerarNumeroAleatorio();

if(valor.equals("par") ){
	if(numeroAleatorio % 2 == 0) {
		out.print("O Usuário Venceu " + numeroAleatorio );
	} else {
		out.print("O Usuário Perdeu " + numeroAleatorio);
	}
} else {
	if(numeroAleatorio % 2 != 0) {
		out.print("O Usuário Venceu " + numeroAleatorio);
	} else {
		out.print("O Usuário Perdeu " + numeroAleatorio);
	}
}
%>
</body>
</html>