package userRegister.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userRegister.Model.C_Accountant;
import userRegister.Deo.C_AccountantDBUtil;

@WebServlet("/deletetvseriesServlet")
public class C_AccountantDeletetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String e_Name = request.getParameter("e_Name");	
		boolean isTrue;
		
		isTrue = C_AccountantDBUtil.deletetvseries(e_Name);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Admin_login_1.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			//List<TVseries> (String name)
			
			List<C_Accountant> TvseriesDetails=  C_AccountantDBUtil.retriew_Data(e_Name);
			request.setAttribute("TvseriesDetails", TvseriesDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("C_AccountantDelete_1.jsp");
			dispatcher.forward(request, response);
		}
	}

}

//Accountent
