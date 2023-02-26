package com.app.entity;

import java.util.List;
import java.util.Optional;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "match_record")
@NamedNativeQueries(value = {
        @NamedNativeQuery(name = "ScoreCard.findByCurrentMatchMatchid", query = "SELECT * FROM match_record WHERE match_event_id=?1" ,resultClass=ScoreCard.class),
       
        
})
public class ScoreCard {
	@Column(name = "date")
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	private String date;
	// we are using here this as PK bcz we have shared PK from MatchEvent entity by using MapsId at line 39
	@Id
	@Column(name = "match_id")
	private int matchid;  // dont consider this for anything as this reference is useless here bcz we are using shared PK here and the name of shared PK is currentMatch.matchid 
	@Column(name = "player_id1")
	private int playerid1;

	@Column(name = "player_id2")
	private int playerid2;
	@Column(name = "setp1")
	private int setp1;
	@Column(name = "setp2")
	private int setp2;

	@Column(name = "winner")
	private int winner;

	@OneToOne
	@JoinColumn(name = "match_event_id")
	@MapsId // to tell hibernate : use shared PK approach (single col will act as PK n FK referring to matchid) 
			//BIdirectional relationship
	private MatchEvent currentMatch; //PK : currentMatch.matchid

	public ScoreCard(int i, String string, int j, int k, int l, int m, int n) {
	}

	public ScoreCard(int i) {
		// TODO Auto-generated constructor stub
	}

	public ScoreCard(String string, int i, int j, int k, int l, int m) {
		// TODO Auto-generated constructor stub
	}

	public ScoreCard() {
		// TODO Auto-generated constructor stub
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}


	public int getPlayerid1() {
		return playerid1;
	}

	public void setPlayerid1(int playerid1) {
		this.playerid1 = playerid1;
	}

	

	public int getWinner() {
		return winner;
	}

	public void setWinner(int winner) {
		this.winner = winner;
	}

	public int getPlayerid2() {
		return playerid2;
	}

	public void setPlayerid2(int playerid2) {
		this.playerid2 = playerid2;
	}


	public int getSetp1() {
		return setp1;
	}

	public void setSetp1(int setp1) {
		this.setp1 = setp1;
	}

	public int getSetp2() {
		return setp2;
	}

	public void setSetp2(int setp2) {
		this.setp2 = setp2;
	}
	
	public MatchEvent getCurrentMatch() {
		return currentMatch;
	}
	
	public void setCurrentMatch(MatchEvent currentMatch) {
		this.currentMatch = currentMatch;
	}

	@Override
	public String toString() {
		return "ScoreCard [date=" + date + ", matchid=" + matchid + ", playerid1=" + playerid1 + ", playerid2="
				+ playerid2 + ", setp1=" + setp1 + ", setp2=" + setp2 + ", winner=" + winner + ", currentMatch="
				+ currentMatch + "]";
	}


//	@Override
//	public String toString() {
//		return "ScoreCard [date=" + date + ", playerid1=" + playerid1 + ", playerid2="
//				+ playerid2 + ", setp1=" + setp1 + ", setp2=" + setp2 + ", winner=" + winner + "]";
//	}
	
	}

	
	
	


