package com.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.model.Answer;
import com.model.TAnswer;

public class TAnswerDAO {

	//查找该提问所有回答
			public static ArrayList getTQueAnswer(long qId){
				if(!DBConn.open("127.0.0.1"))
				{
					System.out.println("打开getTQueAnswer数据库失败！");
					return null;
				}
				else
					System.out.println("打开getTQueAnswer数据库成功！");
				ArrayList taList=new ArrayList();
				String sql="select * from tAnswer where qId="+qId+" order by numOfPraise DESC";
				ResultSet rs=DBConn.excuteSelect(sql);
				try {
					while(rs.next())
					{
						System.out.println("找到tanswer数据！");
						TAnswer ta=new TAnswer();
						ta.setqId(qId);
						ta.setaId(rs.getLong("aId"));
						ta.setaTime(rs.getTimestamp("aTime"));
						ta.setClassId(rs.getString("classId"));
						ta.setContext(rs.getString("context"));
						ta.setNumOfPraise(rs.getInt("numOfPraise"));
						ta.setUserId(rs.getString("UserId"));
						taList.add(ta);	
					}
					System.out.println(taList.size());
					DBConn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return taList;
			}
			
	//添加回答
			public static boolean insertTAnswer(String cont,String classId,String userId,long qId){
				if(!DBConn.open("127.0.0.1"))
				{
					System.out.println("打开insertTAnswer数据库失败！");
					return false;
				}
				else
					System.out.println("打开insertTAnswer数据库成功！");
				cont=cont.replace("'", "''");
				Date d=new Date();//取时间
		        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		        String dateString = formatter.format(d);  
				TAnswer a=new TAnswer();
				a.setaTime(Timestamp.valueOf(dateString));a.setClassId(classId);a.setContext(cont);a.setqId(qId);a.setUserId(userId);
				String sql="insert into tAnswer values("+a.getqId()+",'"+a.getClassId()+"','"+a.getUserId()+"','"+a.getContext()+"','"+a.getaTime()+"',0)",
						sql2="update tQuestion set numOfAn=numOfAn+1 where qId="+qId;
				boolean re=DBConn.excuteIUD(sql),re2=DBConn.excuteIUD(sql2);
				DBConn.close();
				return re&&re2;
			}
			
	//删除回答
			public static boolean deleteTAnswer(long aId,long qId){
				if(!DBConn.open("127.0.0.1"))
				{
					System.out.println("打开deleteTAnswer数据库失败！");
					return false;
				}
				else
					System.out.println("打开deleteTAnswer数据库成功！");
				String sql="delete from tAnswer where aId="+aId,sql2="update tQuestion set numOfAn=numOfAn-1 where qId="+qId;
				boolean re=DBConn.excuteIUD(sql),re2=DBConn.excuteIUD(sql2);
				DBConn.close();
				return re&&re2;
				
			}
	//修改点赞个数
			  public static boolean updatePraiseT(long aId){
				  if(!DBConn.open("127.0.0.1"))
				  {
					  System.out.println("打开updatePraiseT数据库失败！");
					  return false;
				  } 
				  else
					  System.out.println("打开updatePraiseT数据库成功！");
				  String sql="update tAnswer set numOfPraise=numOfPraise+1 where aId="+aId;
				  boolean re=DBConn.excuteIUD(sql);
				  DBConn.close();
				  return re;
			}		
}
