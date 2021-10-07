package com.codingdojo.Omikujiss.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller

public class HomeController {
	
	@RequestMapping("/omikuji")
	public String index(HttpSession session, Model model
			) {
		
        
		
		
		
		model.addAttribute("nam", "Riya");
		
		int thisScore = 100;
		
		session.setAttribute("score", thisScore);
		
		model.addAttribute("scoretoSend", session.getAttribute("score"));
		return "index.jsp";
	}
	
	@RequestMapping("/add")
	public String adding(HttpSession session) {
		int increment = (int)session.getAttribute("score");
		increment ++;
		session.setAttribute("score", increment);
		
		return "redirect:/omikuji/show";
	}
	
	
	
	@RequestMapping("/omikuji/show")
	public String show(HttpSession session, Model model
			) {
	
		
		
		
		
		
		session.getAttribute("score");
		model.addAttribute("score", session.getAttribute("score"));
		
		
		model.addAttribute("pick", session.getAttribute("pick"));
		model.addAttribute("name", session.getAttribute("name"));
		model.addAttribute("person", session.getAttribute("person"));
		model.addAttribute("living", session.getAttribute("living"));
		model.addAttribute("say", session.getAttribute("say"));
		
		return "show.jsp";
		
	}
	
	
	
	
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String show(@RequestParam(value="pick")int pick, 
			@RequestParam(value="name")String name, 
			@RequestParam(value="person")String person,
			@RequestParam(value="profession")String profession,
			@RequestParam(value="living")String living,
			@RequestParam(value="say")String say,  HttpSession session)
			{
		session.setAttribute("pick", pick);
		session.setAttribute("name", name);
		session.setAttribute("person", person);
		session.setAttribute("living", living);
		session.setAttribute("say", say);
		
		
		
		
		return "redirect:/omikuji/show";
	}
	
	@RequestMapping("/destroy")
	public String destroy(HttpSession session) {
		session.invalidate();
		return "redirect:/omikuji";
	}

}
