<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%--Żródło wygladu strony: https://html5up.net/future-imperfect --%>

<%-- 
	Porowanie z innymi podstronami ze dostep do tej strony jest mozliwy bez zalogowania 
--%>
<%-- 
 <c:set var = "czy_zalogowany"  value = "${uzytkownicy.username}"/>
  	<c:catch var ="czy_zalogowany">
  	<c:if test = "${czy_zalogowany == null}">
  	<c:redirect url = "/login"/>
   	</c:if>
	</c:catch>
 --%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>FC BARCELONA</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="shortcut icon" href="https://wszystkiesymbole.pl/wp-content/uploads/2021/03/logo-FC-Barcelona.png">
  		<link href="https://app.staticsave.com/csscss/glowna0.css" rel="stylesheet" >
  		<link href="https://app.staticsave.com/csscss/glowna1.css" rel="stylesheet" >
  		<link href="https://app.staticsave.com/csscss/glowna001.css" rel="stylesheet" >
	</head>
	<body class="is-preload">
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
		</header>
		<div id="main">
		<article class="post">
		<header>
		<div class="title">
				<h2>Następny mecz:</h2>
				<p>Inter Miami CF - FC BARCELONA</p>
				<p>20 lipca 2022 01:30</p>
		</div>
				<div class="meta">
				<h4>Poprzedni mecz:</h4>
				<p>A-League All Stars - FC BARCELONA</p>
				<p>2:3</p>
		</div>
		</header>
				<p>Barcelona odrabia stratę i wygrywa w Australii</p>
				<img src="https://live-production.wcms.abc-cdn.net.au/c6db9cad7236ee073c43e58ddd3fccd2?impolicy=wcms_crop_resize&cropH=2177&cropW=3871&xPos=0&yPos=202&width=862&height=485" alt="Wygrana" />
				<p>FC Barcelona nie bez problemów pokonała A-League All Stars 3:2. Dla gości gole strzelali Dembélé, Traoré i Fati, a gospodarzy w pewnym momencie na prowadzenie wyprowadzili Piscopo i Traoré (zbieżność nazwisk przypadkowa).</p>
				<footer>
						<ul class="actions">
						<li><a href="artykuly.jsp" class="button large">Wszystkie artykuły</a></li>
						</ul>
				</footer>
		</article>
		</div>
		<section id="sidebar">
		<section id="intro">
		<header>
				<h2>FC BARCELONA</h2>
				<p>Aplikacja Webowa z użyciem JAVY, HIBERNATE I SPRING </p>
				<p>Witaj:  <c:out value="${uzytkownicy.username} "></c:out></p>
		</header>
		</section>
		<section>
		<div class="mini-posts">
		<article class="mini-post">
		<header>
				<h3><a href="newsy.jsp">Szybkie newsy</a></h3>
		</header>
		</article>
		<article class="mini-post">
		<header>
				<h3><a href="artykuly.jsp">Artykuły</a></h3>
		</header>
		</article>
		<article class="mini-post">
		<header>
				<h3><a href="historia.jsp">Historia klubu</a></h3>
		</header>
		</article>
		<article class="mini-post">
		<header>
				<h3><a href="sklad.jsp">Skład na sezon 2021/2022</a></h3>
		</header>
		</article>
		<article class="mini-post">
		<header>
				<h3><a href="terminarz.jsp">Terminarz na sezon 2021/2022</a></h3>
		</header>
		</article>
		</div>
		</section>
		<section class="blurb">
				<center><h2>Wykonał: </h2>
				<h3>Jakub Lesiński</h3></center>
		</section>
		</div>
		</body>
</html>