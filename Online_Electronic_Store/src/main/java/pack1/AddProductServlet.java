package pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/aps")
public class AddProductServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		try
		{
			HttpSession session=req.getSession(false);
			if(session==null)
			{
				req.setAttribute("msg", "Session Expired");
				req.getRequestDispatcher("AdminLogin.html").forward(req, res);
			}
			else
			{
			  ProductBean pbean=new ProductBean();
			  pbean.setPcode(req.getParameter("pcode"));
			  pbean.setPname(req.getParameter("pname"));
			  pbean.setPcompany(req.getParameter("pcompany"));
			  pbean.setPprice(req.getParameter("pprice"));
			  pbean.setPqty(req.getParameter("pqty"));
			  
			  int rowCount=new AddProductDAO().insertProduct(pbean);
			  if(rowCount>0)
			  {
				  req.setAttribute("msg", "Data Inserted");
				  req.getRequestDispatcher("AddProduct.jsp").forward(req, res);
			  }
			  
			}
		}
		catch(Exception e)
		{
			System.out.println("We are in the catch block");
			req.setAttribute("msg", "Duplicate Product id are NOT ALLOWED!!!");
			req.getRequestDispatcher("Error.jsp").forward(req, res);
		}
	}
}
