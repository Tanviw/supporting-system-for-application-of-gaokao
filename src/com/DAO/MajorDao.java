package com.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import com.model.Classify;
import com.model.Major;

public class MajorDao {
	
	//传送专业，及其所属专业大类，用HashMap<String,ArrayList>
	public static HashMap<String,ArrayList> transClassMajor(){
		//打开数据库
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开数据库失败！");
			return null;
		}
		else
			System.out.println("打开数据库成功！");
		
		//从数据库找出专业及其所属大类
		String sql="select A.className,B.mName "
				+ "from classify A, Major B ,majorClassify C "
				+ "where A.classId=C.classId and B.mId=C.mId";
		ResultSet rs=DBConn.excuteSelect(sql);
		HashMap<String,ArrayList> classMajor=new HashMap<String,ArrayList>();
		try {
			while(rs.next())
			{
				
				String classify=rs.getString("className");
				String major=rs.getString("mName");
				//存在此大类，放入专业进去
				if(classMajor.containsKey(classify))
				{
					//取出旧列表
					ArrayList<String> majorList=classMajor.get(classify);
					//添加新元素
					majorList.add(major);
					//覆盖旧列表
					classMajor.put(classify, majorList);
				}	
				//不存在此大类，将大类名称和新建对应专业列表放入hashmap中
				else{
					//新建专业列表
					ArrayList<String> majorList=new ArrayList<String>();
					//添加专业
					majorList.add(major);
					//将新大类和专业列表放入hashmap中
					classMajor.put(classify,majorList);
				}
			}
			
			return classMajor;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;		
	}
	
	//传送具体专业信息
	public static Major transMajorInfo(String mName){
		//打开数据库
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开数据库失败！");
			return null;
		}
		else
			System.out.println("打开数据库成功！");
		
		Major major=null;
		String sql="select B.mId,B.mName,B.info,B.forward,B.gallery,B.mainCourses,B.majorRank "
				+ "from  Major B ,majorClassify C "
				+ "where B.mId=C.mId  and B.mName= '"+mName+"' ";
		ResultSet rs1=DBConn.excuteSelect(sql);
		try {
			
			if(rs1.next())
			{
				//得到专业介绍，就业前景
				major=new Major();				
				major.setmId(rs1.getString("mId"));
				major.setmName(rs1.getString("mName"));
				major.setInfo(rs1.getString("info"));
				major.setForward(rs1.getString("forward"));
				major.setGallery(rs1.getInt("gallery"));
				major.setMainCourses(rs1.getString("mainCourses"));
				major.setMajorRank(rs1.getString("majorRank"));				
				return major;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	//传送薪酬信息
	public static ArrayList<Major> transGalList()
	{
		//打开数据库
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开数据库失败！");
			return null;
		}
		else
			System.out.println("打开数据库成功！");
		//专业薪酬排行前20
		String sql="select top 30 A.mName,A.gallery "
				+ "from Major A where A.gallery is not NULL "
				+ "order by A.gallery desc";
		ResultSet rs=DBConn.excuteSelect(sql);
		ArrayList<Major> galList=new ArrayList<Major>();
		try {
			while(rs.next())
			{
				Major mj=new Major();
				mj.setmName(rs.getString("mName"));
				mj.setGallery(rs.getInt("gallery"));
				galList.add(mj);
			}
			return galList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
