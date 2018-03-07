package com.aion.servlets;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import com.aion.javabean.Product;
import com.aion.services.ProductService;


/**
 * Servlet implementation class AddProductsServlet
 */
@WebServlet("/AddProductsServlet")
@MultipartConfig
public class AddProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	static String location  = "/Users/admin/Documents/GitHub/gamab/WebContent";
	public static File FOLDER = new File(location);
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProductsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
        Part part = request.getPart("filename");
		
		String fileName = System.currentTimeMillis() + "-image.jpg";
		System.out.println(fileName);
		String title = request.getParameter("title");
		System.out.println("title : " + title);
		
	    File file = new File(FOLDER, fileName);
		
		
		InputStream fileInputStream = part.getInputStream();
		Files.copy(fileInputStream, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
		fileInputStream.close();
		
		Product p = new Product();
		p.setName(request.getParameter(Product.NAME));
		p.setManufacturer(request.getParameter(Product.MANUFACTURER));
		p.setDescription(request.getParameter(Product.DESCRIPTION));
	//	p.setPrice(request.getParameterValues(Product.PRICE));
		p.setFilename(fileName);
		ProductService productsService = new ProductService();
		productsService.addProducts(p);
		request.getRequestDispatcher("home.jsp").forward(request, response);
		
	}

}
