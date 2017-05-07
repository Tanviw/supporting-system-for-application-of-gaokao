package com.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.model.College;
import com.model.Question;

public class CollegeDao {
	//��ʾ���д�ѧ
		public static ArrayList showAllCollege(){
			if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("��showAllCollege���ݿ�ʧ�ܣ�");
				return null;
			}
			else
				System.out.println("��showAllCollege���ݿ�ɹ���");
			String sql="select cName,College.cId from College order by cId";
			ResultSet rs=DBConn.excuteSelect(sql);
			ArrayList collegeList=new ArrayList();
			try {
				while(rs.next())
				{
					College college = new College();
					college.setcName(rs.getString("cName"));
					college.setcId(rs.getString("cId"));
					collegeList.add(college);
				}
				DBConn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return collegeList;
		}
	//��ʾ��ѧ��Ϣ�����ڸ�У���а�
	public static ArrayList showRankOfCollege(){
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("�����ݿ�ʧ�ܣ�");
			return null;
		}
		else
			System.out.println("�����ݿ�ɹ���");
		String sql="select top 100 * from College where mulrank is not null order by mulRank";
		ResultSet rs=DBConn.excuteSelect(sql);
		ArrayList collegeList=new ArrayList();
		try {
			while(rs.next())
			{
				College college = new College();
				college.setcName(rs.getString("cName"));
				college.setMulRank(rs.getInt("mulRank"));
				college.setPlace(rs.getString("place"));
				
				if(rs.getInt("type")==1)//typeΪ1ʱ��ʾ����
					college.setType("985��211");
				else if(rs.getInt("type")==2)
					college.setType("211");
				else if(rs.getInt("type")==3)
					college.setType("����һ��");
				if(rs.getInt("variety")==1)//varietyΪ1ʱ��ʾ985
					college.setVariety("����");
				else if(rs.getInt("variety")==2)
					college.setVariety("�Ŀ���");
				else if(rs.getInt("variety")==3)
					college.setVariety("�ۺ���");
				collegeList.add(college);
				
			}
			DBConn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return collegeList;
	}
	
	//��ʾ���Ŵ�ѧ-��������������
		public static ArrayList showCollegeHot(){
			if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("��showCollegeHot���ݿ�ʧ�ܣ�");
				return null;
			}
			else
				System.out.println("��showCollegeHot���ݿ�ɹ���");
			String sql="select top 10 cName,College.cId,COUNT(Question.cId) from College,Question where College.cId=Question.cId group by cName,College.cId order by(COUNT(Question.cId)) DESC";
			ResultSet rs=DBConn.excuteSelect(sql);
			ArrayList collegeList=new ArrayList();
			try {
				while(rs.next())
				{
					College college = new College();
					college.setcName(rs.getString("cName"));
					college.setcId(rs.getString("cId"));
					collegeList.add(college);
				}
				DBConn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return collegeList;
		}
		//ͨ����ѧ���Ƶõ���ѧ��ϸ��Ϣ
		public static College getCollegeInfo(String cName){
			if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("��getCollegeInfo���ݿ�ʧ�ܣ�");
				return null;
			}
			else
				System.out.println("��getCollegeInfo���ݿ�ɹ���");
			College college = new College();
			String sql="select * from College where cName='"+cName+"'";
			ResultSet rs=DBConn.excuteSelect(sql);
			try {
				while(rs.next())
				{
					System.out.println("�ҵ�College�����ˣ�");
					college.setcId(rs.getString("cId"));
					college.setcName(rs.getString("cName"));
					college.setMulRank(rs.getInt("mulRank"));
					college.setTechRank(rs.getInt("techRank"));
					college.setPlace(rs.getString("place"));
					if(rs.getInt("type")==1)//typeΪ1ʱ��ʾ����
						college.setType("����");
					else if(rs.getInt("type")==2)
						college.setType("�Ŀ���");
					else if(rs.getInt("type")==3)
						college.setType("�ۺ���");
					if(rs.getInt("variety")==1)//varietyΪ1ʱ��ʾ985
						college.setVariety("985");
					else if(rs.getInt("variety")==2)
						college.setVariety("211");
					else if(rs.getInt("variety")==2)
						college.setVariety("����һ��");
				}
				DBConn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return college;
		}
		
