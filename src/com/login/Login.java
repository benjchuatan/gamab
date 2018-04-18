package com.login;

import java.io.IOException;
import java.io.BufferedWriter; 	//For file writing
import java.io.FileWriter;		//For file writing
import java.io.PrintWriter;		//For file writing
import java.sql.SQLException;
import java.time.*;				//For file writing
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.aion.javabean.UserBean;
import com.aion.services.CartService;
import com.login.dao.LoginDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("username");
		String pass = request.getParameter("password");
		String fulln = request.getParameter("fullname");
		String action = "";
		UserBean u = new UserBean();
		LoginDao dao = new LoginDao();
		CartService carserv = new CartService();
		int loginTries = 3;
		HttpSession session = request.getSession();
		PrintWriter outa = response.getWriter();
		PrintWriter outb = response.getWriter();
		try {
			if(dao.check(uname, pass)) {
				
				
				if(dao.checkadmin(uname)==1) {
					session.setAttribute("isadmin", uname);
					session.setAttribute("username", uname);
					session.setAttribute("iduser", dao.getiduser(uname));
					System.out.println("futa: "+dao.getiduser(uname));
					response.sendRedirect("userManager.jsp");
					action = uname + " ID: " + dao.getiduser(uname) + " logged in at " + LocalDateTime.now();
				}else if(dao.checkadmin(uname)==2) {
					session.setAttribute("isproductmanager", uname);
					//session.setAttribute("username", uname);
					session.setAttribute("iduser", dao.getiduser(uname));
					System.out.println("futa: "+dao.getiduser(uname));
					response.sendRedirect("AdminServlet");
					action = uname + " ID: " + dao.getiduser(uname) + " logged in at " + LocalDateTime.now();
				}else if(dao.checkadmin(uname)==3) {
					session.setAttribute("isaccountingmanager", uname);
					//session.setAttribute("username", uname);
					session.setAttribute("iduser", dao.getiduser(uname));
					System.out.println("futa: "+dao.getiduser(uname));
					response.sendRedirect("acctingmanager.jsp");
					action = uname + " ID: " + dao.getiduser(uname) + " logged in at " + LocalDateTime.now();
				}else if(dao.check(uname, pass)){
					session.setAttribute("username", uname);
					session.setAttribute("iduser", dao.getiduser(uname));
					session.setAttribute("cartnum", carserv.getNum(dao.getiduser(uname)));
					System.out.println("futa: "+carserv.getNum(dao.getiduser(uname)));
					System.out.println("username: "+uname);
					response.sendRedirect("Home.jsp");
					action = uname + " ID: " + dao.getiduser(uname) + " logged in at " + LocalDateTime.now();
				}//else if(loginTries > 0){
//					loginTries--;
//					//Insert prompt for invalid username or password
//				}else {
//					//disable account of user because LoginTries == 0
//				}
				
			}else {
				
				if(dao.checkusername(uname)) {
					if(dao.attempts(dao.getiduser(uname)) >= 3) {
						dao.lockaccounnt(dao.getiduser(uname));
						
//						session.setAttribute("Locked","yes");
						outa.println("<script type=\"text/javascript\">");
						outa.println("alert('Account Locked');");
						outa.println("location='Home.jsp';");
						outa.println("</script>");
						
					}else {
						
						dao.addattempts(dao.getiduser(uname));
					
					}
				}else {
					outb.println("<script type=\"text/javascript\">");
					outb.println("alert('Username/Password is Incorrect');");
					outb.println("location='Home.jsp';");
					outb.println("</script>");
				
				//response.sendRedirect("Home.jsp");
				}
			}
		
			//File writing code start
			try (PrintWriter wr = new PrintWriter(new BufferedWriter(new FileWriter("C:\\Users\\JC\\Documents\\logfiles.txt", true)))) {
				System.out.println("File Opened");
			    wr.println(action);
			    wr.close();
			} catch (IOException x) {
			    System.err.format("IOException: %s%n", x);
			    System.out.println("File not opened");
			}
			//file writing code end
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		}
	}


