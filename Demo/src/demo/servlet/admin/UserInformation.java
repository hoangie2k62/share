package demo.servlet.admin;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import demo.beans.UserAccount;
import demo.beans.UserFamily;
import demo.beans.UserInfo;
import demo.utils.DBUtilsAccount;
import demo.utils.DBUtilsInfo;
import demo.utils.MyUtils;

@WebServlet(urlPatterns = {"/ad/userInfo"})
public class UserInformation extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	           throws ServletException, IOException {
    	try {		
    	  Connection conn = MyUtils.getStoredConnection(request);
    		
    	  String msnv = request.getParameter("msnv");
    	  
    	  UserAccount acc = DBUtilsAccount.getAccount(conn, msnv);
    	  
    	  request.setAttribute("acc", acc);
    	  
    	  UserInfo info = DBUtilsInfo.getInfo(conn, msnv);
    	  
    	  request.setAttribute("info", info);
    	  
    	  UserFamily family = DBUtilsInfo.getFamily(conn, msnv);
    	  
    	  request.setAttribute("family", family);
    	  
	      RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/demo/views/admin/user_info.jsp");
	        
	      dispatcher.forward(request, response);
    	}catch(Exception ex) {
    		
    		ex.printStackTrace();
    	}
	}
	 
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	           throws ServletException, IOException {
		try {
			Connection conn = MyUtils.getStoredConnection(request);
    	    
	    	String msnv = request.getParameter("msnv");
	        	   
	       String oldmsnv = request.getParameter("oldmsnv");
	    		
	       String imageData = "../demo/views/picture/17020769.jpg";
	    	    
	            String employees =  request.getParameter("userName");
	               
	            String office =  request.getParameter("office");
	               
	            String email =  request.getParameter("email");
	               
	            String salaryStr =  request.getParameter("salary");
	               
	            int salary = Integer.parseInt(salaryStr); 
	            
	        	boolean check = DBUtilsAccount.checkInfo(conn, msnv);
	        	
	        	if(!check) {
	        	     msnv = oldmsnv;	
	        	     
	        	     request.setAttribute("swear", "lưu ý: msnv đã tồn tại");
	        	}	
	            
	            UserAccount user = new UserAccount(msnv, employees, office, email, salary, imageData);
	        	   
	            DBUtilsAccount.updateEmployee(conn, user, oldmsnv);
	                
	            UserAccount acc = DBUtilsAccount.getAccount(conn, msnv);
	      	  
	      	    request.setAttribute("acc", acc);
	      	  
	      	  UserInfo info = DBUtilsInfo.getInfo(conn, msnv);
	      	  
	      	  request.setAttribute("info", info);
	      	  
	      	  UserFamily family = DBUtilsInfo.getFamily(conn, msnv);
	      	  
	      	  request.setAttribute("family", family);
	      	  
	  	      RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/demo/views/admin/user_info.jsp");
	  	        
	  	      dispatcher.forward(request, response);
	    		    		  
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
	}
	
}


