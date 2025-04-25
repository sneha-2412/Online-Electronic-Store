package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerLoginDAO 
{
	public CustomerBean checkCustomerLogin(String Username,String Password)
	{
		CustomerBean bean=null;
		try
		{
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("select * from customer where uname=? and pword=?");
			pstmt.setString(1, Username);
			pstmt.setString(2, Password);
			
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				bean=new CustomerBean();
				bean.setUname(rs.getString(1));
				bean.setPwd(rs.getString(2));
				bean.setFname(rs.getString(3));
				bean.setLname(rs.getString(4));
				bean.setAddr(rs.getString(5));
				bean.setMail(rs.getString(6));
				bean.setMobile(rs.getString(7));
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return bean;
	}
}
