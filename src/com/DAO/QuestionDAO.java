package com.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.*;

import com.model.College;
import com.model.Question;
import com.model.TQuestion;

public class QuestionDAO {

	
	
	//删除问题
	public static boolean deleteQuestion(long qId){
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开deleteQuestion数据库失败！");
			return false;
		}
		else
			System.out.println("打开deleteQuestion数据库成功！");
		Question q=new Question();
		String sqll="select numOfAn from Question where qId="+qId;
		ResultSet rs=DBConn.excuteSelect(sqll);
		try {
			while(rs.next()){
				System.out.println("得到numOfAn了");
				q.setNumOfAn(rs.getInt("numOfAn"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		boolean result;
		if(q.getNumOfAn()!=0){
			String sql1="delete from Answer where qId="+qId,sql2="delete from Question where qId="+qId;
			result=DBConn.excuteIUD(sql1)&&DBConn.excuteIUD(sql2);
			DBConn.close();
			return result;
		}
		else{
			String sql="delete from Question where qId="+qId;
			result=DBConn.excuteIUD(sql);
			DBConn.close();
			return result;
		}
		
	}
	
	//提交问题
	public static long insertQuestion(String tit,String cont,String cId,String userId){
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开insertQuestion数据库失败！");
			return 0;
		}
		else
			System.out.println("打开insertQuestion数据库成功！");
		System.out.println(tit+cont);
		if(cont!=null)
			cont=cont.replace("'", "''");
		tit=tit.replace("'", "''");
		System.out.println(tit+cont);
		Date d=new Date();//取时间
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = formatter.format(d);  
		Question question=new Question();
		question.setTitle(tit);question.setContext(cont);question.setcId(cId);
		question.setDatetime(Timestamp.valueOf(dateString));question.setUserId(userId);
		String sql="insert into Question(cId,userId,numOfAn,title,context,qTime,numOfClick) output inserted.qId values('"+question.getcId()+"','"+question.getUserId()+"',0,'"+question.getTitle()+"','"+question.getContext()+"','"+question.getDatetime()+"',0)";
		ResultSet rs=DBConn.excuteSelect(sql);
		long qId=0;
		try {
			if(rs.next()){
				System.out.println("得到qId了");
				qId=rs.getLong(1);
			}
			DBConn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return qId;
	}
	
	//通过qId得到问题详情
	public static Question getQuestionInfo(long qId){
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开getQuestionInfo数据库失败！");
			return null;
		}
		else
			System.out.println("打开getQuestionInfo数据库成功！");

		Question q=new Question();
		String sql="select * from Question where qId="+qId;
		ResultSet rs=DBConn.excuteSelect(sql);
		try {
			while(rs.next())
			{
				System.out.println("找到question数据了！");
				q.setqId(qId);
				q.setcId(rs.getString("cId"));
				q.setContext(rs.getString("context"));
				q.setDatetime(rs.getTimestamp("qTime"));
				q.setNumOfAn(rs.getInt("numOfAn"));
				q.setNumOfClick(rs.getInt("numOfClick"));
				q.setTitle(rs.getString("title"));
				q.setUserId(rs.getString("userId"));
			}
			DBConn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return q;
	}
	
	
	
	
	
	//通过userId得到问题列表
		public static ArrayList usergetQuestions(String userId){
			if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("打开usergetQuestions数据库失败！");
				return null;
			}
			else
				System.out.println("打开usergetQuestions数据库成功！");
			String sql="select * from Question where userId='"+userId+"'";
			ResultSet rs=DBConn.excuteSelect(sql);
			ArrayList ql=new ArrayList();
			try {
				while(rs.next())
				{
					Question q=new Question();
					q.setUserId(userId);
					q.setqId(rs.getLong("qId"));
					q.setcId(rs.getString("cId"));
					q.setContext(rs.getString("context"));
					q.setDatetime(rs.getTimestamp("qTime"));
					q.setNumOfAn(rs.getInt("numOfAn"));
					q.setNumOfClick(rs.getInt("numOfClick"));
					q.setTitle(rs.getString("title"));
					ql.add(q);
				}
				DBConn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return ql;
		}
	
    
	
	//显示高考生提问问题	
	public static ArrayList showQl(int type,String userId){
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开usergetQuestions数据库失败！");
			return null;
		}
		else
			System.out.println("打开usergetQuestions数据库成功！");
		if(type==1)
		{
			String sql="select A.*,B.cName from Question A,College B "
					+ "where userId='"+userId+"' and A.cId=B.cId";
			ResultSet rs=DBConn.excuteSelect(sql);
			ArrayList ql=new ArrayList();
			try {
				while(rs.next())
				{
					Question q=new Question();
					q.setUserId(userId);
					q.setqId(rs.getLong("qId"));
					q.setcName(rs.getString("cName"));
					q.setContext(rs.getString("context"));
					q.setDatetime(rs.getTimestamp("qTime"));
					q.setNumOfAn(rs.getInt("numOfAn"));
					q.setNumOfClick(rs.getInt("numOfClick"));
					q.setTitle(rs.getString("title"));
					ql.add(q);
				}
				DBConn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return ql;
		}

		else if(type==2)
		{
			String sql="select A.*,B.* from tQuestion A,classify B "
					+ "where userId='"+userId+"' and A.classId=B.classId ";
			ResultSet rs=DBConn.excuteSelect(sql);
			ArrayList ql=new ArrayList();
			try {
				while(rs.next())
				{
					TQuestion q=new TQuestion();
					q.setUserId(userId);
					q.setqId(rs.getLong("qId"));
					q.setClassId(rs.getString("classId"));
					q.setClassName(rs.getString("className"));
					q.setContext(rs.getString("context"));
					q.setqTime(rs.getTimestamp("qTime"));
					q.setNumOfAn(rs.getInt("numOfAn"));
					q.setNumOfClick(rs.getInt("numOfClick"));
					q.setTitle(rs.getString("title"));
					ql.add(q);
				}
				DBConn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return ql;
		}
		return null;
	}
}
