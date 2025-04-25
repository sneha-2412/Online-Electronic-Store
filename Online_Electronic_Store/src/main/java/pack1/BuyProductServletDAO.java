package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BuyProductServletDAO 
{
	public ProductBean reteriveData()
	{
		ProductBean pbean=null;
		try
		{
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("select * from product where pcode=?");
			pstmt.setString(1, pbean.getPcode());
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				
			 pbean=new ProductBean();
			 pbean.setPcode(rs.getString(1));
			 pbean.setPname(rs.getString(2));
			 pbean.setPcompany(rs.getString(3));
			 pbean.setPprice(rs.getString(4));
			 pbean.setPqty(rs.getString(5));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return pbean;
	}
}
