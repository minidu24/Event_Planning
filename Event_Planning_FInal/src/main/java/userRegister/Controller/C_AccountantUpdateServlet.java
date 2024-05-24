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

@WebServlet("/updatetvseriesServlet")
public class C_AccountantUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String e_Name = request.getParameter("e_Name");
		
		List<C_Accountant> getDetails =  C_AccountantDBUtil.inserttvseries(e_Name);
		request.setAttribute("tvseDetails", getDetails);
		
		RequestDispatcher dis1 = request.getRequestDispatcher("C_AccountantRetrieve_1.jsp");
		dis1.forward(request,response);
	}

}

//Customer