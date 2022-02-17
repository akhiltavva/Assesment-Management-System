package com.ram.javabrains;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ram.pojo.Faculty;
import com.ram.pojo.FacultyCurd;
import com.ram.pojo.QuestionCurd;
import com.ram.pojo.Questions;

/**
 * Servlet implementation class TakeFTest
 */
public class TakeFTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TakeFTest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		QuestionCurd qc=new QuestionCurd();
	   ArrayList<Questions> fq=qc.getQtf();
	   ArrayList<Questions>sq=qc.getFg();
	   
	    FacultyCurd fc=new FacultyCurd();
	    
	    String email=request.getParameter("email");
	    
	    Faculty f=fc.getFaculty(email);
	    
	   
	   
	}

}
