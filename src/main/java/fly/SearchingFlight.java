package fly;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.*;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import base.searchFlight;


public class SearchingFlight extends HttpServlet {
	
	 /**
	 * 
	 */
	private static final long serialVersionUID = -120029500903763089L;

	@Override
	    public void service (HttpServletRequest req, HttpServletResponse resp) throws IOException {
		 searchFlight.date = req.getParameter("date");
		 searchFlight.source = req.getParameter("source");
		 searchFlight.destination = req.getParameter("destination");
		 searchFlight.persons = Integer.parseInt(req.getParameter("persons"));

	        if (searchFlight.date.equals("")) {
	            PrintWriter out = resp.getWriter();
	            out.println("Please enter a valid date");
	        }
	        else {
	        	searchFlight.day = getDay(searchFlight.date);
	            resp.sendRedirect("/FlyAway/search-results.jsp");
	        }
	    }

	    public String getDay(String dateInp) {
	        LocalDate dt = LocalDate.parse(dateInp);
	        return dt.getDayOfWeek().toString();
	    }

}
