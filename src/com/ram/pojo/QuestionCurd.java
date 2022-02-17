package com.ram.pojo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class QuestionCurd {

	
	public int addQtF(Questions q) {
		
		try {
			
			Connection con=MysqlConnection.getConnect();
			
			String sql="insert into qtf(qname) values(?)";
			
			PreparedStatement pst=con.prepareStatement(sql);
			
			pst.setString(1, q.getQ_name());
			
			int x=pst.executeUpdate();
			
			return x;
			
			
		} catch (Exception e) {
			// TODO: handle exception
		     System.out.println(e);
		}
		return 0;
	}
	
	public ArrayList<Questions> getQtf()
	{
		ArrayList<Questions> al=new ArrayList<Questions>();
		
		try {
			
			Connection con=MysqlConnection.getConnect();
			
			String sql="select * from Qtf";
			
			PreparedStatement pst=con.prepareStatement(sql);
			
			ResultSet rs=pst.executeQuery();
			
			
			while(rs.next())
			{
				int id=rs.getInt(1);
				String q_name=rs.getString(2);
				
				Questions q=new Questions(id, q_name);
				
				al.add(q);
			}
			
			rs.close();
			con.close();
			return al;
			
		} catch (Exception e) {
			// TODO: handle exception
			
			System.out.println(e);
		}
		return al;
	}
	
	public Questions getQtf(int id)
	{
		try {
		
		Connection con=MysqlConnection.getConnect();
		
		String sql="select * from Qtf where id=?";
		
		PreparedStatement pst=con.prepareStatement(sql);
		
		ResultSet rs=pst.executeQuery();
		
		Questions q=null;
		if(rs.next())
		{
			
			String q_name=rs.getString(2);
			
			q=new Questions(id, q_name);
			
			
		}
		
		rs.close();
		con.close();
		return q;
		
	} catch (Exception e) {
		// TODO: handle exception
		
		System.out.println(e);
	}
	return null;

		
	}
public int addFg(Questions q) {
		
		try {
			
			Connection con=MysqlConnection.getConnect();
			
			String sql="insert into fg(qname) values(?)";
			
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, q.getQ_name());
			
			int x=pst.executeUpdate();
			
			return x;
			
			
		} catch (Exception e) {
			// TODO: handle exception
		     System.out.println(e);
		}
		return 0;
	}
	
	public ArrayList<Questions> getFg()
	{
		ArrayList<Questions> al=new ArrayList<Questions>();
		
		try {
			
			Connection con=MysqlConnection.getConnect();
			
			String sql="select * from Fg";
			
			System.out.println(sql);
			PreparedStatement pst=con.prepareStatement(sql);
			
			ResultSet rs=pst.executeQuery();
			
			
			while(rs.next())
			{
				
				int id=rs.getInt(1);
				String q_name=rs.getString(2);
				
				System.out.println(q_name);
				
				Questions q=new Questions(id, q_name);
				
				al.add(q);
			}
			
			rs.close();
			con.close();
			return al;
			
		} catch (Exception e) {
			// TODO: handle exception
			
			System.out.println(e);
		}
		return al;
	}
	
	public Questions getFg(int id)
	{
		try {
		
		Connection con=MysqlConnection.getConnect();
		
		String sql="select * from fg where id=?";
		
		PreparedStatement pst=con.prepareStatement(sql);
		
		ResultSet rs=pst.executeQuery();
		
		Questions q=null;
		if(rs.next())
		{
			
			String q_name=rs.getString(2);
			
			q=new Questions(id, q_name);
			
			
		}
		
		rs.close();
		con.close();
		return q;
		
	} catch (Exception e) {
		// TODO: handle exception
		
		System.out.println(e);
	}
	return null;

		
	}
public int addQtS(Questions q) {
		
		try {
			
			Connection con=MysqlConnection.getConnect();
			
			String sql="insert into qts(qname) values(?)";
			
			
			PreparedStatement pst=con.prepareStatement(sql);
			
			pst.setString(1, q.getQ_name());
			
			int x=pst.executeUpdate();
			
			return x;
			
			
		} catch (Exception e) {
			// TODO: handle exception
		     System.out.println(e);
		}
		return 0;
	}
	
	public ArrayList<Questions> getQts()
	{
		ArrayList<Questions> al=null;
		
		try {
			
			Connection con=MysqlConnection.getConnect();
			
			String sql="select * from Qts";
			
			PreparedStatement pst=con.prepareStatement(sql);
			
			ResultSet rs=pst.executeQuery();
			
			
			while(rs.next())
			{
				int id=rs.getInt(1);
				String q_name=rs.getString(2);
				
				Questions q=new Questions(id, q_name);
				
				al.add(q);
			}
			
			rs.close();
			con.close();
			return al;
			
		} catch (Exception e) {
			// TODO: handle exception
			
			System.out.println(e);
		}
		return al;
	}
	
	public Questions getQts(int id)
	{
		try {
		
		Connection con=MysqlConnection.getConnect();
		
		String sql="select * from Qts where id=?";
		
		PreparedStatement pst=con.prepareStatement(sql);
		
		ResultSet rs=pst.executeQuery();
		
		Questions q=null;
		if(rs.next())
		{
			
			String q_name=rs.getString(2);
			
			q=new Questions(id, q_name);
			
			
		}
		
		rs.close();
		con.close();
		return q;
		
	} catch (Exception e) {
		// TODO: handle exception
		
		System.out.println(e);
	}
	return null;

		
	}
}
