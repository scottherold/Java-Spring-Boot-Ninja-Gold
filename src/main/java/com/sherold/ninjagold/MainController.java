package com.sherold.ninjagold;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// Controller annotation
@Controller

// Root route catch-all
@RequestMapping("/")
public class MainController {
	// Root route
	@RequestMapping("")
	
	// adds session and model
	public String index(HttpSession session, Model model) {	
		
		// Check session
		if (session.getAttribute("ninja") == null) {
			Ninja newNinja = new Ninja();
			session.setAttribute("ninja", newNinja);
		}
		
		// ninja object for view model / debt check
		Ninja ninja = (Ninja) session.getAttribute("ninja");
		
		// sets model attribute for view
		model.addAttribute("ninja", ninja);
		
		// Event handler for debt
		if (ninja.getGold() > -100) {
			return "index.jsp";
		} else {
			return "prison.jsp";
		}		
	}
	
	// Routes for activities
	@RequestMapping(value="/process/{event}", method=RequestMethod.POST)
	
	// adds session and path variables
	public String process(@PathVariable("event") String event, HttpSession session) {
		// Calls ninja object from session
		Ninja ninja = (Ninja) session.getAttribute("ninja");
		
		// ninja method to process event
		ninja.generateGold(event);
		
		// Updates session
		session.setAttribute("ninja", ninja);
		return "redirect:/";
	}
	
	// Route for reset
	@RequestMapping(value="/reset", method=RequestMethod.POST)
	public String reset(HttpSession session) {
		// Sets session ninja to null
		session.setAttribute("ninja", null);
		
		return "redirect:/";
	}
}
