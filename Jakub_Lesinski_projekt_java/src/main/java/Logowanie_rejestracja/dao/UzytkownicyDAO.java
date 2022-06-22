package Logowanie_rejestracja.dao;
import Logowanie_rejestracja.model.Uzytkownicy;

//Uzyskanie dostępu do danych z bazy danych MYSQL 

public interface UzytkownicyDAO {
 public void registerUzytkownicy(Uzytkownicy uzytkownicy);
 
 public Uzytkownicy loginUzytkownicy(Uzytkownicy uzytkownicy);
}