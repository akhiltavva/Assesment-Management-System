package com.ram.javabrains;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ram.pojo.Student;
import com.ram.pojo.StudentCurd;

/**
 * Servlet implementation class AddStudent
 */
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		  response.setContentType("text/html");
		  
		  
		  PrintWriter pw=response.getWriter();
		  
		  
		  String sname=request.getParameter("sname");
		  
		  
		  String email=request.getParameter("email");
		  
		  
		  String password=request.getParameter("password");
		  
		  
		  String department=request.getParameter("department");
		  
		  
		  String ssection=request.getParameter("ssection");
		  
		  int syear=Integer.parseInt(request.getParameter("syear"));
		  
		  
		  Student s=new Student(sname,email,password,department,ssection,syear);
		  
		  StudentCurd sc=new StudentCurd();
		  
		  
		  int x=sc.addStudent(s);
		  
		  if(x==1)
			{
				  pw.println("<script> alert('Student Added Successfully');");
				  pw.println("window.location = \"addStudent.jsp\";</script>");
			
			}
			else
			{
				  pw.println("<script> alert('your email is already register');");
				  pw.println("window.location = \"addStudent.jsp\";</script>");
			
			}
		
			
		  
		
		
	}

}
