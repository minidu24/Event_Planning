package userRegister.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userRegister.Model.A_eventUploader;
import userRegister.Deo.A_eventEditprofile_DButil;

@WebServlet("/Dashboard_loginServlet")
public class A_eventRetrieveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String User_N = request.getParameter("User_Id");
		String Pass_w = request.getParameter("P_word");
		
		try {
			List<A_eventUploader> userDetails = A_eventEditprofile_DButil.Validate(User_N,Pass_w);
			request.setAttribute("user_Details", userDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dispatch = request.getRequestDispatcher("A_eventDeleteMyData_2.jsp"); 
		dispatch.forward(request, response);
	}

}

//Registerd User login