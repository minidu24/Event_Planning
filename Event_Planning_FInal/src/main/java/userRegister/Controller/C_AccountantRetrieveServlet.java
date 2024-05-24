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

@WebServlet("/getUpdatedList_Servlet")
public class C_AccountantRetrieveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static boolean getResult;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String e_Name = request.getParameter("e_Name");
		String e_Code = request.getParameter("e_Code");
		String t_Cost = request.getParameter("t_Cost");
		String e_dis = request.getParameter("e_dis");
		String a_Dicession = request.getParameter("a_Dicession");
		
		getResult = C_AccountantDBUtil.update(e_Name, e_Code, t_Cost, e_dis, a_Dicession);
		
		if(getResult == true) {
			List<C_Accountant> New_Details = C_AccountantDBUtil.retriew_Data(e_Name);
			request.setAttribute("tvseDetails", New_Details);
			
			RequestDispatcher dispatch1 = request.getRequestDispatcher("C_AccountantRetrieve_1.jsp");
			dispatch1.forward(request,response);
		}else {
			RequestDispatcher dispatch2 = request.getRequestDispatcher("C_AccountantRetrieve_1.jsp");
			dispatch2.forward(request,response);
		}
		
	}

}

//Accountent_Event