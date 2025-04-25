package pack1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/newUpdate")
public class UpdateNewProductServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        
        HttpSession session = req.getSession(false);

        if (session == null) {
            req.setAttribute("msg", "Session Expired!!! Please log in again.");
            req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
        } else {
            String pcode = req.getParameter("procode");
            String reqqty = req.getParameter("prorqty");
            int requestedQty = Integer.parseInt(reqqty); // Convert string to integer

            ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("productList");
            ProductBean pb = null;

           
            if (al != null) {
                Iterator<ProductBean> i = al.iterator();
                while (i.hasNext()) {
                    pb = i.next();
                    if (pcode.equals(pb.getPcode())) {
                        break;
                    }
                }
            }

            if (pb != null) {
                int availableQty = Integer.parseInt(pb.getPqty()); 

              
                if (requestedQty > availableQty) {
                    req.setAttribute("msg", "Sufficient products not available. Available stock: " + availableQty);
                    req.getRequestDispatcher("ErrorPage.jsp").forward(req, res);
                } else {
                    
                    int rowCount = new UpdateProductServletDAO().updateDataafterBuy(pb, reqqty);
                    if (rowCount > 0) {
                        CustomerBean cbean = (CustomerBean) session.getAttribute("cbean");
                        if (cbean == null) {
                            cbean = new CustomerBean();
                            cbean.setFname(cbean.getFname());
                            session.setAttribute("cbean", cbean);
                        }

                        req.setAttribute("pbean", pb);
                        req.setAttribute("msg", "Your Order placed Successfully!!");
                        req.getRequestDispatcher("OrderConfirmed.jsp").forward(req, res);
                    } else {
                        req.setAttribute("msg", "Order failed. Please try again.");
                        req.getRequestDispatcher("ErrorPage.jsp").forward(req, res);
                    }
                }
            } else {
                req.setAttribute("msg", " Sufficient Products not available");
                req.getRequestDispatcher("ErrorPage.jsp").forward(req, res);
            }
        }
    }
}
