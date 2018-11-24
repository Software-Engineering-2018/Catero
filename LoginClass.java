package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.LoginDAO;

/**
 * Servlet implementation class LoginClass
 */
@WebServlet("/login")
public class LoginClass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginClass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name=request.getParameter("uname");
		String pass=request.getParameter("pass");
		LoginDAO l_ob=new LoginDAO(name,pass);
		
		PrintWriter out=response.getWriter();
		out.write("<html>");
		out.write("<body>");

		if(l_ob.checkCredentials()) {
			out.write("<h1>User Login successfull! : "+pass);
		}
		else
			out.write("<h1>User Login failed! : "+pass);
	
	}

}
