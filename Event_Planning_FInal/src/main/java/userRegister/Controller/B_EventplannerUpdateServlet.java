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

@WebServlet("/UpdateMovieServlet")
public class B_EventplannerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String emp_id = request.getParameter("emp_id");
		String emp_name = request.getParameter("emp_name");
		String emp_cnt = request.getParameter("emp_cnt");
		String emp_email = request.getParameter("emp_email");
		String emp_jroll = request.getParameter("emp_jroll");
		
		boolean isTrue;
		
		isTrue = B_EventplannerDButil.UpdateMovies(emp_id, emp_name, emp_cnt, emp_email, emp_jroll);
		
		if(isTrue == true) {
			
			List<B_Eventplanner> movDetails = B_EventplannerDButil.getMovieDetails(emp_id);
			request.setAttribute("movDetails",movDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("B_EventplannerRetrieve_1.jsp");
			dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}

//Update (Event Planner)