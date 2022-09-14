<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Verificar</title>
</head>
<body>
	
	<%
	String dia = request.getParameter("dia");
	String mes = request.getParameter("mes");
	String ano = request.getParameter("ano");
	
	if(dia.isEmpty() || mes.isEmpty() || ano.isEmpty()) {
		response.sendRedirect(request.getContextPath() + "/data.jsp");
	} else {
		Integer diaInt = Integer.parseInt(dia);
		Integer mesInt = Integer.parseInt(mes);
		Integer anoInt = Integer.parseInt(ano);
		
		LocalDate x = LocalDate.of(anoInt, mesInt, diaInt);
		out.print("<table>");
		for(int i = 1; i <= 10; i++) {
			LocalDate tempo = x.minusDays(i);
			out.print("<tr><td>" + tempo + "</td></tr>");
		}
		out.print("</table");
	}
	
	%>
</body>
</html>