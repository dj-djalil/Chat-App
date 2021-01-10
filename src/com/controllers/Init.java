package com.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Init
 */
@WebServlet("/")
public class Init extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<String> userList = new ArrayList<>();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.getServletContext().getRequestDispatcher("/WEB-INF/view/index.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// creation de la session
		HttpSession session = request.getSession();
		// recuperation du pseudo
		String pseudo = (String) request.getParameter("pseudo");
		if (pseudo.equals("")) {
			this.getServletContext().getRequestDispatcher("/WEB-INF/view/index.jsp").forward(request, response);
		} else {
			session.setAttribute("pseudo", pseudo);
			// System.out.println(pseudo);
			userList.add(pseudo);
			for (String a : userList) {
				System.out.println(a);
			}
			System.out.println("------------------------------------------");
			this.getServletContext().getRequestDispatcher("/WEB-INF/view/interface.jsp").forward(request, response);

		}
	}

}
