package Logowanie_rejestracja.controller;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import Logowanie_rejestracja.model.Uzytkownicy;
import Logowanie_rejestracja.service.UzytkownicyService;
@Controller
//Żądanie strony internetowej będzie obsługiwane przez metody obsługi w klasie kontrolera za pomocą @GetMapping i @PostMapping.
//Adnotacja @Controller oznacza klasę UzytkownicyController jako procedurę obsługi żądań
public class UzytkownicyController {
 @Autowired
 private UzytkownicyService service;
 @GetMapping("/")
 //Każde żądanie przychodzące  dla adresu URL „/” będzie obsługiwane przez metodę home(). Przekieruje Cię na  stronę rejestracji.
 public ModelAndView home(Model m) {
	 Uzytkownicy uzytkownicy = new Uzytkownicy();
  m.addAttribute("uzytkownicy", uzytkownicy);
  ModelAndView modelAndView = new ModelAndView("rejestracja");  
  return modelAndView;  
 }
 @PostMapping("/rejestracja")
 //Żądaniejest obsługiwane przez metodę register() i wywoła metodę registerUzytkownicy() klasy usługi.
 public String register(@ModelAttribute ("uzytkownicy") Uzytkownicy uzytkownicy, Model model) {
// @ModelAttribute w metodzie register odczyta dane z formularza.
  service.registerUzytkownicy(uzytkownicy);
  model.addAttribute("success","Gratulacje, zostałeś zarejestrowany!");
  System.out.println("Zarejestrowano użytkownika");
  return "rejestracja";
 }
 @GetMapping("/login")
 //Żądanie jest obsługiwane przez metodę login() i wywoła metodę loginUzytkownicy() klasy usługi.
 public String loginDisplay(Model m,HttpSession session) {
  
	 Uzytkownicy uzytkownicy = new Uzytkownicy();
  
  if (session.getAttribute("Uzytkownicy") != null) {
   session.invalidate();
   System.out.println("Zalogowano");
   m.addAttribute("success", "Gratulacje, zostałeś zalogowany!");
  }
  m.addAttribute("uzytkownicy", uzytkownicy); 
  return "login";  
 }
 @PostMapping("/login")
 public String login(@ModelAttribute ("uzytkownicy") Uzytkownicy uzytkownicy, Model model, HttpSession session) {
	 Uzytkownicy uzytkownicy2 = service.loginUzytkownicy(uzytkownicy);
  if(uzytkownicy2 != null) {
   System.out.println("Zalogowano użytkownika");
   model.addAttribute("uzytkownicy",uzytkownicy2);
   session.setAttribute("uzytkownicy", uzytkownicy2);
   return "index";
  }
  if(uzytkownicy2 ==null) {
  System.out.println("Nie udało sie zalogować");
  model.addAttribute("error", "Zły pseudonim lub hasło! Podaj dane jeszcze raz!!");}
  return "login";
  
 }
}