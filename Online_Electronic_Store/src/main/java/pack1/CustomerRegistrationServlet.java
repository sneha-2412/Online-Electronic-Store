package pack1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/cps")
public class CustomerRegistrationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        
        HttpSession session = req.getSession(true);

        if (session == null) {
            
            req.setAttribute("msg", "Session expired. Please log in again.");
            req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
            return;
        }

       
        CustomerBean cbean = new CustomerBean();
        cbean.setUname(req.getParameter("uname"));
        cbean.setPwd(req.getParameter("pwd"));
        cbean.setFname(req.getParameter("fname"));
        cbean.setLname(req.getParameter("lname"));
        cbean.setAddr(req.getParameter("addr"));
        cbean.setMail(req.getParameter("mail"));
        cbean.setMobile(req.getParameter("mobile"));

        
        int rowCount = new CustomerRegisterDAO().Register(cbean);

        if (rowCount == 0) {
           
            throw new ServletException("Customer registration failed. Please try again.");
        } else {
           
            req.setAttribute("msg", "Registration Successful! Please log in.");
            req.getRequestDispatcher("CustomerLogin.jsp").forward(req, res);
        }
    }
}
