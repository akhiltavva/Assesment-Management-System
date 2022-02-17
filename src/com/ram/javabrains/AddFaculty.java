package com.ram.javabrains;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ram.pojo.Faculty;
import com.ram.pojo.FacultyCurd;

/**
 * Servlet implementation class AddFaculty
 */
public class AddFaculty extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFaculty() {
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
		
		String fname=request.getParameter("fname");
		
		String email=request.getParameter("email");
		
		String password=request.getParameter("password");
		
		String department=request.getParameter("department");
		
		String fsection=request.getParameter("fsection");
		
		String fyear=request.getParameter("fyear");
		
		
		String qualification=request.getParameter("fqualification");
		
		Faculty f=new Faculty();
		
		f.setFname(fname);
		
		f.setEmail(email);
		
		f.setPassword(password);
		
		f.setDepartment(department);
		
		f.setFsection(fsection);
		
		f.setYears(fyear);
		
		f.setQualification(qualification);
		
		FacultyCurd fc=new FacultyCurd();
		
		int r=fc.addFaculty(f);
		
		if(r==1)
		{
			  pw.println("<script> alert('Faculty Added Successfully');");
			  pw.println("window.location = \"addFaculty.jsp\";</script>");
		
		}
		else
		{
			  pw.println("<script> alert('your email is already register');");
			  pw.println("window.location = \"addFaculty.jsp\";</script>");
		
		}
	
		
		
				
	}

}
