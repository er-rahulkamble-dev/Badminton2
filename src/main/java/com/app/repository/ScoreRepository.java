package com.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.app.entity.ScoreCard;
public interface ScoreRepository extends JpaRepository<ScoreCard,Integer>{
	
  public ScoreCard findByCurrentMatchMatchid(int mid);//this is interpreted as currentMatch.matchid bcz we have a field currentMatch in ScoreCard entity and bcz ScoreCard doesnt have its own PK it is shared from the Parent MatchEvent entity
  
  @Query("select max(sc.currentMatch.matchid) from ScoreCard sc")
  public int getLastMatchId();
  
  
  
}
