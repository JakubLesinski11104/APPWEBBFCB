package Logowanie_rejestracja.model;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
//Adnotacja @Entity określała, że ​​klasa jest klasą Entity.
@Entity
@Table(name = "Uzytkownicy")
//Adnotacja tabeli  służy do określenia nazwy tabeli, która powinna być zmapowana z encjami
public class Uzytkownicy {
 @Id
 //Adnotacja @Id  jest używana jako klucz podstawowy.
 @GeneratedValue(strategy = GenerationType.IDENTITY)
 private int id;
 private String username;
 private String imie;
 private String nazwisko;
 private String email;
 private String haslo;
 
 public String getusername() {
  return username;
 }
 public void setusername(String username) {
  this.username = username;
 }
 public String gethaslo() {
  return haslo;
 }
 public void sethaslo(String haslo) {
  this.haslo = haslo;
 }
 public Uzytkownicy() {
  super();
 }
 public Uzytkownicy(int id, String imie, String nazwisko, String email, String haslo, String username) {
  super();
  this.id = id;
  this.imie = imie;
  this.username = username;
  this.nazwisko = nazwisko;
  this.email = email;
  this.haslo = haslo;
 }
 public int getId() {
  return id;
 }
 public void setId(int id) {
  this.id = id;
 }
 public String getimie() {
  return imie;
 }
 public void setimie(String imie) {
  this.imie = imie;
 }
 public String getnazwisko() {
  return nazwisko;
 }
 public void setnazwisko(String nazwisko) {
  this.nazwisko = nazwisko;
 }

public String getEmail() {
  return email;
 }
 public void setEmail(String email) {
  this.email = email;
 }

 
 
}