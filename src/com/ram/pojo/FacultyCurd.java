package com.ram.pojo;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class FacultyCurd {

	public int facultyLogin(Faculty f)
	{
		try {
		    Connection con=MysqlConnection.getConnect();
			
			String sql="select * from faculty where email=? and password=?";
					
			System.out.println(sql);
			PreparedStatement pst=con.prepareStatement(sql);
					
			pst.setString(1, f.getEmail());
			
			pst.setString(2, f.getPassword());
				
			ResultSet rs=pst.executeQuery();
			
			int x=0;
			
			if(rs.next())
			{
			    x=1;	
			}
			
			con.close();
			return x;
					
		} catch (Exception e) {
			// TODO: handle exception
			
			System.out.println(e);
		}
		
		return 0;
	}
	
	public int addFaculty(Faculty f)
	{
		
		try {
			
			Connection con=MysqlConnection.getConnect();
			
			String sql="insert into faculty(name,email,password,department,fsection,fyear,qualification) values(?,?,?,?,?,?,?)";
			
			
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, f.getFname());
			ps.setString(2, f.getEmail());
			ps.setString(3, f.getPassword());
			ps.setString(4, f.getDepartment());
			ps.setString(5,f.getFsection());
			ps.setString(6, f.getYears());
			ps.setString(7, f.getQualification());
			
			int x=ps.executeUpdate();
			
			if(x==1)
				return x;
		
			ps.close();
			
			con.close();
			
			
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		return 0;
	}
	public ArrayList<Faculty> displayFaculty(){
		
		try {
			
			Connection con=MysqlConnection.getConnect();
			
			String sql="select * from faculty";
			
			PreparedStatement pst=con.prepareStatement(sql);
			
			
			ArrayList<Faculty> al=new ArrayList<Faculty>();
		    ResultSet rs=pst.executeQuery();
		    
		    while(rs.next())
		    {
		    	int fid=rs.getInt(1);
		    	
		    	String fname=rs.getString(2);
		    	
		    	String email=rs.getString(3);
		    	
		    	String password=rs.getString(4);
		    	
		    	String department=rs.getString(5);
		    	
		    	String fsection=rs.getString(6);
		    	
		    	String years=rs.getString(7);
		    	
		    	String qualification=rs.getString(8);
		    	
		    	
		    	Faculty f=new Faculty();
		    	
		    	f.setFid(fid);
		    	
		    	f.setFname(fname);
		    	
		    	f.setEmail(email);
		    	
		    	f.setPassword(password);
		    	
		    	f.setDepartment(department);
		    	
		    	f.setFsection(fsection);
		    	
		    	f.setYears(years);
		    	
		    	f.setQualification(qualification);

		    	
		    	al.add(f);
		    	
		    }
		    pst.close();
			con.close();
			
			return al;
		} catch (Exception e) {
			// TODO: handle exception
			
			System.out.println(e);
		}
		return null;
	}
public Faculty  getFaculty(String email){
		
		try {
			
			Connection con=MysqlConnection.getConnect();
			
			String sql="select * from faculty where email=?";
			System.out.println(sql);
			PreparedStatement pst=con.prepareStatement(sql);
			
			pst.setString(1,email);

			
			Faculty f=null;
		    ResultSet rs=pst.executeQuery();
		    
		    if(rs.next())
		    {
		    	System.out.println("hello");
		    	int fid=rs.getInt(1);
		    	
		    	String fname=rs.getString(2);
		    	
		    	String email1=rs.getString(3);
		    	
		    	String password=rs.getString(4);
		    	
		    	String department=rs.getString(5);
		    	
		    	String fsection=rs.getString(6);
		    	
		    	String years=rs.getString(7);
		    	
		    	String qualification=rs.getString(8);
		    	
		    	
		    	f=new Faculty();
		    	
		    	f.setFid(fid);
		    	
		    	f.setFname(fname);
		    	
		    	f.setEmail(email1);
		    	
		    	f.setPassword(password);
		    	
		    	f.setDepartment(department);
		    	
		    	f.setFsection(fsection);
		    	
		    	f.setYears(years);
		    	
		    	f.setQualification(qualification);

		    	
		  
		    	
		    }
		    
		    pst.close();
			con.close();
			
			return f;
		} catch (Exception e) {
			// TODO: handle exception
			
			System.out.println(e);
		}
		return null;
	}
	
	public int deleteFaculty(int id)
	{
		try {
            Connection con=MysqlConnection.getConnect();
			
			String sql="delete from faculty where fid="+id;
			
			PreparedStatement pst=con.prepareStatement(sql);
			
			
			int x=pst.executeUpdate();
			
			
			pst.close();
			
			con.close();
			
			return x;
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		return 0;
	}
	
}
