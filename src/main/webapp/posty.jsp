<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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
<meta charset="UTF-8">


  <title>Wszystkie posty</title>

</head>
<body>
<h2 align="center"><font><strong>Posty</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>id</b></td>
<td><b>tytul</b></td>
<td><b>zawartosc</b></td>
<td><b>autor</b></td>
<td><b>data</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FCB?useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "Trudnehaslo!2");
statement=connection.createStatement();
String sql ="SELECT * FROM Posty";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("tytul") %></td>
<td><%=resultSet.getString("zawartosc") %></td>
<td><%=resultSet.getString("autor") %></td>
<td><%=resultSet.getString("data") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
