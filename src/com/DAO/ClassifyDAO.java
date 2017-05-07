package com.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ClassifyDAO {

	
	//��������רҵ���
	public static ArrayList showAllClassify(){
		if(!DBConn.open("127.0.0.1"))
		{
			System.out.println("��showAllClassify���ݿ�ʧ�ܣ�");
			return null;
		}
		else
			System.out.println("��showAllClassify���ݿ�ɹ���");
		String sql="select * from classify";
		ResultSet rs=DBConn.excuteSelect(sql);
		ArrayList allclList=new ArrayList();
		try {
			while(rs.next())
			{
				System.out.println("�ҵ�classify�����ˣ�");
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
	
	//ͨ��id�õ�����
	public static String getClassName(String classId){
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("��getClassName���ݿ�ʧ�ܣ�");
			return null;
		}
		else
			System.out.println("��getClassName���ݿ�ɹ���");
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
	
	//ͨ��רҵ������רҵ����
	public static String namegetClassId(String mName){
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("��getClassName���ݿ�ʧ�ܣ�");
			return null;
		}
		else
			System.out.println("��getClassName���ݿ�ɹ���");
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
