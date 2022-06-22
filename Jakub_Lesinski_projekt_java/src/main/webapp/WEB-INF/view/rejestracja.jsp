<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%--Żródło wygladu strony: https://codepen.io/suez/pen/RpNXOR --%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Zarejestruj się</title>
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
  <link rel="stylesheet" href="https://app.staticsave.com/csscss/registerstyle.css">
	<link rel="shortcut icon" href="https://wszystkiesymbole.pl/wp-content/uploads/2021/03/logo-FC-Barcelona.png">
</head>
<body>
<br/><br/><br/><br/><br/>
<div class="cont">
<div class="form sign-in">
  	<center> <c:if test="${success != null}">
	 <div  style="color: green;font-size: 20px;" role="alert"><h2><c:out value="${success}"/></h2></div>
	</c:if></center>
    <h2>Zarejestruj się:</h2>
     <form action="rejestracja" method="post">
    <label>
      <span>Wpisz nick:</span>
      <input type="text" name="username" required="required" />
    </label>
     <label>
      <span>Wpisz imie:</span>
      <input type="text" name="imie" required="required" />
    </label>
     <label>
      <span>Wpisz nazwisko:</span>
      <input type="text" name="nazwisko" required="required" />
    </label>
     <label>
      <span>Wpisz email:</span>
      <input type="email" name="email" required="required" />
    </label>
    <label>
      <span>Podaj hasło:</span>
      <input type="password" name="haslo" required="required" />
    </label>
  <button type="submit" class="submit" value="Rejestruj">Zarejestruj się</button>
   </form>
</div>
<div class="sub-cont">
<div class="img">
<div class="img__text m--up">
   <br/><br/><br/><br/><br/>
   <h2>Masz już konto?</h2> <br/><br/><br/>
   <span onclick="location='login'">
   <h3> Zaloguj się!  </h3>  </span>
</div>
</div>
</div>
</div>
</body>
</html>





