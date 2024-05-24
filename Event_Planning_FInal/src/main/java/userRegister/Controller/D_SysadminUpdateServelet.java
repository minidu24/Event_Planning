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
import userRegister.Deo.D_SysadminDeleteDButil;
import userRegister.Model.D_Sysadmin;

@WebServlet("/updateFinalservelet")
public class D_SysadminUpdateServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String id = request.getParameter("uid");
		String ename =request.getParameter("ename");
		String edate = request.getParameter("edate");
		String ecode = request.getParameter("ecode");
		String ecgory = request.getParameter("ecgory");
		String etheme = request.getParameter("etheme");
		String evenue = request.getParameter("evenue");
		String edescript = request.getParameter("edescript");
		String eorgname = request.getParameter("eorgname");
		String eorgdt = request.getParameter("eorgdt");
		
		
		boolean isTrue;
		   
		isTrue = D_SysadminDeleteDButil.updateupdetails(id, ename, edate, ecode, ecgory, etheme, evenue, edescript, eorgname, eorgdt);
		
		if (isTrue == true) {

			List<D_Sysadmin> upDetails = D_SysadminInsertDButil.getupdatejv();
			request.setAttribute("upDetails", upDetails);
			
			
			RequestDispatcher dis =request.getRequestDispatcher("D_SysadminDelete_1.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis =request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}

//System Admin Update
