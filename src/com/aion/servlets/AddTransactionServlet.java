package com.aion.servlets;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aion.javabean.TransBeana;
import com.aion.services.CartService;
import com.aion.services.TransactionService;

/**
 * Servlet implementation class AddTransactionServlet
 */
@WebServlet("/AddTransactionServlet")
@MultipartConfig
public class AddTransactionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddTransactionServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		TransactionService transactionsService = new TransactionService();
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		TransBeana b = new TransBeana();
		String action = "";
		int id2, id3;
		CartService CartsService = new CartService();
		int id =(Integer)request.getSession().getAttribute("iduser");
		int trymebiatch = CartsService.getNum(id);
		id2 = transactionsService.getFirstitemid(id);
		System.out.println("Me sa me yessir " + trymebiatch);
		for(int fb = id2; fb < (id2+ trymebiatch); fb++) {
			System.out.println("Eto naa bui bebe" + fb);
			id3 = transactionsService.getFirstitem(fb);
			System.out.println("Yess eto yun sa add: " + id3);
			b.setProductID(id3);
			b.setIduser((Integer) request.getSession().getAttribute("iduser"));
			b.setDate(dateFormat.format(date));
			transactionsService.updatequantity(id3);
			transactionsService.addTransactions(b);
		}
		CartService CS = new CartService();
		CS.emptyCart((Integer) request.getSession().getAttribute("iduser"));
		request.getRequestDispatcher("Home.jsp").forward(request, response);
	

		action = "User " + request.getSession().getAttribute("iduser")  + " finished transaction at  " + LocalDateTime.now();	
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
