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
public class UzytkownicyController {
 @Autowired
 private UzytkownicyService service;
 @GetMapping("/")
 public ModelAndView home(Model m) {
	 Uzytkownicy uzytkownicy = new Uzytkownicy();
  m.addAttribute("uzytkownicy", uzytkownicy);
  ModelAndView modelAndView = new ModelAndView("rejestracja");  
  return modelAndView;  
 }
 @PostMapping("/rejestracja")
 public String register(@ModelAttribute ("uzytkownicy") Uzytkownicy uzytkownicy, Model model) {
  service.registerUzytkownicy(uzytkownicy);
  model.addAttribute("success","Gratulacje, zostałeś zarejestrowany!");
  return "rejestracja";
 }
 @GetMapping("/login")
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
  System.out.println("uzytkownicy2"+uzytkownicy2);
  if(uzytkownicy2 != null) {
   System.out.println("Zalogowano");
   model.addAttribute("uzytkownicy",uzytkownicy2);
   session.setAttribute("uzytkownicy", uzytkownicy2);
   return "index";
  }
  if(uzytkownicy2 ==null) {
  System.out.println("on");
  model.addAttribute("error", "Zły pseudonim lub hasło! Podaj dane jeszcze raz!!");}
  return "login";
  
 }
}