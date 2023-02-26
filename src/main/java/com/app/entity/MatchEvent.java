package com.app.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Matches")
public class MatchEvent {

	public MatchEvent( String date, int playerid1, int playerid2) {
		super();
		this.date = date;
		
		this.playerid1 = playerid1;
		this.playerid2 = playerid2;
	}

	

	public MatchEvent() {
		// TODO Auto-generated constructor stub
	}



	public MatchEvent(int i, String string, int j, int k) {
		// TODO Auto-generated constructor stub
	}



	@Column(name = "Date")
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	private String date;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "match_id", length = 30)
	private int matchid;
	@Column(name = "player_id1", length = 30)
	private int playerid1;
	@Column(name = "player_id2", length = 30)
	private int playerid2;
	
	@OneToOne(mappedBy = "currentMatch", cascade = CascadeType.ALL)
//    @PrimaryKeyJoinColumn
    private ScoreCard matchScoreCard; //reference of ScoreCard entity

	@Override
	public String toString() {
		return "MatchEvent [date=" + date + ", matchid=" + matchid + ", playerid1=" + playerid1 + ", playerid2="
				+ playerid2 + "]";
	}

	public ScoreCard getMatchScoreCard() {
		return matchScoreCard;
	}

	public void setMatchScoreCard(ScoreCard matchScoreCard) {
		this.matchScoreCard = matchScoreCard;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getMatchid() {
		return matchid;
	}

	public void setMatchid(int matchid) {
		this.matchid = matchid;
	}

	public int getPlayerid1() {
		return playerid1;
	}

	public void setPlayerid1(int playerid1) {
		this.playerid1 = playerid1;
	}

	public int getPlayerid2() {
		return playerid2;
	}

	public void setPlayerid2(int playerid2) {
		this.playerid2 = playerid2;
	}

}
