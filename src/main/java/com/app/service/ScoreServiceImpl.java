package com.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.entity.MatchEvent;
import com.app.entity.Players;
import com.app.entity.ScoreCard;
import com.app.repository.MatchEventRepository;
import com.app.repository.PlayerRepository;
import com.app.repository.ScoreRepository;

@Service
public class ScoreServiceImpl implements ScoreService {

	@Autowired
	private MatchEventRepository matchEventRepository;
	@Autowired
	private ScoreRepository scoreRepository;
	@Autowired
	private PlayerRepository playerRepository;

	

	@Override
	public List<ScoreCard> fetchAllMatchRecord() {
		return scoreRepository.findAll();

	}

	@Override
	public ScoreCard saveMatchRecord(int mid, ScoreCard matchRecord) {
		System.out.println("in ScoreCardServiceImpl");
		System.out.println("in saveMatchRecord in service impl");

		ScoreCard sc = scoreRepository.findById(mid).get();
		MatchEvent mv = matchEventRepository.findById(mid).get();
		sc.setCurrentMatch(mv);

		sc.setSetp1(matchRecord.getSetp1());
		sc.setSetp2(matchRecord.getSetp2());
		sc.setWinner(matchRecord.getWinner());
		System.out.println(sc);
		return scoreRepository.save(sc);
	}

	@Override
	public Players fetchtheWinner() {
		int lastMatchId = scoreRepository.getLastMatchId();
		ScoreCard sc = scoreRepository.findByCurrentMatchMatchid(lastMatchId);

		Players winner = playerRepository.findById(sc.getWinner()).get(); // we have to use .get() to avoid writing Optional<Player> in the LHS
		System.out.println(sc);
		System.out.println("WINNER: "+winner);

		return winner;

	}
	@Override
	public Players fetchtheRunnerUp() {
		int lastMatchId = scoreRepository.getLastMatchId();
		ScoreCard sc = scoreRepository.findByCurrentMatchMatchid(lastMatchId);

		Players runnerup = null;
		if (sc.getWinner()!=sc.getPlayerid1())
			runnerup = playerRepository.findById(sc.getPlayerid1()).get(); // we have to use .get() to avoid writing Optional<Player> in the LHS
		else 
			runnerup = playerRepository.findById(sc.getPlayerid2()).get();
		System.out.println(sc);
		System.out.println("WINNER: "+runnerup);
		

		return runnerup;

	}
}