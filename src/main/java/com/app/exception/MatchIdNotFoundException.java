package com.app.exception;

public class MatchIdNotFoundException extends RuntimeException {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public MatchIdNotFoundException() {
    	
	       
    }

	public MatchIdNotFoundException(String message) {
    	
        super(message);
    }
}
