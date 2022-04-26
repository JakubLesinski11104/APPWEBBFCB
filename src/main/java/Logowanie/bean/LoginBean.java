package Logowanie.bean;


import java.io.Serializable;

public class LoginBean implements Serializable {
   
    private static final long serialVersionUID = 1L;
    private String Nick;
    private String Haslo;
	public String getNick() {
		return Nick;
	}
	public void setNick(String nick) {
		Nick = nick;
	}
	public String getHaslo() {
		return Haslo;
	}
	public void setHaslo(String haslo) {
		Haslo = haslo;
	}

   
}

