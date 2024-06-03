package userRegister.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userRegister.Deo.A_eventLoginDButil;
import userRegister.Model.user;

@WebServlet("/LoginServlet")
public class A_eventLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L ;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		    
		String username = request.getParameter("uid");// in login.jsp 
	    String password = request.getParameter("pwd");// in login.jsp
	    //new
		boolean isTrue;
		
		isTrue = A_eventLoginDButil.validate(username, password);
		
		if(isTrue == true) {
			List<user> usDetails = A_eventLoginDButil.getUser(username);
			request.setAttribute("usDetails",usDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("A_eventLogin_1.jsp"); //after login page directed page
			dis.forward(request,response);
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='A_eventLogin_2.jsp'");
			out.println("</script>");
		}
	}

}

//Event Planner LOgin
