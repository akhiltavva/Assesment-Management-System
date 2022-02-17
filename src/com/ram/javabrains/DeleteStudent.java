package com.ram.javabrains;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ram.pojo.StudentCurd;

/**
 * Servlet implementation class DeleteStudent
 */
public class DeleteStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteStudent() {
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
	       
	       int id=Integer.parseInt(request.getParameter("id"));
	       
	       StudentCurd sc=new StudentCurd();
	       
	       int x=sc.deleteStudent(id);
	       
	   	if(x==1)
		{
			  pw.println("<script> alert('Student deleted Successfully');");
			  pw.println("window.location = \"http://localhost:8000/AMS/viewStudent.jsp\";</script>");
		
		}
	
	}

}
