package Logowanie_rejestracja.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import Logowanie_rejestracja.dao.UzytkownicyDAO;
import Logowanie_rejestracja.model.Uzytkownicy;


//Automatycze podłączenie interfejsu UzytkownicyDao
@Service
public class UzytkownicyServiceImpl implements UzytkownicyService {
 @Autowired
 private UzytkownicyDAO uzytkownicyDao;
 @Override
 @Transactional
 public void registerUzytkownicy(Uzytkownicy uzytkownicy) {
	 uzytkownicyDao.registerUzytkownicy(uzytkownicy);
 }
 @Override
 public Uzytkownicy loginUzytkownicy(Uzytkownicy uzytkownicy) {
  return uzytkownicyDao.loginUzytkownicy(uzytkownicy);
 }
}