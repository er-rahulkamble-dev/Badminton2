package com.app.service;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Stream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import com.app.entity.Players;
import com.app.repository.PlayerRepository;

@RunWith(MockitoJUnitRunner.class)
public class PlayerServiceImplTest {
	
	@InjectMocks
	PlayerServiceImpl playerService;
	
	@Mock
	PlayerRepository playerRepository;
	
	@Test
	public void testFetchAllPlayers() {
		
		List<Players> players = new ArrayList<>();
		players.add(new Players(101,"Raj", "jadhav","male",22));
		players.add(new Players(102,"rahul", "raut","male",25));
		players.add(new Players(103,"tushar", "sathe","male",32));
		players.add(new Players(104,"manoj", "yadhav","male",26));
		
		when(playerRepository.findAll()).thenReturn(players);		
		
		List<Players> List = playerService.getAllplayers();
		
		assertEquals(4, List.size());
		
	}	

	
	@Test
	public void testFetchAllmalePlayers() {
		
		List<Players> players = new ArrayList<>();
		players.add(new Players(101,"Raj", "jadhav","male",22));
		players.add(new Players(102,"rahul", "raut","male",25));
		players.add(new Players(103,"manju", "yadhav","female",26));
		
		List<Players> copy = players.subList(0, 2);
		
		when(playerRepository.findByGender("male")).thenReturn(copy);		
		
		List<Players> List = playerService.getMalePlayers();
		
		assertEquals(2,List.size());
		
	}	
	
	@Test
	public void testFetchAllfemalePlayers() {
		
		List<Players> players = new ArrayList<>();
		players.add(new Players(101,"Raj", "jadhav","male",22));
		players.add(new Players(102,"rahul", "raut","male",25));
		players.add(new Players(103,"manju", "yadhav","female",26));
		
		List<Players> copy = players.subList(2, 3);
		
		when(playerRepository.findByGender("female")).thenReturn(copy);		
		
		List<Players> List = playerService.getFemalePlayers();
		
		assertEquals(1,List.size());
		
	}	

}
