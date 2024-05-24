package userRegister.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userRegister.Deo.B_EventplannerDButil;

@WebServlet("/MovieInsert")
public class B_EventplannerInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		java.lang.String emp_name = request.getParameter("emp_name");
		java.lang.String emp_cnt = request.getParameter("emp_cnt");
		java.lang.String emp_email = request.getParameter("emp_email");
		java.lang.String emp_jroll = request.getParameter("emp_jroll");
		
		boolean isTrue;
		
		isTrue = B_EventplannerDButil.Insertmovies(emp_name,emp_cnt,emp_email,emp_jroll);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("B_EventplannerInsert_1.jsp");
			dis.forward(request,response);
			
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request,response);
		}
	}

}

//Event Planner