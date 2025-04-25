package pack1;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/view2")
public class ViewCustomerProductServlet extends HttpServlet
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
		ArrayList<ProductBean> al=new ViewProductDAO().reteriveProduct();
		session.setAttribute("productList", al);
		req.getRequestDispatcher("ViewProduct1.jsp").forward(req, res);
		
	}
	}

}
