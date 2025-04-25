package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CustomerRegisterDAO 
{
	public int Register(CustomerBean bean)
	{
		int rowCount=0;
		
		try
		{
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("insert into customer values(?,?,?,?,?,?,?)");
			pstmt.setString(1, bean.getUname());
			pstmt.setString(2, bean.getPwd());
			pstmt.setString(3, bean.getFname());
			pstmt.setString(4, bean.getLname());
			pstmt.setString(5, bean.getAddr());
			pstmt.setString(6, bean.getMail());
			pstmt.setString(7, bean.getMobile());
			
			
			
			
			
			
			rowCount=pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}
