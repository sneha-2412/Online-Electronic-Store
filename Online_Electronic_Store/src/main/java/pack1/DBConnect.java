package pack1;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect 
{
private static Connection con=null;
	
	static
	{
		try
		{
			Class.forName(DBInfo.driver);
			con=DriverManager.getConnection(DBInfo.DBUrl,DBInfo.Uname,DBInfo.pwd);
		}
		catch(Exception e)
		{
			
		}
	}
	public static Connection getCon()
	{
		return con;
	}
}
