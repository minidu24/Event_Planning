package userRegister.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userRegister.Deo.Admin_loginDButil;

@WebServlet("/Admin_loginServlet")
public class Admin_loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		    
		String username = request.getParameter("A_id");// in login.jsp 
	    String password = request.getParameter("A_pwd");// in login.jsp
	    //new
		boolean isTrue;
		
		isTrue = Admin_loginDButil.validate(username, password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Admin_login_1.jsp"); //after login page directed page
			dis.forward(request,response);
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='Admin_login_2.jsp'");
			out.println("</script>");
		}
	}

}

//Admin 