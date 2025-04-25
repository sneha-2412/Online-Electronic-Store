package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AddProductDAO 
{
	public int insertProduct(ProductBean bean) throws Exception
	{
		int rowCount=0;
		
		try
		{
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("insert into product values(?,?,?,?,?)");
			pstmt.setString(1, bean.getPcode());
			pstmt.setString(2, bean.getPname());
			pstmt.setString(3, bean.getPcompany());
			pstmt.setString(4, bean.getPprice());
			pstmt.setString(5, bean.getPqty());
			
			rowCount=pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			throw e;
		}
		return rowCount;
	}
}
