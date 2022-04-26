<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div align="center">
  <h1>Zarejestruj sie</h1>
  <form action="<%= request.getContextPath() %>/rejestracja" method="post">
   <table style="with: 80%">
    <tr>
     <td>Imie</td>
     <td><input type="text" name="Imie" /></td>
    </tr>
    <tr>
     <td>Nazwisko</td>
     <td><input type="text" name="Nazwisko" /></td>
    </tr>
    <tr>
     <td>Nick</td>
     <td><input type="text" name="Nick" /></td>
    </tr>
    <tr>
     <td>Haslo</td>
     <td><input type="password" name="Haslo" /></td>
    </tr>
    <tr>
     <td>Adres</td>
     <td><input type="text" name="Adres" /></td>
    </tr>
    <tr>
     <td>Kontakt</td>
     <td><input type="text" name="Kontakt" /></td>
    </tr>
   </table>
   <input type="submit" value="Submit" />
  </form>
 </div>
</body>
</html>