package rejestracja;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/rejestracja")
public class RejestracjaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String unick = request.getParameter("nick");
		String uimie = request.getParameter("imie");
		String unazwisko = request.getParameter("nazwisko");
		String uemail = request.getParameter("email");
		String uhaslo = request.getParameter("password");
		String urehaslo = request.getParameter("re_pass");

		RequestDispatcher  dispatcher = null;
		Connection con = null;
		
		
		if(unick == null || unick.equals("")) {
			request.setAttribute("status", "zly_nick");
			dispatcher = request.getRequestDispatcher("rejestracja.jsp");
			dispatcher.forward(request, response);
		}
		if(uimie == null || uimie.equals("")) {
			request.setAttribute("status", "zle_imie");
			dispatcher = request.getRequestDispatcher("rejestracja.jsp");
			dispatcher.forward(request, response);
		}
		if(unazwisko == null || unazwisko.equals("")) {
			request.setAttribute("status", "zle_nazwisko");
			dispatcher = request.getRequestDispatcher("rejestracja.jsp");
			dispatcher.forward(request, response);
		}
		if(uemail == null || uemail.equals("")) {
			request.setAttribute("status", "zly_email");
			dispatcher = request.getRequestDispatcher("rejestracja.jsp");
			dispatcher.forward(request, response);
		}
		if(uhaslo == null || uhaslo.equals("")) {
			request.setAttribute("status", "zle_haslo");
			dispatcher = request.getRequestDispatcher("rejestracja.jsp");
			dispatcher.forward(request, response);
		}else if(uhaslo.length()<8) {
			request.setAttribute("status", "zla_dlugosc_hasla");
			dispatcher = request.getRequestDispatcher("rejestracja.jsp");
			dispatcher.forward(request, response);
		}
		else if(!uhaslo.equals(urehaslo)) {
			request.setAttribute("status", "zle_re_haslo");
			dispatcher = request.getRequestDispatcher("rejestracja.jsp");
			dispatcher.forward(request, response);
		}
		
		
	
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/FCB?useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "Trudnehaslo!2");
			PreparedStatement pst = con.prepareStatement("insert into Uzytkownicy(unick,uimie,unazwisko,uhaslo,uemail) values(?,?,?,?,?)");
			pst.setString(1, unick);
			pst.setString(2, uimie);
			pst.setString(3, unazwisko);
			pst.setString(4, uhaslo);
			pst.setString(5, uemail);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("rejestracja.jsp");
			if(rowCount > 0) {
				request.setAttribute("status", "success");

				
			}else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
	}finally {
		try{
	con.close();
	}catch (SQLException e) {
		e.printStackTrace();
	}
	}
	}
}
