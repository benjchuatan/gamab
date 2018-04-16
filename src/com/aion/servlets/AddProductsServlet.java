package com.aion.servlets;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.time.LocalDateTime;

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
    
	static String location  = "/Users/admin/Documents/Github/gamab/WebContent/";
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
		
		String fileName = System.currentTimeMillis() + "-image.png";
		System.out.println(fileName);
		String title = request.getParameter("title");
		System.out.println("title : " + title);

		String action = "";
		
	    File file = new File(FOLDER, fileName);
		
		
		InputStream fileInputStream = part.getInputStream();
		Files.copy(fileInputStream, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
		fileInputStream.close();
		
		Product p = new Product();
		p.setName(request.getParameter(Product.NAME));
		
		p.setManufacturer(request.getParameter(Product.MANUFACTURER));
		p.setDescription(request.getParameter(Product.DESCRIPTION));
		p.setPrice(Float.parseFloat(request.getParameter(Product.PRICE)));
		System.out.println("This is it pancit: " + p.getPrice());
		p.setFilename(fileName);
		p.setType(request.getParameter(Product.TYPE));
		System.out.println("This is it pancit: " + p.getType());
		ProductService productsService = new ProductService();
		productsService.addProducts(p);
		request.getRequestDispatcher("DisplayProductsServlet").forward(request, response);

		action = "User " + request.getSession().getAttribute("iduser")  + " added product at  " + LocalDateTime.now();	
		try (PrintWriter wr = new PrintWriter(new BufferedWriter(new FileWriter("/Users/admin/Documents/logfiles.txt", true)))) {
			System.out.println("File Opened");
		    wr.println(action);
		    wr.close();
		} catch (IOException x) {
		    System.err.format("IOException: %s%n", x);
		    System.out.println("File not opened");
		}
		
	}

}
