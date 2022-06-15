package Logowanie_rejestracja.dao;
import Logowanie_rejestracja.model.Uzytkownicy;
public interface UzytkownicyDAO {
 public void registerUzytkownicy(Uzytkownicy uzytkownicy);
 
 public Uzytkownicy loginUzytkownicy(Uzytkownicy uzytkownicy);
}