package com.ram.pojo;

public class Student {

	
	private int sid;
	
	private String sname;
	
	private String email;
	
	private String password;
	
	private String department;
	
	private String section;
	
	private int year;
	
	
	public Student()
	{
		
	}

	public Student( String sname, String email, String password, String department, String section, int year) {
		super();
		
		this.sname = sname;
		this.email = email;
		this.password = password;
		this.department = department;
		this.section = section;
		this.year = year;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}
	
	
	
	
}
