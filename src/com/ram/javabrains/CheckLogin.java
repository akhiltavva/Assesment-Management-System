package com.ram.javabrains;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ram.pojo.Faculty;
import com.ram.pojo.FacultyCurd;
import com.ram.pojo.Student;
import com.ram.pojo.StudentCurd;

/**
 * Servlet implementation class CheckLogin
 */
public class CheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter pw=response.getWriter();
		if(request.getParameter("type")!=null)
		{
			String type=request.getParameter("type");
			String uname=request.getParameter("uname");
			String upass=request.getParameter("upass");
			
			HttpSession session=request.getSession();
			
			
			if(type.equals("admin"))
			{
				if(uname.equals("admin") && upass.equals("admin"))
				{
					session.setAttribute("uname",uname);
					response.sendRedirect("AdminHome.jsp");
				}
				else
				{
				   pw.println("<script> alert('wrong credentials');");
				  pw.println("window.location = \"http://localhost:8080/AMS/login.jsp\";</script>");
				}
			}
			
			else if(type.equals("faculty"))
			{
				Faculty f=new Faculty();
				
				FacultyCurd fc=new FacultyCurd();
				
				f.setEmail(uname);
				f.setPassword(upass);
				int x=fc.facultyLogin(f);
				
				System.out.println(x);
				  if(x==1)
					{
					      session.setAttribute("uname", uname);
					      System.out.println(uname);
						  pw.println("<script> alert('welcome to  Facuty Login');");
						  pw.println("window.location = \"FacultyHome.jsp\";</script>");
					
					}
					else
					{
						  pw.println("<script> alert('login failed');");
						  pw.println("window.location = \"login.jsp\";</script>");
					
					}
				
			}
			else if(type.equals("student"))
			{
			        Student s=new Student();
			        StudentCurd sc=new StudentCurd();
			        s.setEmail(uname);
			        s.setPassword(upass);
			        int x=sc.studentLogin(s);
			        
			        session.setAttribute("uname", uname);
			        System.out.println(x);
			        if(x==1)
					{
						  pw.println("<script> alert('welcome to  Student Login');");
						  pw.println("window.location = \"StudentHome.jsp\";</script>");
					
					}
					else
					{
						  pw.println("<script> alert('login failed');");
						  pw.println("window.location = \"login.jsp\";</script>");
					
					}
	      
	          		        
			}
		}
	}

}
