package com.ram.pojo;

public class Faculty {

	private int fid;
	private String fname;
	private String email;
	private String password;
	private String department;
	private String fsection;
	private String years;
	private String qualification;
	
	
	
	public Faculty() {
		super();
	}
	
	public Faculty(String fname, String email, String password, String department, String fsection, String years,
			String qualification) {
		super();
		this.fname = fname;
		this.email = email;
		this.password = password;
		this.department = department;
		this.fsection = fsection;
		this.years = years;
		this.qualification = qualification;
	}
	public Faculty(int fid, String fname, String email, String password, String department, String fsection,
			String years, String qualification) {
		super();
		this.fid = fid;
		this.fname = fname;
		this.email = email;
		this.password = password;
		this.department = department;
		this.fsection = fsection;
		this.years = years;
		this.qualification = qualification;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
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
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getFsection() {
		return fsection;
	}
	public void setFsection(String fsection) {
		this.fsection = fsection;
	}
	public String getYears() {
		return years;
	}
	public void setYears(String years) {
		this.years = years;
	}
	
	
	
	
}
