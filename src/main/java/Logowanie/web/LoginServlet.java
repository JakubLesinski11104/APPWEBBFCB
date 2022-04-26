package Logowanie.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Logowanie.baza.LoginDao;
import Logowanie.bean.LoginBean;
import jakarta.servlet.annotation.WebServlet;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginDao loginDao;

    public void init() {
        loginDao = new LoginDao();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    	    throws ServletException, IOException { }
    protected void doPost (HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String Nick = request.getParameter("Nick");
        String Haslo = request.getParameter("Haslo");
        LoginBean loginBean = new LoginBean();
        loginBean.setNick(Nick);
        loginBean.setHaslo(Haslo);

        try {
            if (loginDao.validate(loginBean)) {
             
                response.sendRedirect("/WEB-INF/Zalogowano.jsp");
            } else {
                HttpSession session = request.getSession();
             
                response.sendRedirect("/WEB-INF/Login.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}