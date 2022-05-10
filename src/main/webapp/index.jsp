<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("name")== null){
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html lang="pl">
<head>
<meta charset="utf-8" />

</head>
<body>


<%=session.getAttribute("name") %><br/>
<a href="login.jsp">logowanie</a><br/>
<a href="rejestracja.jsp">rejestracja</a><br/>	
<a href="wylogowanie">Wyloguj się</a>
						

</body>
</html>
