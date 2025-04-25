package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateProductServletDAO 
{
	public int updateDataafterBuy(ProductBean pb,String reqty)
	{
		int rowCount=0;
		
		try
		{
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("update product set pqty=? where pcode=?");
			
			int x=Integer.parseInt(pb.getPqty());
			int y=Integer.parseInt(reqty);
			
			int currentqty=(x-y);
			
			pstmt.setInt(1, currentqty);
			pstmt.setString(2, pb.getPcode());
			rowCount=pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}
