package com.ram.pojo;

public class Questions {

	
	private int id;
	private String q_name;
	public Questions() {
		super();
	}
	public Questions(String q_name) {
		super();
		this.q_name = q_name;
	}
	public Questions(int id, String q_name) {
		super();
		this.id = id;
		this.q_name = q_name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQ_name() {
		return q_name;
	}
	public void setQ_name(String q_name) {
		this.q_name = q_name;
	}
	
	
	
}
