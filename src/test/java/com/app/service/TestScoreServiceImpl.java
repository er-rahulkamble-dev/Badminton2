package com.app.service;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import com.app.entity.MatchEvent;
import com.app.entity.Players;
import com.app.entity.ScoreCard;
import com.app.repository.MatchEventRepository;
import com.app.repository.PlayerRepository;
import com.app.repository.ScoreRepository;

@RunWith(MockitoJUnitRunner.class)
public class TestScoreServiceImpl {
	@InjectMocks
	ScoreServiceImpl scoreService;

	@Mock
	ScoreRepository scoreRepository;

	@Mock
	PlayerRepository playerRepository;
	
	@Mock
	MatchService matchService;
	
	@Mock
	MatchEventRepository matchEventRepository;
	
	@Test
	public void fetchtheWinner() {
		List<ScoreCard> scoreDetails = new ArrayList<ScoreCard>();
		scoreDetails.add(new ScoreCard(1, "21/02/2016", 1, 2, 1, 2, 1));
		scoreDetails.add(new ScoreCard(2, "21/02/2016", 1, 2, 1, 2, 1));
		when(scoreRepository.getLastMatchId()).thenReturn(2);
		assertEquals(2, scoreRepository.getLastMatchId());

	}

	@Test
	public void fetchAllMatchRecord() {
		List<ScoreCard> sc = new ArrayList<ScoreCard>();
		sc.add(new ScoreCard("21/02/2016", 1, 2, 1, 2, 1));
		sc.add(new ScoreCard("21/02/2016", 2, 2, 1, 2, 1));
		sc.add(new ScoreCard("21/02/2016", 1, 2, 2, 2, 1));
		sc.add(new ScoreCard("21/02/2016", 1, 2, 1, 2, 1));

		when(scoreRepository.findAll()).thenReturn(sc);

		List<ScoreCard> List = scoreService.fetchAllMatchRecord();

		assertEquals(4, List.size());
	}


}
