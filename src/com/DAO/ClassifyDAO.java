package com.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ClassifyDAO {

	
	//查找所有专业类别
	public static ArrayList showAllClassify(){
		if(!DBConn.open("127.0.0.1"))
		{
			System.out.println("打开showAllClassify数据库失败！");
			return null;
		}
		else
			System.out.println("打开showAllClassify数据库成功！");
		String sql="select * from classify";
		ResultSet rs=DBConn.excuteSelect(sql);
		ArrayList allclList=new ArrayList();
		try {
			while(rs.next())
			{
				System.out.println("找到classify数据了！");
				String[] cl=new String[2];
				cl[0]=rs.getString("classId");
				cl[1]=rs.getString("className");
				allclList.add(cl);
			}
			DBConn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return allclList;
	}
	
	//通过id得到名字
	public static String getClassName(String classId){
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开getClassName数据库失败！");
			return null;
		}
		else
			System.out.println("打开getClassName数据库成功！");
		String sql="select className from classify where classify.classId ='"+classId+"'";
		ResultSet rs=DBConn.excuteSelect(sql);
		String className=null;
		try {
			rs.next();
			className=rs.getString("className");
			DBConn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return className;
	}
	
	//通过专业名查找专业大类
	public static String namegetClassId(String mName){
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开getClassName数据库失败！");
			return null;
		}
		else
			System.out.println("打开getClassName数据库成功！");
		String sql="select classId from majorClassify,Major where mName='"+mName+"' AND Major.mId=majorClassify.mId";
		ResultSet rs=DBConn.excuteSelect(sql);
		String classId=null;
		try {
			if(rs.next()){
				classId=rs.getString("classId");
			}
			else{
				sql="select classId from classify where className='"+mName+"'";
				rs=DBConn.excuteSelect(sql);
				if(rs.next()){
					classId=rs.getString("classId");
				}
			}
			DBConn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return classId;
		
	}
	
}
