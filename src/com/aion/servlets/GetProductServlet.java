package com.aion.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aion.javabean.Product;
import com.aion.javabean.ReviewBean;
import com.aion.services.ProductService;

/**
 * Servlet implementation class GetProductServlet
 */
@WebServlet("/GetProductServlet")
public class GetProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
		int idproduct = Integer.parseInt(request.getParameter("id"));
		ProductService ProductsService = new ProductService();
		
		ArrayList<Product> products = ProductsService.getProduct(idproduct);
		ArrayList<ReviewBean> reviews = ProductService.displayComment(idproduct);
		
		request.setAttribute("product", products);
		request.setAttribute("id", idproduct);
		request.setAttribute("comments", reviews);
		
		System.out.println("edward: " + idproduct);
		System.out.println("gamab: " + reviews);
		
		request.getRequestDispatcher("WatchProfile.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
