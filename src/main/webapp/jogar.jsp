<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jogar</title>
</head>
<body>

<form action="resultado.jsp" method="get">
	
	<label for="valor">Par</label>
	<input type="radio" name="valor" value="par"/> <br> 
	
	<label for="valor">Impar</label>
	<input type="radio" name="valor" value="impar"/> <br>
	
	<input type="submit" value="Jogar"/>
	
	</form>

</body>
</html>