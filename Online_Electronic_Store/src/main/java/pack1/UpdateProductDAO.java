package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateProductDAO 
{
	public int updateProduct(ProductBean pbean)
	{
		int rowCount=0;
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("update product set pprice=?,pqty=? where pcode=?");
		
			pstmt.setString(1, pbean.getPprice());
			pstmt.setString(2,pbean.getPqty());
			pstmt.setString(3,pbean.getPcode());
			
			
			rowCount=pstmt.executeUpdate();
			
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowCount;
	}

}