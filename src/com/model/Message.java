package com.model;

public class Message {
	private String message;
	private String auteur;

	public Message() {
		super();
	}

	public Message(String message, String auteur) {
		super();
		this.message = message;
		this.auteur = auteur;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getAuteur() {
		return auteur;
	}

	public void setAuteur(String auteur) {
		this.auteur = auteur;
	}

}
