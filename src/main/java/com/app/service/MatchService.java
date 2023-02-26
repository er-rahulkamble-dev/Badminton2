package com.app.service;


import java.util.List;

import com.app.entity.MatchEvent;	



public interface MatchService {
	

		public MatchEvent saveMatchEvent(MatchEvent event) ;

	
		

		List<MatchEvent> getAllFixtures();
		}
	


