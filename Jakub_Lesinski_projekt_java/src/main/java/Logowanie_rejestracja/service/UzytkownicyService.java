package Logowanie_rejestracja.service;
import Logowanie_rejestracja.model.Uzytkownicy;
public interface UzytkownicyService {
 public void registerUzytkownicy(Uzytkownicy uzytkownicy);
 
 public Uzytkownicy loginUzytkownicy(Uzytkownicy uzytkownicy);
}