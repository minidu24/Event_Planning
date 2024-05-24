package userRegister.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userRegister.Deo.Search_DButil;
import userRegister.Model.Searching;

@WebServlet("/Search_Servlet")
public class D_SysadminRetrieveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("search");
		
		List<Searching> upDetails = Search_DButil.SearchMT(name);
		request.setAttribute("S_Details", upDetails);
	
		RequestDispatcher dis3 = request.getRequestDispatcher("D_SysadminRetrieve_1.jsp");
		dis3.forward(request, response);
	}

}

//System_admin