<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%--Żródło wygladu strony: https://codepen.io/suez/pen/RpNXOR --%>

<html>
<head>
	<meta charset="UTF-8">
	<title>Zaloguj się</title>
	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
  	<link href="https://app.staticsave.com/csscss/loginstyle.css" rel="stylesheet" >
 	<link rel="shortcut icon" href="https://wszystkiesymbole.pl/wp-content/uploads/2021/03/logo-FC-Barcelona.png">
</head>
<body>
<br/><br/><br/><br/><br/>
<div class="cont">
<div class="form sign-in">
  <h2>Zaloguj się:</h2>
    <form action="login" method="post">
    <label>
     <span>Wpisz pseudonim:</span>
     <input type="text" name="username" required="required"/>
    </label>
    <label>
     <span>Podaj hasło:</span>
     <input type="password" name="haslo" required="required" />
    </label>
   <button type="submit" class="submit" value="Zaloguj">Zaloguj się</button>
   <center> <c:if test="${error != null}">
 	<div  style="color: red;font-size: 20px;" role="alert"><h3><c:out value="${error}"/></h3></div>
	</c:if></center>
     </form>
</div>
<div class="sub-cont">
<div class="img">
<div class="img__text m--up">
     <br/><br/>
      <h2>Nie masz konta?</h2> <br/><br/><br/>
      <span  onclick="location='/Jakub_Lesinski_projekt_java/'">
       <h3>Zarejestruj się!</h3>     </span>
</div>
</div>
</div>
</div>
 </body>
</html>
