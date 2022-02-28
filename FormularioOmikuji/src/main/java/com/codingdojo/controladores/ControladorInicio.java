package com.codingdojo.controladores;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ControladorInicio {
	@GetMapping("/omikuji")
    public String omikuji(HttpSession session, Model model) {
		session.removeAttribute("years");
		session.removeAttribute("city");
		session.removeAttribute("endeavor");
		session.removeAttribute("person");
		session.removeAttribute("organizm");
		session.removeAttribute("somethingnice");

    	return "index.jsp";
    }
    
    @GetMapping("/omikuji/show")
    public String omikujiShow(Model model, HttpSession session) {
    	if(session.getAttribute("years") != null ) {
    	model.addAttribute("years", session.getAttribute("years"));
    	model.addAttribute("city", session.getAttribute("city"));
    	model.addAttribute("endeavor", session.getAttribute("endeavor"));
    	model.addAttribute("person", session.getAttribute("person"));
    	model.addAttribute("organizm", session.getAttribute("organizm"));
    	model.addAttribute("somethingnice", session.getAttribute("somethingnice"));
    	return "mostrar.jsp";
    	}
    return "redirect:/omikuji";	
    }
    
    
    @RequestMapping(value="/omikuji", method=RequestMethod.POST)
    public String omikujiValor(
    		@RequestParam(value="years") Integer years,
    		@RequestParam(value="city") String city,
    		@RequestParam(value="person") String person,
    		@RequestParam(value="endeavor") String endeavor,
    		@RequestParam(value="organizm") String organizm,
    		@RequestParam(value="somethingnice") String somethingnice,
    		HttpSession session) {
    	
	    	session.setAttribute("years", years);
	    	session.setAttribute("city", city);
	    	session.setAttribute("person", person);
	    	session.setAttribute("endeavor", endeavor);
	    	session.setAttribute("organizm", organizm);
	    	session.setAttribute("somethingnice", somethingnice);

    	
        return "redirect:/omikuji/show";
    }
	
}
