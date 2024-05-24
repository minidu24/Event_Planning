package userRegister.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userRegister.Deo.C_AccountantDBUtil;

@WebServlet("/tvseriesinsert")
public class C_AccountantInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String e_Name = request.getParameter("e_Name");
		String e_Code = request.getParameter("e_Code");
		String t_Cost = request.getParameter("t_Cost");
		String e_dis = request.getParameter("e_dis");
		String a_Dicession = request.getParameter("a_Dicession");
		
		boolean isTrue;
		
		
		isTrue = C_AccountantDBUtil.tvseriesinsert(e_Name, e_Code, t_Cost, e_dis, a_Dicession);
	
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("C_AccountantInsert_1.jsp");//Selection.jsp
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}

//Accountent
