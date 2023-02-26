package com.app.service;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import com.app.entity.MatchEvent;
import com.app.entity.ScoreCard;
import com.app.repository.MatchEventRepository;
import com.app.repository.ScoreRepository;

@RunWith(MockitoJUnitRunner.class) 
public class TestMatchServiceImpl  {


	@InjectMocks
	MatchServiceImpl matchService;
	
	
	@Mock
   MatchEventRepository matchRepository;

	 @Mock
	 ScoreRepository  scoreService;




 @Test
	public void getAllFixtures() {
		List<MatchEvent> event = new ArrayList<MatchEvent>();
	event.add( new MatchEvent( "21/02/2016",1,2));
	when(matchRepository.findAll()).thenReturn(event);	
	List<MatchEvent> eventList = matchService.getAllFixtures();
	assertEquals(1,eventList.size());

	}



	
	
	
}
 


