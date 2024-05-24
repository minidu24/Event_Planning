package userRegister.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userRegister.Deo.D_SysadminInsertDButil;
import userRegister.Model.D_Sysadmin;

@WebServlet("/updateMTservelet")
public class D_SysadminRetrieveAllServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<D_Sysadmin> upDetails = D_SysadminInsertDButil.getupdatejv();
		request.setAttribute("upDetails", upDetails);
	
		RequestDispatcher dis3 = request.getRequestDispatcher("D_SysadminDelete_1.jsp");
		dis3.forward(request, response);
	}

}

//System_admin