package com.ram.pojo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class StudentCurd {

	
	
	public int studentLogin(Student s)
	{
		try {
		    Connection con=MysqlConnection.getConnect();
			
			String sql="select * from student where email=? and password=?";
					
			PreparedStatement pst=con.prepareStatement(sql);
					
			pst.setString(1, s.getEmail());
			
			pst.setString(2, s.getPassword());
				
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
	
	public int addStudent(Student s)
	{
		
		try {
			
			Connection con=MysqlConnection.getConnect();
			
			String sql="insert into student(sname,email,password,department,section,year) values(?,?,?,?,?,?)";
			
			PreparedStatement pst=con.prepareStatement(sql);
			
			pst.setString(1, s.getSname());
			pst.setString(2, s.getEmail());
			pst.setString(3, s.getPassword());
			pst.setString(4,s.getDepartment());
			pst.setString(5, s.getSection());
			pst.setInt(6, s.getYear());
			
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
	
	
public ArrayList<Student> displayStudent(){
		
		try {
			
            Connection con=MysqlConnection.getConnect();
			
			String sql="select * from student";
			
			PreparedStatement pst=con.prepareStatement(sql);
			
			
			ArrayList<Student> al=new ArrayList<Student>();
			
		    ResultSet rs=pst.executeQuery();
		    
		    
		    while(rs.next())
		    {
		    	
		    	int sid=rs.getInt(1);
		    	
		    	String sname=rs.getString(2);
		    	
		    	String email=rs.getString(3);
		    	
		    	String password=rs.getString(4);
		    	
		    	
		    	String department=rs.getString(5);
		    	
		    	
		    	String section=rs.getString(6);
		    	
		    	int year=rs.getInt(7);
		    	
		    	Student s=new Student();
		    	
		    	s.setSid(sid);
		    	
		    	s.setSname(sname);
		    	
		    	s.setEmail(email);
		    	
		    	s.setPassword(password);
		    	
		    	s.setDepartment(department);
		    	
		    	s.setSection(section);
		    	
		    	s.setYear(year);
		    	
		    	al.add(s);
		    	
		    	
		    }
		    
		   
		    
		    
		    pst.close();
		    con.close();
		    
		    
		    return al;
		    
		}
		catch(Exception ex)
		{
		  System.out.println(ex);	 
		}
		
		return null;
		
		}
	
public int deleteStudent(int id)
{
	try {
        Connection con=MysqlConnection.getConnect();
		
		String sql="delete from student where sid="+id;
		
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
