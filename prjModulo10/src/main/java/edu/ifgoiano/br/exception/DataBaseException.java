package edu.ifgoiano.br.exception;

public class DataBaseException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6023702158001066200L;

	public DataBaseException(String mensagem, Exception e) {
		super(mensagem, e);
	}
}
