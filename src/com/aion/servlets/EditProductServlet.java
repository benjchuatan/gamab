package com.aion.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aion.javabean.Product;
import com.aion.services.ProductService;

/**
 * Servlet implementation class EditProducts
 */
@WebServlet("/EditProductServlet")
@MultipartConfig
public class EditProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProductServlet() {
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
		request.setAttribute("product", products);
		request.setAttribute("id", idproduct);
		request.getRequestDispatcher("editwatch.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Product p = new Product();
		p.setName(request.getParameter(Product.NAME));
		p.setManufacturer(request.getParameter(Product.MANUFACTURER));
		p.setDescription(request.getParameter(Product.DESCRIPTION));
		p.setPrice(Float.parseFloat(request.getParameter(Product.PRICE)));
		System.out.println(request.getParameter(Product.IDPRODUCTS));
		p.setIdproducts(Integer.parseInt(request.getParameter(Product.IDPRODUCTS)));	
		ProductService productsService = new ProductService();
		productsService.editArtworks(p);
		request.getRequestDispatcher("AdminServlet").forward(request, response);
		
	}

}
