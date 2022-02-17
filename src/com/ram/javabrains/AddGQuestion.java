package com.ram.javabrains;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ram.pojo.QuestionCurd;
import com.ram.pojo.Questions;

/**
 * Servlet implementation class AddGQuestion
 */
public class AddGQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddGQuestion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 PrintWriter pw=response.getWriter();
	      
	      String qname=request.getParameter("qname");
	      
	      Questions q=new Questions(qname);
	      QuestionCurd qc=new QuestionCurd();
	      
	     int x= qc.addFg(q);
	     
	     if(x==1)
			{
				  pw.println("<script> alert('Questions Added Successfully');");
				  pw.println("window.location = \"gqf.jsp\";</script>");
			
			}
			else
			{
				  pw.println("<script> alert('Questions Not Added');");
				  pw.println("window.location = \"gqf.jsp\";</script>");
			
			}
		
			

	}

}
