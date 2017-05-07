package com.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import com.model.Classify;
import com.model.Major;

public class MajorDao {
	
	//����רҵ����������רҵ���࣬��HashMap<String,ArrayList>
	public static HashMap<String,ArrayList> transClassMajor(){
		//�����ݿ�
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("�����ݿ�ʧ�ܣ�");
			return null;
		}
		else
			System.out.println("�����ݿ�ɹ���");
		
		//�����ݿ��ҳ�רҵ������������
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
				//���ڴ˴��࣬����רҵ��ȥ
				if(classMajor.containsKey(classify))
				{
					//ȡ�����б�
					ArrayList<String> majorList=classMajor.get(classify);
					//�����Ԫ��
					majorList.add(major);
					//���Ǿ��б�
					classMajor.put(classify, majorList);
				}	
				//�����ڴ˴��࣬���������ƺ��½���Ӧרҵ�б����hashmap��
				else{
					//�½�רҵ�б�
					ArrayList<String> majorList=new ArrayList<String>();
					//���רҵ
					majorList.add(major);
					//���´����רҵ�б����hashmap��
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
	
	//���;���רҵ��Ϣ
	public static Major transMajorInfo(String mName){
		//�����ݿ�
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("�����ݿ�ʧ�ܣ�");
			return null;
		}
		else
			System.out.println("�����ݿ�ɹ���");
		
		Major major=null;
		String sql="select B.mId,B.mName,B.info,B.forward,B.gallery,B.mainCourses,B.majorRank "
				+ "from  Major B ,majorClassify C "
				+ "where B.mId=C.mId  and B.mName= '"+mName+"' ";
		ResultSet rs1=DBConn.excuteSelect(sql);
		try {
			
			if(rs1.next())
			{
				//�õ�רҵ���ܣ���ҵǰ��
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
	
	//����н����Ϣ
	public static ArrayList<Major> transGalList()
	{
		//�����ݿ�
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("�����ݿ�ʧ�ܣ�");
			return null;
		}
		else
			System.out.println("�����ݿ�ɹ���");
		//רҵн������ǰ20
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
