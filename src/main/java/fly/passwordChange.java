package fly;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class passwordChange extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5119163961271869187L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		PrintWriter out = resp.getWriter();
		String pass = req.getParameter("passwordEntered");
		if (!adminLogin.isLoggedIn) {
			out.println("Login with your credentials");
		} else if (pass.equals("")) {
			out.println("Please provide a Password. Empty password is not Allowed !!!");
		} else if (adminLogin.isLoggedIn && !pass.equals("")) {
			adminLogin.password = pass;
			out.println("Password changed successfully.");
		} else {
			out.println("Invalid Credentials !!!");
		}
		out.close();
	}

}
