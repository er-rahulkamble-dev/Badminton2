package com.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.entity.MatchEvent;
import com.app.entity.Players;
import com.app.service.MatchService;





@Controller
@RequestMapping("/admin")
public class AdminController{
	@Autowired
	private MatchService matchService;
	
	
	@GetMapping("/dashboard2")
	public String showDashboard() {
		return "dashboard2";
	}
	@GetMapping("/addevent")
	public String addEventForm(Model model) {
		MatchEvent event = new MatchEvent();	
		model.addAttribute("event", event);
		return "addevent";
	}
	
	@RequestMapping(value="/save",method = RequestMethod.POST)
	public String saveMatchEvent(@ModelAttribute("event") MatchEvent event) {
		matchService.saveMatchEvent(event);	
		return "dashboard2";
	
	}	
	
	@RequestMapping("/getAllFixtures")
	public String getAllMatches(Model model) {
		List<MatchEvent> events = matchService.getAllFixtures();
		model.addAttribute("events", events);
		events.forEach(System.out::println);
		return "allmatches";

	}
	}



