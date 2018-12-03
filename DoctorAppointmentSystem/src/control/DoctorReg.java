package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.DocBean;
import daofiles.DoctorDao;

/**
 * Servlet implementation class DoctorReg
 */
@WebServlet("/DoctorReg")
public class DoctorReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		   out.println("<html>");
		   out.println("<head>");
	       out.println("<title>DoctorReg</title>");
	       out.println("</head>");
	       out.print("<body>");
	       
			String docname =request.getParameter("docname");
			String email=request.getParameter("email");
			String password =request.getParameter("password");
			String contact =request.getParameter("contact");
			
			DocBean doc =new DocBean();
			doc.setDocname(docname);
			doc.setEmail(email);
			doc.setPassword(password);
			doc.setContact(contact);
			
			  int status=DoctorDao.update(doc);  
		        if(status>0){  

		            out.println("Updated successfully!<br><br>");  
		            request.getRequestDispatcher("DoctorProfileUpdate.jsp").include(request, response);  
		        }else{  
		        	out.println("Sorry! unable to save record");  
		        }  
		          
		        out.close();  
		    
			
			out.print("</body>");
			out.print("</html>");
		

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
	       out.println("<title>DoctorReg</title>");
	       out.println("</head>");
	       out.print("<body>");
	       
			String docname =request.getParameter("dname");
			String email =request.getParameter("email");
			String password =request.getParameter("password");
			String specialty=request.getParameter("specialty");
			String contact =request.getParameter("contact");
			
			DocBean db =new DocBean();
			db.setDocname(docname);
			db.setEmail(email);
			db.setPassword(password);
			db.setSpecialty(specialty);
			db.setContact(contact);
			
			  int status=DoctorDao.save(db);  
		        if(status>0){  
		            out.println("<center><h3>Record saved successfully!</h3></center> ");  
		            request.getRequestDispatcher("AddDoctor.jsp").include(request, response);  
		        }else{  
		        	out.println("<center><h3>Sorry! unable to save record </h3></center>");  
		        }  
		          
		        out.close();  
		    
			out.print("<br></body>");
			out.print("</html>");
		
	}
}

