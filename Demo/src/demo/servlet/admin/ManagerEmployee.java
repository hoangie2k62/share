package demo.servlet.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import demo.beans.UserAccount;
import demo.utils.DBUtilsAccount;
import demo.utils.MyUtils;

@WebServlet(urlPatterns = {"/ad/manager"})
public class ManagerEmployee extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	           throws ServletException, IOException {
    	try {
    		
    	  Connection conn = MyUtils.getStoredConnection(request);
    	    	  
          ArrayList<UserAccount> list = DBUtilsAccount.getListAccount(conn);
          
    	  request.setAttribute("departments", list); 
    	  
	      RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/demo/views/admin/manager.jsp");
	        
	      dispatcher.forward(request, response);
    	}catch(SQLException ex) {
    		ex.printStackTrace();
    	}
	}
	 
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	           throws ServletException, IOException {
		doGet(request, response);
	}
	
	
	 
}

