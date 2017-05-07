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

	//���Ҹ��������лش�
			public static ArrayList getTQueAnswer(long qId){
				if(!DBConn.open("127.0.0.1"))
				{
					System.out.println("��getTQueAnswer���ݿ�ʧ�ܣ�");
					return null;
				}
				else
					System.out.println("��getTQueAnswer���ݿ�ɹ���");
				ArrayList taList=new ArrayList();
				String sql="select * from tAnswer where qId="+qId+" order by numOfPraise DESC";
				ResultSet rs=DBConn.excuteSelect(sql);
				try {
					while(rs.next())
					{
						System.out.println("�ҵ�tanswer���ݣ�");
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
			
	//��ӻش�
			public static boolean insertTAnswer(String cont,String classId,String userId,long qId){
				if(!DBConn.open("127.0.0.1"))
				{
					System.out.println("��insertTAnswer���ݿ�ʧ�ܣ�");
					return false;
				}
				else
					System.out.println("��insertTAnswer���ݿ�ɹ���");
				cont=cont.replace("'", "''");
				Date d=new Date();//ȡʱ��
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
			
	//ɾ���ش�
			public static boolean deleteTAnswer(long aId,long qId){
				if(!DBConn.open("127.0.0.1"))
				{
					System.out.println("��deleteTAnswer���ݿ�ʧ�ܣ�");
					return false;
				}
				else
					System.out.println("��deleteTAnswer���ݿ�ɹ���");
				String sql="delete from tAnswer where aId="+aId,sql2="update tQuestion set numOfAn=numOfAn-1 where qId="+qId;
				boolean re=DBConn.excuteIUD(sql),re2=DBConn.excuteIUD(sql2);
				DBConn.close();
				return re&&re2;
				
			}
	//�޸ĵ��޸���
			  public static boolean updatePraiseT(long aId){
				  if(!DBConn.open("127.0.0.1"))
				  {
					  System.out.println("��updatePraiseT���ݿ�ʧ�ܣ�");
					  return false;
				  } 
				  else
					  System.out.println("��updatePraiseT���ݿ�ɹ���");
				  String sql="update tAnswer set numOfPraise=numOfPraise+1 where aId="+aId;
				  boolean re=DBConn.excuteIUD(sql);
				  DBConn.close();
				  return re;
			}		
}
