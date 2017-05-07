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

	//�޸ĵ��޸���
	  public static boolean updatePraise(long aId){
		  if(!DBConn.open("127.0.0.1"))
		  {
			  System.out.println("��updatePraise���ݿ�ʧ�ܣ�");
			  return false;
		  } 
		  else
			  System.out.println("��updatePraise���ݿ�ɹ���");
		  String sql="update Answer set numOfPraise=numOfPraise+1 where aId="+aId;
		  boolean re=DBConn.excuteIUD(sql);
		  DBConn.close();
		  return re;
	}
	
	//���Ҹ��������лش�
		public static ArrayList getQueAnswer(long qId){
			if(!DBConn.open("127.0.0.1"))
			{
				System.out.println("��getQueAnswer���ݿ�ʧ�ܣ�");
				return null;
			}
			else
				System.out.println("��getQueAnswer���ݿ�ɹ���");
			ArrayList aList=new ArrayList();
			String sql="select * from Answer where qId="+qId+" order by numOfPraise DESC";
			ResultSet rs=DBConn.excuteSelect(sql);
			try {
				while(rs.next())
				{
					System.out.println("�ҵ�answer���ݣ�");
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
		
		//�ύ�ش�
		public static boolean insertAnswer(String cont,String cId,String userId,long qId){
			if(!DBConn.open("127.0.0.1"))
			{
				System.out.println("��insertAnswer���ݿ�ʧ�ܣ�");
				return false;
			}
			else
				System.out.println("��insertAnswer���ݿ�ɹ���");
			cont=cont.replace("'", "''");
			Date d=new Date();//ȡʱ��
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
		
		//ɾ���ش�
		public static boolean deleteAnswer(long aId,long qId){
			if(!DBConn.open("127.0.0.1"))
			{
				System.out.println("��deleteAnswer���ݿ�ʧ�ܣ�");
				return false;
			}
			else
				System.out.println("��deleteAnswer���ݿ�ɹ���");
			String sql="delete from Answer where aId="+aId,sql2="update Question set numOfAn=numOfAn-1 where qId="+qId;
			boolean re=DBConn.excuteIUD(sql),re2=DBConn.excuteIUD(sql2);
			DBConn.close();
			return re&&re2;
			
		}
}
