package com.login;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.time.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String uname = session.getAttribute("iduser").toString();
		String action = "";
		action = "User ID: " + uname + " logged out at " + LocalDateTime.now();
		
		try (PrintWriter wr = new PrintWriter(new BufferedWriter(new FileWriter("C:\\Users\\JC\\Documents\\logfiles.txt", true)))) {
			System.out.println("File Opened");
		    wr.println(action);
		    wr.close();
		} catch (IOException x) {
		    System.err.format("IOException: %s%n", x);
		    System.out.println("File not opened");
		}
		
		session.removeAttribute("username");
		session.invalidate();
		response.sendRedirect("Home.jsp");
		
		
		
		 
	}

	

}
