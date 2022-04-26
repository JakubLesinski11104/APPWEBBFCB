package Rejestracja.kontroler;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import Rejestracja.Dao.RejestracjaDao;
import Rejestracja.model.Rejestracja;
import jakarta.servlet.annotation.WebServlet;



@WebServlet("/rejestracja")
public class RejestracjaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private RejestracjaDao employeeDao = new RejestracjaDao() ;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    	    throws ServletException, IOException {
    	response.getWriter().append("Server at:").append(request.getContextPath());
    	
    	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Rejestracja.jsp");
    	dispatcher.forward(request, response);
    	
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String Imie = request.getParameter("Imie");
        String Nazwisko = request.getParameter("nazwisko");
        String Nick = request.getParameter("Nick");
        String Haslo = request.getParameter("Haslo");
        String Adres = request.getParameter("Adres");
        String Kontakt = request.getParameter("Kontakt");

        Rejestracja employee = new Rejestracja();
        employee.setImie(Imie);
        employee.setNazwisko(Nazwisko);
        employee.setNick(Nick);
        employee.setHaslo(Haslo);
        employee.setKontakt(Kontakt);
        employee.setAdres(Adres);

        try {
            employeeDao.RejestracjaUzytkownikow(employee);
        } catch (Exception e) {
            e.printStackTrace();
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Zarejestrowano.jsp");
    	dispatcher.forward(request, response);
    }
}