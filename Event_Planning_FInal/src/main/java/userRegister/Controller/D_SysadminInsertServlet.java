package userRegister.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userRegister.Deo.A_eventLoginDButil;
import userRegister.Deo.D_SysadminInsertDButil;
import userRegister.Model.user;

@WebServlet("/UploadDbServlet")
public class D_SysadminInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static boolean isTrue1;
	//private static boolean isTrue2;
	//private String username;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("Username");// in login.jsp 
	    
		String ename = request.getParameter("ename");
		String edate = request.getParameter("edate");
		String ecode = request.getParameter("ecode");
		String ecgory = request.getParameter("ecgory");
		String etheme = request.getParameter("etheme");
		String evenue = request.getParameter("evenue");
		String edescript = request.getParameter("edescript");
		String eorgname = request.getParameter("eorgname");
		String eorgdt = request.getParameter("eorgdt");
		
		isTrue1 = D_SysadminInsertDButil.insertuploader(ename, edate, ecode, ecgory, etheme, evenue, edescript, eorgname, eorgdt);
		/*user u1 = new user();
		username = u1.getUserName();*/
		
		if(isTrue1 == true) {
			List<user> usDetails = A_eventLoginDButil.getUser(username);
			request.setAttribute("usDetails",usDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("A_eventLogin_1.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
			
		}
	}

}

//System_admin