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

@WebServlet("/MovieLogServlet")
public class B_EventplannerRetrieveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String emp_name = request.getParameter("emp_name");
		
		
		try {
		List<B_Eventplanner> movDetails = B_EventplannerDButil.validate(emp_name);
		request.setAttribute("movDetails", movDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("B_EventplannerRetrieve_1.jsp");
		dis.forward(request, response);
	}

}

//EventPlanner