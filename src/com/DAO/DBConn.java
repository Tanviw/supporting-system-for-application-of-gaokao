package com.DAO;
import java.math.*;
import java.security.Timestamp;
import java.sql.*;
import java.text.*;
import java.util.Date;

class DBConn {

	static Connection con=null;
	static Statement st=null;
	static ResultSet rs=null;
	//图片上传路径
	static String picUploadPath="C:\\Apache Software Foundation\\Tomcat 9.0\\webapps\\bcnf\\verifiedImg\\";
	//static String picUploadPath="verifiedImg\\";
	//数据库地址
	static String DBIP="127.0.0.1";
	public static boolean open(String ip) 
	{
	 //打开连接
    try {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		
	      } catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	      }
    
    try {
		con=DriverManager.getConnection("jdbc:sqlserver://"+ip+"; DatabaseName=bcnf","sa","jwc1.usst.edu.cn");
    	//  con=DriverManager.getConnection("jdbc:sqlserver://"+ip+"; DatabaseName=bcnf","sa","sa");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    if(con!=null)return true;
    else return false;
	}
	
	//关闭连接
	public static void close() 
	{
	 try {
   	  //rs.close();
   	     //st.close();
		con.close();
	      } catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	     }

	   }
	
	//执行查询语句
	public static ResultSet excuteSelect(String sql) 
	{
		 try {
				st=con.createStatement();
				rs=st.executeQuery(sql);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return rs;
	}
	
	public static boolean excuteIUD(String sql)
	//执行增删改语句
	{    int n=0;
		 try {
				st=con.createStatement();
				n=st.executeUpdate(sql);
				
		      } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		if(n!=0)return true;
		return false;
	}

}