		//���Ҹ���ѧ��������
		public static College getCollegeQuestion(String cName,int currentPage,String tit){
			if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("��getCollegeQuestion���ݿ�ʧ�ܣ�");
				return null;
			}
			else
				System.out.println("��getCollegeQuestion���ݿ�ɹ���");
			College college = new College();
			ArrayList qList=new ArrayList();
			int averPage=10,totalPages=0,totalCount=0,p=0;
			if(!tit.equals("Null")){
				System.out.println("��������...");
				String sql="select COUNT(*) from Question,College where cName='"+cName+"' AND Question.cId=College.cId AND title like '%"+tit+"%'";
				ResultSet rs=DBConn.excuteSelect(sql);
				try {
					rs.next();
					totalCount=rs.getInt(1);
					if(totalCount!=0){
						totalPages=(totalCount%averPage==0?(totalCount/averPage):(totalCount/averPage+1));
						if(totalPages==0)  totalPages=1;
						if(currentPage>totalPages)  currentPage=totalPages;
						else if(currentPage<1)  currentPage=1;
						p=(currentPage-1)*averPage+1;
						sql="select * from ("+
						            "select Question.*,ROW_NUMBER() over (order by numOfAn DESC) as rank from Question,College where cName='"+cName+"' AND Question.cId=College.cId AND title like '%"+tit+"%'"+
							") as t where t.rank between "+p+" and "+currentPage*averPage;
						rs=DBConn.excuteSelect(sql);
						while(rs.next())
						{
							System.out.println("������College-Question "+p+"to "+currentPage*averPage+" �����ˣ�");
							Question q=new Question();
							q.setqId(rs.getLong("qId"));
							q.setTitle(rs.getString("title"));
							q.setcId(rs.getString("cId"));
							q.setContext(rs.getString("context"));
							q.setDatetime(rs.getTimestamp("qTime"));
							q.setNumOfAn(rs.getInt("numOfAn"));
							q.setNumOfClick(rs.getInt("numOfClick"));
							q.setUserId(rs.getString("userId"));
							System.out.println(q.getqId()+q.getTitle()+q.getNumOfAn());
							qList.add(q);	
						}
					}
					DBConn.close();
					System.out.println(qList.size());
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else{
			String sql="select COUNT(*) from Question,College where cName='"+cName+"' AND Question.cId=College.cId";
			ResultSet rs=DBConn.excuteSelect(sql);
			try {
				rs.next();
				totalCount=rs.getInt(1);
				if(totalCount!=0){
					totalPages=(totalCount%averPage==0?(totalCount/averPage):(totalCount/averPage+1));
					if(totalPages==0)  totalPages=1;
					if(currentPage>totalPages)  currentPage=totalPages;
					else if(currentPage<1)  currentPage=1;
					p=(currentPage-1)*averPage+1;
					sql="select * from ("+
					            "select Question.*,ROW_NUMBER() over (order by numOfAn DESC) as rank from Question,College where cName='"+cName+"' AND Question.cId=College.cId"+
						") as t where t.rank between "+p+" and "+currentPage*averPage;
					rs=DBConn.excuteSelect(sql);
					while(rs.next())
					{
						System.out.println("�ҵ�College-Question "+p+"to "+currentPage*averPage+" �����ˣ�");
						Question q=new Question();
						q.setqId(rs.getLong("qId"));
						q.setTitle(rs.getString("title"));
						q.setcId(rs.getString("cId"));
						q.setContext(rs.getString("context"));
						q.setDatetime(rs.getTimestamp("qTime"));
						q.setNumOfAn(rs.getInt("numOfAn"));
						q.setNumOfClick(rs.getInt("numOfClick"));
						q.setUserId(rs.getString("userId"));
						System.out.println(q.getqId()+q.getTitle()+q.getNumOfAn());
						qList.add(q);	
					}
				}
				DBConn.close();
				System.out.println(qList.size());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
			System.out.println("totalPages="+totalPages+";totalCount="+totalCount);
			college.setTotalPages(totalPages);college.setTotalCount(totalCount);
			college.setqList(qList);
			return college;
		}
		
		//�����Ƿ���ڸô�ѧ��������ʾ�����б���֮����ʾ�޴�ѧ
		public static boolean searchCollege(String cName){
			if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("��searchCollege���ݿ�ʧ�ܣ�");
				return false;
			}
			else
				System.out.println("��searchCollege���ݿ�ɹ���");
			String sql="select cName from College where cName='"+cName+"'";//����������ѧ������
			ResultSet rs=DBConn.excuteSelect(sql);
			try {
				while(rs.next())//�иô�ѧ
				{
					return true;
				}
				DBConn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return false;
		}
		
		//��Ӵ�ѧ���
		public static String addCollege(String cId,String cName,String place,String type,String variety){
			if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("�����ݿ�ʧ�ܣ�");
				return "���ݿ����ʧ�ܣ�";
			}
			else{
				String sql="select * from College where cId = '" +cId+"' ";
				HashMap<String,Integer> typehs=new HashMap<String,Integer>();
				//���ݿ�int��String��Ӧ��ϵ
				typehs.put("����",1);
				typehs.put("�Ŀ���",2);
				typehs.put("�ۺ���",3);
				HashMap<String,Integer> varietyhs=new HashMap<String,Integer>();
				varietyhs.put("985",1);
				varietyhs.put("211",2);
				varietyhs.put("����",3);
				ResultSet rs=DBConn.excuteSelect(sql);
				//���ݿ��Ѿ����ڴ�ѧ
				try {
					if(!rs.next())
					{
						if(typehs.get(type)==null)
						{
							return "���������ࡢ�Ŀ�����ۺ���";
						}
						if(varietyhs.get(variety)==null)
						{
							return "������985,211�򱾿�";
						}
						//����ô�ѧ
						sql="insert into College(cId,cName,type,place,variety) values( '"+cId+"',"
								+ " '"+cName+"', "+typehs.get(type).intValue()
								+", '"+place+"' ,"+varietyhs.get(variety).intValue()+" )";
						if(DBConn.excuteIUD(sql))
						{
							return "��Ӵ�ѧ�ɹ���";
						}
						else 
							return "���ݿ���ֲ��ɿ�������0.0";
					}
					else
					{
						return "���ݿ��Ѿ����ڸô�ѧ��";
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return "����ʲôԭ��";
				}
			}
		}
}
