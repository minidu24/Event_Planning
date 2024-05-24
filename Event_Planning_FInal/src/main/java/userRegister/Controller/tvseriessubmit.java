package userRegister.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userRegister.Deo.C_AccountantDBUtil;

@WebServlet("/tvseriessubmit")
public class tvseriessubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String imdb = request.getParameter("imdb");
		String category = request.getParameter("category");
		String sesons = request.getParameter("sesons");
		String director = request.getParameter("director");
		
		boolean isTrue;
		isTrue=C_AccountantDBUtil.tvseriesinsert(name, imdb, category, sesons, director);
	
		if(isTrue == true){
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}

//Accountent