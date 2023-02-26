package com.app.exception;


public class NoValueEnteredException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	private String msg;

	public NoValueEnteredException(String message) {
		super(message);
	}

	@Override
	public String getMessage() {
		return super.getMessage();
	}

}
