<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%--Żródło: https://html5up.net/future-imperfect --%>
    <c:set var = "czy_zalogowany"  value = "${uzytkownicy.username}"/>
  	<c:catch var ="czy_zalogowany">
  	<c:if test = "${czy_zalogowany == null}">
  	<c:redirect url = "/login"/>
   	</c:if>
	</c:catch>
<%
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<title>Skład</title>
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
								<center><h1>Skład Fc Barcelony</h1>
								<h2>Na sezon 2021/2022</h2>
								<h3>Kapitan:</h3>
								<h4>Sergio	Busquets</h4>
								<h3>Wicekapitani:</h3>
								<h4>Gerard Pique</h4>
								<h4>Sergi Roberto</h4>
								<h4>Jordi Alba</h4>
								</center>
					</div>
				</header>
					<table align="center" cellpadding="5" cellspacing="5" border="1">
						<tr>
						</tr>
						<tr bgcolor="#A52A2A">
						<td><b>IMIĘ</b></td>
						<td><b>NAZWISKO</b></td>
						<td><b>DATA URODZIN</b></td>
						<td><b>NUMER</b></td>
						<td><b>POZYCJA</b></td>
						</tr>
<%
	try{ 
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FCB_PROJEKT?useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "Trudnehaslo!2");
	statement=connection.createStatement();
	String sql ="SELECT * FROM sklad";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
%>
			<tr bgcolor="#DEB887">
			<td><%=resultSet.getString("imie") %></td>
			<td><%=resultSet.getString("nazwisko") %></td>
			<td><%=resultSet.getString("Data_urodzin") %></td>
			<td><%=resultSet.getString("Numer") %></td>
			<td><%=resultSet.getString("Pozycja") %></td>
			</tr>
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
