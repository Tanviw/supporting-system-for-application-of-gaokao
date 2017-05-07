package com.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.model.College;
import com.model.Question;

public class CollegeDao {
	//显示所有大学
		public static ArrayList showAllCollege(){
			if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("打开showAllCollege数据库失败！");
				return null;
			}
			else
				System.out.println("打开showAllCollege数据库成功！");
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
	//显示大学信息，用于高校排行榜
	public static ArrayList showRankOfCollege(){
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开数据库失败！");
			return null;
		}
		else
			System.out.println("打开数据库成功！");
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
				
				if(rs.getInt("type")==1)//type为1时显示理工类
					college.setType("985、211");
				else if(rs.getInt("type")==2)
					college.setType("211");
				else if(rs.getInt("type")==3)
					college.setType("本科一批");
				if(rs.getInt("variety")==1)//variety为1时显示985
					college.setVariety("理工类");
				else if(rs.getInt("variety")==2)
					college.setVariety("文科类");
				else if(rs.getInt("variety")==3)
					college.setVariety("综合类");
				collegeList.add(college);
				
			}
			DBConn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return collegeList;
	}
	
	//显示热门大学-根据问题数排序
		public static ArrayList showCollegeHot(){
			if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("打开showCollegeHot数据库失败！");
				return null;
			}
			else
				System.out.println("打开showCollegeHot数据库成功！");
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
		//通过大学名称得到大学详细信息
		public static College getCollegeInfo(String cName){
			if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("打开getCollegeInfo数据库失败！");
				return null;
			}
			else
				System.out.println("打开getCollegeInfo数据库成功！");
			College college = new College();
			String sql="select * from College where cName='"+cName+"'";
			ResultSet rs=DBConn.excuteSelect(sql);
			try {
				while(rs.next())
				{
					System.out.println("找到College数据了！");
					college.setcId(rs.getString("cId"));
					college.setcName(rs.getString("cName"));
					college.setMulRank(rs.getInt("mulRank"));
					college.setTechRank(rs.getInt("techRank"));
					college.setPlace(rs.getString("place"));
					if(rs.getInt("type")==1)//type为1时显示理工类
						college.setType("理工类");
					else if(rs.getInt("type")==2)
						college.setType("文科类");
					else if(rs.getInt("type")==3)
						college.setType("综合类");
					if(rs.getInt("variety")==1)//variety为1时显示985
						college.setVariety("985");
					else if(rs.getInt("variety")==2)
						college.setVariety("211");
					else if(rs.getInt("variety")==2)
						college.setVariety("本科一批");
				}
				DBConn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return college;
		}
		
		//查找给大学所有提问
		public static College getCollegeQuestion(String cName,int currentPage,String tit){
			if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("打开getCollegeQuestion数据库失败！");
				return null;
			}
			else
				System.out.println("打开getCollegeQuestion数据库成功！");
			College college = new College();
			ArrayList qList=new ArrayList();
			int averPage=10,totalPages=0,totalCount=0,p=0;
			if(!tit.equals("Null")){
				System.out.println("正在搜索...");
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
							System.out.println("搜索到College-Question "+p+"to "+currentPage*averPage+" 数据了！");
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
						System.out.println("找到College-Question "+p+"to "+currentPage*averPage+" 数据了！");
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
		
		//搜索是否存在该大学，存在显示问题列表；反之则显示无大学
		public static boolean searchCollege(String cName){
			if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("打开searchCollege数据库失败！");
				return false;
			}
			else
				System.out.println("打开searchCollege数据库成功！");
			String sql="select cName from College where cName='"+cName+"'";//查找搜索大学的名字
			ResultSet rs=DBConn.excuteSelect(sql);
			try {
				while(rs.next())//有该大学
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
		
		//添加大学版块
		public static String addCollege(String cId,String cName,String place,String type,String variety){
			if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("打开数据库失败！");
				return "数据库访问失败！";
			}
			else{
				String sql="select * from College where cId = '" +cId+"' ";
				HashMap<String,Integer> typehs=new HashMap<String,Integer>();
				//数据库int和String对应关系
				typehs.put("理工类",1);
				typehs.put("文科类",2);
				typehs.put("综合类",3);
				HashMap<String,Integer> varietyhs=new HashMap<String,Integer>();
				varietyhs.put("985",1);
				varietyhs.put("211",2);
				varietyhs.put("本科",3);
				ResultSet rs=DBConn.excuteSelect(sql);
				//数据库已经存在大学
				try {
					if(!rs.next())
					{
						if(typehs.get(type)==null)
						{
							return "请输入理工类、文科类或综合类";
						}
						if(varietyhs.get(variety)==null)
						{
							return "请输入985,211或本科";
						}
						//插入该大学
						sql="insert into College(cId,cName,type,place,variety) values( '"+cId+"',"
								+ " '"+cName+"', "+typehs.get(type).intValue()
								+", '"+place+"' ,"+varietyhs.get(variety).intValue()+" )";
						if(DBConn.excuteIUD(sql))
						{
							return "添加大学成功！";
						}
						else 
							return "数据库出现不可抗力因素0.0";
					}
					else
					{
						return "数据库已经存在该大学！";
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return "不造什么原因！";
				}
			}
		}
}
