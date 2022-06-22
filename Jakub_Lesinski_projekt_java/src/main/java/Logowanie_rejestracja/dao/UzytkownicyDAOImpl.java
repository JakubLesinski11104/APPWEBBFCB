package Logowanie_rejestracja.dao;
import java.util.List;
import javax.persistence.NoResultException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import Logowanie_rejestracja.model.Uzytkownicy;
@Repository
@Transactional

public class UzytkownicyDAOImpl implements UzytkownicyDAO{
 @Autowired
 private SessionFactory factory;
 @Override
 //Metoda registerUzytkownicy() zapisuje dane w bazie danych.
 public void registerUzytkownicy(Uzytkownicy uzytkownicy) {
  Session session = factory.getCurrentSession();
  session.save(uzytkownicy);
 }
 @Override
 //Metoda loginUzytkownicy uwierzytelnia dane wejściowe użytkownika za pomocą danych wejściowych znajdujących się w tabeli bazy danych i zwraca nam obiekt Uzytkownicy.
 	public Uzytkownicy loginUzytkownicy(Uzytkownicy uzytkownicy) {
  Session session = factory.getCurrentSession();
  try {
  Query<Uzytkownicy> query = session.createQuery("from Uzytkownicy where username =:username and haslo =:haslo",Uzytkownicy.class);
  query.setParameter("username", uzytkownicy.getusername());
  query.setParameter("haslo", uzytkownicy.gethaslo());
  uzytkownicy = query.getSingleResult();
  return uzytkownicy;
  }catch (NoResultException e) {
   // TODO: handle exception
   return null;
  }
 }
}