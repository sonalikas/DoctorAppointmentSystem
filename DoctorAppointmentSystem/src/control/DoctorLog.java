package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import daofiles.DoctorDao;

/**
 * Servlet implementation class DoctorLog
 */
@WebServlet("/DoctorLog")
public class DoctorLog extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DoctorLog() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		 response.setContentType("text/html");
	        out.println("<html>");
	        out.println("<head>");
	        out.println("<title>AdminDocReg</title>");
	        out.println("</head>");
	        out.print("<body>");
	        String email=request.getParameter("email");  
	        String password=request.getParameter("password");  
	        	        
	        if(DoctorDao.validate(email,password)){  
	           
	            out.println("Welcome"+email);
	            HttpSession session=request.getSession(true);
	            session.setAttribute("email",email);
	           
	            response.sendRedirect("DoctorHome.jsp");
	        }  
	        else{    
	            RequestDispatcher rd=request.getRequestDispatcher("Error.jsp");  
	            rd.forward(request,response);  
	        }  
	              
	        out.close(); 
	        
	        out.print("</body>");
	        out.print("</html>");

	}

}
