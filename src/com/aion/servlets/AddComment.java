package com.aion.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.aion.javabean.TransBeana;
import com.aion.services.ProductService;
import com.aion.services.ProfileService;

/**
 * Servlet implementation class AddComment
 */
@WebServlet("/AddComment")
public class AddComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddComment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		int id =(Integer)request.getSession().getAttribute("iduser");
		int idproduct = Integer.valueOf(request.getParameter("idproduct"));
		System.out.println("idproduct: "+idproduct);
		String comment = request.getParameter("comment");
		ProductService service = new ProductService();
		TransBeana bean = new TransBeana();
		
		service.addComment(idproduct, id, comment);
		request.getRequestDispatcher("Home.jsp").forward(request, response);
		
	
			
		}
	}


	


