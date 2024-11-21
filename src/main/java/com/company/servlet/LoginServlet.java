package com.company.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.company.dao.UserDao;
import com.company.dao.UserDaoImp;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static UserDao uDao = new UserDaoImp();   

    public LoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username);

        System.out.println("Result of isValidUser(): " + uDao.isValidUser(username, password));
        if (uDao.isValidUser(username, password)) {
            HttpSession session = request.getSession(); // use session to store the username of the user when they successfully log in
            session.setAttribute("username", username); // sets the username attribute in the session, making it accessible to welcome.jsp
            response.sendRedirect("welcome.jsp"); // welcome.jsp will access username by using session.getAttribute()
            System.out.println("Hi " + username + "!\n");
        } else {
            response.sendRedirect("login.jsp?error=1"); // sends error=1 to login.jsp
        	System.out.println("Error! Invalid User!!\n");
        }
	}

}
