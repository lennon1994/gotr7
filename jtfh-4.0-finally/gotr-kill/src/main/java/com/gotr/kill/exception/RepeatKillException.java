package com.gotr.kill.exception;

public class RepeatKillException extends SeckillException {
	
	private static final long serialVersionUID = -3394655906907575940L;

	public RepeatKillException(String message) {
		super(message);
	}

	public RepeatKillException(String message, Throwable cause) {
		super(message, cause);
	}

}
