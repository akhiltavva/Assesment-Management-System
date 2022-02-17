package com.ram.javabrains;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ram.pojo.FacultyCurd;

/**
 * Servlet implementation class DeleteFaculty
 */
public class DeleteFaculty extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteFaculty() {
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
	       
	       FacultyCurd fc=new FacultyCurd();
	       
	       int x=fc.deleteFaculty(id);
	       
	   	if(x==1)
		{
			  pw.println("<script> alert('Faculty deleted Successfully');");
			  pw.println("window.location = \"http://localhost:8000/AMS/viewFaculty.jsp\";</script>");
		
		}
	}
}