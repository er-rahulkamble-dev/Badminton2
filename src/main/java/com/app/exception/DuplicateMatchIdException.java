package com.app.exception;

import com.app.entity.MatchEvent;

public class DuplicateMatchIdException extends RuntimeException {
	

    private MatchEvent matchEvent;
    
    private String message;
    
    public DuplicateMatchIdException(String message) {
        super(message);
    }

    public DuplicateMatchIdException(MatchEvent matchEvent) {
        this.matchEvent = matchEvent;
    }


	public MatchEvent getMatchEvent() {
		return matchEvent;
	}

	public void setMatchEvent(MatchEvent matchEvent) {
		this.matchEvent = matchEvent;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
    
    

	
}
