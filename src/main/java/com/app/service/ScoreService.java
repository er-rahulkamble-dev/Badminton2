package com.app.service;

import java.util.List;

import com.app.entity.Players;
import com.app.entity.ScoreCard;


public interface ScoreService {
	;
	public List<ScoreCard> fetchAllMatchRecord();

	public ScoreCard saveMatchRecord(int mid, ScoreCard matchRecord);
	public Players fetchtheWinner();
	Players fetchtheRunnerUp();
}
