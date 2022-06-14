package fly;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class adminLogin extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6174735911465798836L;
	public static boolean isLoggedIn = false;
	public static String password = "Admin@123";
	public static String email = "admin@flyaway.com";

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		PrintWriter out = resp.getWriter();

		String email = req.getParameter("emailEntered");
		String pass = req.getParameter("passwordEntered");

		if (email.equals(adminLogin.email) && pass.equals(adminLogin.password)) {
			isLoggedIn = true;
			out.println("LogIn Successful!");
			resp.sendRedirect("/FlyAway/adminDashboard.jsp");
		} else {
			isLoggedIn = false;
			out.println("Invalid eMail or password");
		}
		out.close();
	}

}
