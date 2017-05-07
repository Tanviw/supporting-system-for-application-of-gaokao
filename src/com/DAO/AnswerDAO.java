package com.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.model.Answer;
import com.model.College;
import com.model.Question;

public class AnswerDAO {

	//修改点赞个数
	  public static boolean updatePraise(long aId){
		  if(!DBConn.open("127.0.0.1"))
		  {
			  System.out.println("打开updatePraise数据库失败！");
			  return false;
		  } 
		  else
			  System.out.println("打开updatePraise数据库成功！");
		  String sql="update Answer set numOfPraise=numOfPraise+1 where aId="+aId;
		  boolean re=DBConn.excuteIUD(sql);
		  DBConn.close();
		  return re;
	}
	
	//查找该提问所有回答
		public static ArrayList getQueAnswer(long qId){
			if(!DBConn.open("127.0.0.1"))
			{
				System.out.println("打开getQueAnswer数据库失败！");
				return null;
			}
			else
				System.out.println("打开getQueAnswer数据库成功！");
			ArrayList aList=new ArrayList();
			String sql="select * from Answer where qId="+qId+" order by numOfPraise DESC";
			ResultSet rs=DBConn.excuteSelect(sql);
			try {
				while(rs.next())
				{
					System.out.println("找到answer数据！");
					Answer a=new Answer();
					a.setqId(qId);
					a.setaId(rs.getLong("aId"));
					a.setaTime(rs.getTimestamp("aTime"));
					a.setcId(rs.getString("cId"));
					a.setContext(rs.getString("context"));
					a.setNumOfPraise(rs.getInt("numOfPraise"));
					a.setUserId(rs.getString("UserId"));
					aList.add(a);	
				}
				System.out.println(aList.size());
				DBConn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return aList;
		}
		
		//提交回答
		public static boolean insertAnswer(String cont,String cId,String userId,long qId){
			if(!DBConn.open("127.0.0.1"))
			{
				System.out.println("打开insertAnswer数据库失败！");
				return false;
			}
			else
				System.out.println("打开insertAnswer数据库成功！");
			cont=cont.replace("'", "''");
			Date d=new Date();//取时间
	        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	        String dateString = formatter.format(d);  
			Answer a=new Answer();
			a.setaTime(Timestamp.valueOf(dateString));a.setcId(cId);a.setContext(cont);a.setqId(qId);a.setUserId(userId);
			String sql="insert into Answer values("+a.getqId()+",'"+a.getcId()+"','"+a.getUserId()+"','"+a.getContext()+"','"+a.getaTime()+"',0)",
					sql2="update Question set numOfAn=numOfAn+1 where qId="+qId;
			boolean re=DBConn.excuteIUD(sql),re2=DBConn.excuteIUD(sql2);
			DBConn.close();
			return re&&re2;
		}
		
		//删除回答
		public static boolean deleteAnswer(long aId,long qId){
			if(!DBConn.open("127.0.0.1"))
			{
				System.out.println("打开deleteAnswer数据库失败！");
				return false;
			}
			else
				System.out.println("打开deleteAnswer数据库成功！");
			String sql="delete from Answer where aId="+aId,sql2="update Question set numOfAn=numOfAn-1 where qId="+qId;
			boolean re=DBConn.excuteIUD(sql),re2=DBConn.excuteIUD(sql2);
			DBConn.close();
			return re&&re2;
			
		}
}
