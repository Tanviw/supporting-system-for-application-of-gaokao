package com.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.model.Classify;
import com.model.College;
import com.model.Question;
import com.model.TQuestion;
import com.model.Teacher;

public class TQuestionDAO {


	//��ʾרҵ����
			public static ArrayList showClassify(){
				if(!DBConn.open("127.0.0.1"))
				{
					System.out.println("��showClassify���ݿ�ʧ�ܣ�");
					return null;
				}
				else
					System.out.println("��showClassify���ݿ�ɹ���");
				String sql="select top 10 classify.*,COUNT(tQuestion.classId) from classify,tQuestion where tQuestion.classId=classify.classId group by tQuestion.classId,classify.classId,className order by COUNT(tQuestion.classId) DESC";
				ResultSet rs=DBConn.excuteSelect(sql);
				ArrayList clList=new ArrayList();
				try {
					while(rs.next())
					{
						System.out.println("�ҵ�classify�����ˣ�");
						String[] cl=new String[2];
						cl[0]=rs.getString("classId");
						cl[1]=rs.getString("className");
						clList.add(cl);
					}
					DBConn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return clList;
			}
	
	
	//��ʾ��������
		public static ArrayList showHotQuestion(){
			if(!DBConn.open("127.0.0.1"))
			{
				System.out.println("��showHotQuestion���ݿ�ʧ�ܣ�");
				return null;
			}
			else
				System.out.println("��showHotQuestion���ݿ�ɹ���");
			String sql="select qId,title from tQuestion order by numOfAn DESC";
			ResultSet rs=DBConn.excuteSelect(sql);
			ArrayList hqList=new ArrayList();
			try {
				while(rs.next())
				{
					System.out.println("�ҵ�hotQuestion�����ˣ�");
					TQuestion q=new TQuestion();
					q.setqId(rs.getLong("qId"));
					q.setTitle(rs.getString("title"));
/*					q.setContext(rs.getString("context"));
					q.setqTime(rs.getTimestamp("qTime"));
					q.setNumOfAn(rs.getInt("numOfAn"));
					q.setNumOfClick(rs.getInt("numOfClick"));
					q.setUserId(rs.getString("userId"));
					q.setType(rs.getString("type"));*/
					hqList.add(q);
				}
				DBConn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return hqList;
		}
		
		//��ʾ��������
				public static ArrayList showNewQuestion(){
					if(!DBConn.open("127.0.0.1"))
					{
						System.out.println("��showNewQuestion���ݿ�ʧ�ܣ�");
						return null;
					}
					else
						System.out.println("��showNewQuestion���ݿ�ɹ���");
					String sql="select qId,title from tQuestion order by qTime DESC";
					ResultSet rs=DBConn.excuteSelect(sql);
					ArrayList nqList=new ArrayList();
					try {
						while(rs.next())
						{
							System.out.println("�ҵ�newQuestion�����ˣ�");
							TQuestion q=new TQuestion();
							q.setqId(rs.getLong("qId"));
							q.setTitle(rs.getString("title"));
		/*					q.setContext(rs.getString("context"));
							q.setqTime(rs.getTimestamp("qTime"));
							q.setNumOfAn(rs.getInt("numOfAn"));
							q.setNumOfClick(rs.getInt("numOfClick"));
							q.setUserId(rs.getString("userId"));
							q.setType(rs.getString("type"));*/
							nqList.add(q);
						}
						DBConn.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					return nqList;
				}
		
		//��ʾרҵ��������
		       public static Classify getClassQuestion(String classId,int currentPage,String tit){
		    	   if(!DBConn.open("127.0.0.1"))
					{
						System.out.println("��getClassQuestion���ݿ�ʧ�ܣ�");
						return null;
					}
					else
						System.out.println("��getClassQuestion���ݿ�ɹ���");
		    	   Classify c=new Classify();
		    	   ArrayList tqList=new ArrayList();
		    	   int averPage=10,totalPages=0,totalCount=0,p=0;
		    	   if(!tit.equals("Null")){
		    		   System.out.println("��������...");
		    		   String sql="select COUNT(*) from tQuestion,classify where classify.classId ='"+classId+"' AND tQuestion.classId=classify.classId AND title like '%"+tit+"%'";
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
		   					    "select tQuestion.*,ROW_NUMBER() over (order by numOfAn DESC) as rank from tQuestion,classify where classify.classId='"+classId+"' AND classify.classId=tQuestion.classId AND title like '%"+tit+"%'"+
		   					     ") as t where t.rank between "+p+" and "+currentPage*averPage;
		   					rs=DBConn.excuteSelect(sql);
							while(rs.next()){
								System.out.println("������Classify-Question "+p+"to "+currentPage*averPage+" �����ˣ�");
								TQuestion q=new TQuestion();
								q.setqId(rs.getLong("qId"));
								q.setTitle(rs.getString("title"));
								q.setNumOfAn(rs.getInt("numOfAn"));
								q.setContext(rs.getString("context"));
								q.setqTime(rs.getTimestamp("qTime"));
								q.setNumOfClick(rs.getInt("numOfClick"));
								q.setUserId(rs.getString("userId"));
								q.setClassId(rs.getString("classId"));
								tqList.add(q);
							}
		   				}
		   				DBConn.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		    	   }
		    	   else{
		    		   String sql="select COUNT(*) from tQuestion,classify where classify.classId ='"+classId+"' AND tQuestion.classId=classify.classId";
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
		   					    "select tQuestion.*,ROW_NUMBER() over (order by numOfAn DESC) as rank from tQuestion,classify where classify.classId='"+classId+"' AND classify.classId=tQuestion.classId"+
		   					     ") as t where t.rank between "+p+" and "+currentPage*averPage;
		   					rs=DBConn.excuteSelect(sql);
							while(rs.next()){
								System.out.println("�ҵ�Classify-Question "+p+"to "+currentPage*averPage+" �����ˣ�");
								TQuestion q=new TQuestion();
								q.setqId(rs.getLong("qId"));
								q.setTitle(rs.getString("title"));
								q.setNumOfAn(rs.getInt("numOfAn"));
								q.setContext(rs.getString("context"));
								q.setqTime(rs.getTimestamp("qTime"));
								q.setNumOfClick(rs.getInt("numOfClick"));
								q.setUserId(rs.getString("userId"));
								q.setClassId(rs.getString("classId"));
								tqList.add(q);
							}
		   				}
		   				DBConn.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		    	   }
		    	  System.out.println("totalPages="+totalPages+";totalCount="+totalCount);
		   		  c.setTotalPages(totalPages);c.setTotalCount(totalCount);
		   		  c.setClassId(classId);
		    	  c.setTqList(tqList);
				  return c;
		       }
	
	//ͨ��qId�õ���������
		       public static TQuestion getTQuestionInfo(long qId){
		    	   if(!DBConn.open("127.0.0.1"))
		   		{
		   			System.out.println("��getTQuestionInfo���ݿ�ʧ�ܣ�");
		   			return null;
		   		}
		   		else
		   			System.out.println("��getTQuestionInfo���ݿ�ɹ���");
		   		TQuestion tq=new TQuestion();
		   		String sql="select * from tQuestion where qId="+qId;
		   		ResultSet rs=DBConn.excuteSelect(sql);
		   		try {
		   			while(rs.next())
		   			{
		   				System.out.println("�ҵ�tquestion�����ˣ�");
		   				tq.setqId(qId);
		   				tq.setClassId(rs.getString("classId"));
		   				tq.setqTime(rs.getTimestamp("qTime"));
		   				tq.setContext(rs.getString("context"));
		   				tq.setNumOfAn(rs.getInt("numOfAn"));
		   				tq.setNumOfClick(rs.getInt("numOfClick"));
		   				tq.setTitle(rs.getString("title"));
		   				tq.setUserId(rs.getString("userId"));
		   			}
		   			DBConn.close();
		   		} catch (SQLException e) {
		   			// TODO Auto-generated catch block
		   			e.printStackTrace();
		   		}
		   		return tq;
		       }
		       

	//��������
		       public static long insertTQuestion(String tit,String cont,String classId,String userId){
		    	   if(!DBConn.open("127.0.0.1"))
		   		{
		   			System.out.println("��insertTQuestion���ݿ�ʧ�ܣ�");
		   			return 0;
		   		}
		   		else
		   			System.out.println("��insertTQuestion���ݿ�ɹ���");
		   		System.out.println(tit+cont);
		   		if(cont!=null)
					cont=cont.replace("'", "''");
				tit=tit.replace("'", "''");
		   		System.out.println(tit+cont);
		   		Date d=new Date();//ȡʱ��
		        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		        String dateString = formatter.format(d);  
		   		TQuestion question=new TQuestion();
		   		question.setTitle(tit);question.setContext(cont);question.setClassId(classId);
		   		question.setqTime(Timestamp.valueOf(dateString));question.setUserId(userId);
		   		String sql="insert into tQuestion(classId,userId,numOfAn,title,context,qTime,numOfClick) output inserted.qId values('"+question.getClassId()+"','"+question.getUserId()+"',0,'"+question.getTitle()+"','"+question.getContext()+"','"+question.getqTime()+"',0)";
		   		ResultSet rs=DBConn.excuteSelect(sql);
		   		long qId=0;
		   		try {
		   			if(rs.next()){
		   				System.out.println("�õ�qId��");
		   				qId=rs.getLong(1);
		   			}
		   			DBConn.close();
		   		} catch (SQLException e) {
		   			// TODO Auto-generated catch block
		   			e.printStackTrace();
		   		}
		   		return qId;
		       }
		       
	
	
	//ɾ������
		   	public static boolean deleteTQuestion(long qId){
		   		if(!DBConn.open("127.0.0.1"))
		   		{
		   			System.out.println("��deleteTQuestion���ݿ�ʧ�ܣ�");
		   			return false;
		   		}
		   		else
		   			System.out.println("��deleteTQuestion���ݿ�ɹ���");
		   		TQuestion q=new TQuestion();
		   		String sqll="select numOfAn from TQuestion where qId="+qId;
		   		ResultSet rs=DBConn.excuteSelect(sqll);
		   		try {
		   			while(rs.next()){
		   				System.out.println("�õ�numOfAn��");
		   				q.setNumOfAn(rs.getInt("numOfAn"));
		   			}
		   		} catch (SQLException e) {
		   			// TODO Auto-generated catch block
		   			e.printStackTrace();
		   		}
		   		boolean result;
		   		if(q.getNumOfAn()!=0){
		   			String sql1="delete from tAnswer where qId="+qId,sql2="delete from tQuestion where qId="+qId;
		   			result=DBConn.excuteIUD(sql1)&&DBConn.excuteIUD(sql2);
		   			DBConn.close();
		   			return result;
		   		}
		   		else{
		   			String sql="delete from tQuestion where qId="+qId;
		   			result=DBConn.excuteIUD(sql);
		   			DBConn.close();
		   			return result;
		   		}
		   		
		   	}
		   	
		       
		   
	//ͨ��userId�õ������б�
				public static ArrayList usergetTQuestions(String userId){
					if(!DBConn.open("127.0.0.1"))
					{
						System.out.println("��usergetTQuestions���ݿ�ʧ�ܣ�");
						return null;
					}
					else
						System.out.println("��usergetTQuestions���ݿ�ɹ���");
					String sql="select * from tQuestion where userId='"+userId+"'";
					ResultSet rs=DBConn.excuteSelect(sql);
					ArrayList ql=new ArrayList();
					try {
						while(rs.next())
						{
							TQuestion q=new TQuestion();
							q.setUserId(userId);
							q.setqId(rs.getLong("qId"));
							q.setClassId(rs.getString("classId"));
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
}
