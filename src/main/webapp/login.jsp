<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


  <title>Zaloguj się</title>
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'><link rel="stylesheet" href=login_style.css>

</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

<br/><br/><br/><br/><br/>
<div class="cont">

  <div class="form sign-in">
    <h2>Zaloguj się:</h2>
     <form action="logowanie" method="post">
    <label>
      <span>Wpisz email:</span>
      <input type="email" name="username" required="required"/>
    </label>
    <label>
      <span>Podaj hasło:</span>
      <input type="password" name="password" required="required" />
    </label>
   
    <button type="submit" class="submit" value="Zaloguj">Zaloguj się</button>
     </form>
  </div>
  <div class="sub-cont">
    <div class="img">
      <div class="img__text m--up">
      <br/><br/>
      
        <h2>Nie masz konta?</h2> <br/><br/><br/>
      
        <span 
       onclick="location='rejestracja.jsp'">
        
       <h3>Zarejestruj się!</h3>     </span>
        
      </div>
     

       
   
     
    </div>
    
  </div>
</div>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">
var status = document.getElementById("status").value;
if(status == "failed"){
	
	swal({
		  title: "Błąd!",
		  text: "Nie udało się zalogować!",
		  icon: "error",
		  button: "Powtórz hasło lub email!",
		});
}
else if(status == "zly_email"){
	swal("Podaj właściwy email!", "", "error");
	
}
else if(status == "zle_haslo"){
	swal("Podaj właściwe hasło!", "", "error");

}
</script>
</body>
</html>
