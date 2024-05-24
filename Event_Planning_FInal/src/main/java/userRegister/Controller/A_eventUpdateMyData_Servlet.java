package userRegister.Controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

import userRegister.Deo.A_eventRetrieveMyData_DButil;
import userRegister.Deo.A_eventUpdateMyData_DButil;
import userRegister.Model.A_eventUploader;

@WebServlet("/UpdateMyData_Servlet")
public class A_eventUpdateMyData_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private boolean Final_result;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("U_id");
		String firstname = request.getParameter("U_firstNamr");
		String lastname = request.getParameter("U_lastName");
		String username = request.getParameter("U_username");
		String password = request.getParameter("U_password");
		String email = request.getParameter("U_Eaddress");
		String contact = request.getParameter("U_contact");
		
		Final_result = A_eventUpdateMyData_DButil.Update_MyData(id, firstname, lastname, username, password, email, contact);
		
		if(Final_result == true) {
			List<A_eventUploader> MyNew_Details = A_eventRetrieveMyData_DButil.getUploader_Details(id);
			request.setAttribute("user_Details", MyNew_Details);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("A_eventDeleteMyData_2.jsp");
			dis1.forward(request,response);
		}else {
			List<A_eventUploader> MyNew_Details = A_eventRetrieveMyData_DButil.getUploader_Details(id);
			request.setAttribute("user_Details", MyNew_Details);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("A_eventDeleteMyData_2.jsp");
			dis2.forward(request,response);
		}
	}

}

//Logged and Regitred User