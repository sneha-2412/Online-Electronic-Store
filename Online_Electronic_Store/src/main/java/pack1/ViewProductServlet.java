package pack1;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/view1")
public class ViewProductServlet extends HttpServlet 
{
@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException
	{
	HttpSession session=req.getSession(false);
	if(session==null)
	
	{
		req.setAttribute("msg"," Session Experied!!");
		req.getRequestDispatcher("AdminLogin.html").forward(req, res);
	}
	else
	{
		//res.sendRedirect("https://www.google.com/");//This method used to connect with other web services
		ArrayList<ProductBean> al=new ViewProductDAO().reteriveProduct();
		session.setAttribute("productList", al);
		req.getRequestDispatcher("ViewProduct.jsp").forward(req, res);
		
	}
	}
}