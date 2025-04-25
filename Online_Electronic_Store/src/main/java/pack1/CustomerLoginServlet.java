package pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/clog")
public class CustomerLoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		
	CustomerLoginDAO aDAO=new CustomerLoginDAO();
  CustomerBean bean=aDAO.checkCustomerLogin(req.getParameter("a_uname"),req.getParameter("a_pwd"));
	
	if(bean==null)
	{
		req.setAttribute("msg", "Invalid Credentials");
		req.getRequestDispatcher("CustomerLoginFailed.jsp").forward(req, res);
	}
	else
	{
		HttpSession session=req.getSession();
		session.setAttribute("abean", bean);
		
		req.getRequestDispatcher("CustomerHome.jsp").forward(req, res);
		
	}
	

	}
}
