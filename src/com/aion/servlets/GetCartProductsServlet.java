 package com.aion.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.aion.javabean.Product;
import com.aion.services.CartService;

/**
 * Servlet implementation class GetCartProductsServlet
 */
@WebServlet("/GetCartProductsServlet")
public class GetCartProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCartProductsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();

		int id =(Integer)request.getSession().getAttribute("iduser");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		CartService CartsService = new CartService();
		ArrayList<Product> CartProducts = CartsService.getAllProductCart(id);
		Float total = (float) 0.0;
		int trys;
		for(int i = 0; i<CartProducts.size(); i++) {
			trys = i;
			System.out.println("yess po " + CartProducts.get(trys).getPrice());
			total = total + CartProducts.get(trys).getPrice();
		}
		request.setAttribute("productlists", CartProducts);
		request.setAttribute("total", total);

		request.getRequestDispatcher("checkout.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		doGet(request, response);
	}

}
