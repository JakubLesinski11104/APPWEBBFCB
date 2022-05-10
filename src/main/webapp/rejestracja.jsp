


<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


  <title>Zarejestruj się</title>
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'><link rel="stylesheet" href="rejestracja_style.css">

</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

<br/><br/><br/><br/><br/>
<div class="cont">

  <div class="form sign-in">
    <h2>Zarejestruj się:</h2>
     <form action="rejestracja" method="post">
    <label>
      <span>Wpisz nick:</span>
      <input type="text" name="nick" required= />
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
      <input type="password" name="password" required="required" />
    </label>
    <label>
      <span>Podaj hasło:</span>
      <input type="password" name="re_pass" required="required" />
    </label>
   
    <button type="submit" class="submit" value="Rejestruj">Zarejestruj się</button>
     </form>
  </div>
  <div class="sub-cont">
    <div class="img">
      <div class="img__text m--up">
      <br/><br/><br/><br/><br/>
      
        <h2>Masz już konto?</h2> <br/><br/><br/>
          <span onclick="location='login.jsp'">
        
      <h3> Zaloguj się!  </h3>  </span>
      </div>
      
     
    </div>
    
  </div>
</div>

 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">
var status = document.getElementById("status").value;
if(status == "success"){
	swal("Gratulacje!", "Pomyślnie stworzono konto, możesz się zalogować!", "success");
}
else if(status == "zly_nick"){
	swal("Podaj nick!", "", "error");
}
else if(status == "zle_imie"){
	swal("Podaj imię!", "", "error");
}
else if(status == "zle_nazwisko"){
	swal("Podaj nazwisko!", "", "error");
}
else if(status == "zly_email"){
	swal("Podaj email!", "", "error");
}
else if(status == "zle_haslo"){
	swal("Podaj hasło!", "", "error");
}
else if(status == "zla_dlugosc_hasla"){
	swal("Błąd!", "Hasło musi zawierać 8 znaków!", "error");
}
else if(status == "zle_re_haslo"){
	swal("Podane hasła się nie zgadzają!", "", "error");
}
</script>
</body>
</html>

