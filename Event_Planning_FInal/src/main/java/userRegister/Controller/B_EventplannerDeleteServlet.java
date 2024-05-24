package userRegister.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userRegister.Deo.B_EventplannerDButil;
import userRegister.Model.B_Eventplanner;

@WebServlet("/DeleteMovieServlet")
public class B_EventplannerDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String emp_id = request.getParameter("emp_id");
		boolean isTrue;
		
		isTrue = B_EventplannerDButil.DeleteMovie(emp_id);
		
		if (isTrue == true) {
			List<B_Eventplanner> MovDetails = B_EventplannerDButil.validate (emp_id);
			request.setAttribute("MovDetails", MovDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Admin_login_1.jsp");
			dispatcher.forward(request, response);
		}
		else {
			//List<Movie> MovDetails = MovieDButil.getMovieDetails(movie_id);
			//request.setAttribute("MovDetails", MovDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
			dispatcher.forward(request, response);
		}
	}

}

///Event Planner