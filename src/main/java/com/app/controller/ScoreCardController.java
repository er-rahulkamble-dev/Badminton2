package com.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.entity.Players;
import com.app.entity.ScoreCard;
import com.app.service.ScoreService;

@Controller
@RequestMapping("/admin")
public class ScoreCardController {

	@Autowired
	private ScoreService scoreService;



	@RequestMapping("/matchPlay")
	public String matchPlayground() {
		return "matchplay";
	}

	@RequestMapping(value = "/saveMatchRecord", method = RequestMethod.POST)
	public String matchRecordSave(@RequestParam("mid") int mid, @RequestParam("winner") int winner,
			@ModelAttribute ScoreCard matchRecord) {
		System.out.println("match ID from JSP: " + mid);
		matchRecord.setWinner(winner);
		System.out.println(matchRecord);
		scoreService.saveMatchRecord(mid, matchRecord);
		return "matchplaysaved";
	}

	@RequestMapping("/getAllMatchRecords")
	public String showAllMatchRecords(Model model) {
		List<ScoreCard> matchRecords = scoreService.fetchAllMatchRecord();
		model.addAttribute("matchRecords", matchRecords);
		return "matchRecordList";
	}

	@RequestMapping("/getTheWinner")
	public String fetchtheWinner(Model model) {

		Players winner = scoreService.fetchtheWinner();
		Players runnerup = scoreService.fetchtheRunnerUp();
		model.addAttribute("winner", winner);
		model.addAttribute("runnerup", runnerup);
		return "winner2";
	}

}