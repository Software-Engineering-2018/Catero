package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.RegisterDAO;

/**
 * Servlet implementation class RegisterClass
 */
@WebServlet("/reg")
public class RegisterClass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("uname");
		String pass = request.getParameter("pass");
		String number = request.getParameter("contact");
		String email_id = request.getParameter("email");

		RegisterDAO r_ob = new RegisterDAO(name, pass, number, email_id);

		PrintWriter out = response.getWriter();
		out.write("<html>");
		out.write("<body>");

		if (r_ob.registerUser()) {
			out.write("<h1><b>Successfull");

		}
		else
			out.write("<h1><b>UNSuccessfull");


	}

}
