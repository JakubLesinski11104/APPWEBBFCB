<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%--Żródło wygladu strony: https://html5up.net/future-imperfect --%>
    <c:set var = "czy_zalogowany"  value = "${uzytkownicy.username}"/>
  	<c:catch var ="czy_zalogowany">
  	<c:if test = "${czy_zalogowany == null}">
  	<c:redirect url = "/login"/>
   	</c:if>
	</c:catch>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Wszystkie artykuły</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link href="https://app.staticsave.com/csscss/glowna0.css" rel="stylesheet" >
		<link rel="shortcut icon" href="https://wszystkiesymbole.pl/wp-content/uploads/2021/03/logo-FC-Barcelona.png">
 		 <link href="https://app.staticsave.com/csscss/glowna1.css" rel="stylesheet" >
  		<link href="https://app.staticsave.com/csscss/glowna001.css" rel="stylesheet" >
	</head>
		<body class="single is-preload">
			<div id="wrapper">
			<header id="header">
					<h1><a href="glowna.jsp">Strona główna</a></h1>
					<nav class="links">
						<ul>
							<li><a href="historia.jsp">Historia</a></li>
							<li><a href="sklad.jsp">Skład</a></li>
							<li><a href="terminarz.jsp">Terminarz</a></li>
							<li><a href="newsy.jsp">Newsy</a></li>
							<li><a href="artykuly.jsp">Artykuły</a></li>
						</ul>
					</nav>
					<nav class="main">
						<ul>
							<li >
								<c:out value="${uzytkownicy.username} "></c:out>
							</li>
						</ul>
					</nav>
				</header>
				<div id="main">
				<article class="post">
				<header>
				<div class="title">
							<center><h2><a href="#">Wszystkie artykuły</a></h2></center>
				</div>
				</header>
							<table align="center" cellpadding="5" cellspacing="5" border="1">
							<tr>
							</tr>
	<%--
	Pobranie danych z bazy danych za pomoca JSP.
	Nawiazanie polaczenia z baza danych, zapytanie SQL w celu pobrania danych i wykonanie zaptyania za pomoca metody executeQuery(sql) interfejsu Statement oraz zapis wynik w zestawie wyników.
	Użycie metody getSttring() interfejsu ResultSet, i powoduje to wyswietlenie danuch z bazy na stronie JSP.
 	--%>						
<%

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

	try{ 
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FCB_PROJEKT?useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "Trudnehaslo!2");
	statement=connection.createStatement();
	String sql ="SELECT * FROM artykuly order by id desc";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
%>
						<tr bgcolor="#DEB887"><th><%=resultSet.getString("tytul") %></th></tr>
						<tr><td><%=resultSet.getString("zawartosc") %></td></tr>
<% 
}
} catch (Exception e) {
	e.printStackTrace();
}
%>
						</table>
</article>
</div>
</div>
</body>
</html>
