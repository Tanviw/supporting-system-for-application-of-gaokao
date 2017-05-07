package com.DAO;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;

import com.model.College;
import com.model.User;

public class UserDao {

	//�����ݿ����ҵ����û��˺����룬���ڵ�¼
	public static User findUserInfo(String userId,String password){
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("�����ݿ�ʧ�ܣ�");
			return null;
		}
		else
			System.out.println("�����ݿ�ɹ���");
		String sql="select * from Account where userId='"+userId+"' "
			+"and password='"+password+"' ";
		ResultSet rs=DBConn.excuteSelect(sql);
		try {
			if(!rs.next())
			{
				System.out.println("�Ҳ������û���");
				DBConn.close();
				return null;
			}
			else{
				User user=new User();
				user.setId(rs.getString("userId"));
				user.setPassword(rs.getString("password"));
				user.setDuty(rs.getInt("duty"));
				//System.out.println(rs.getString("duty"));
				user.setStatus(rs.getInt("status"));
				DBConn.close();
				return user;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	//����û�������ע��,����-1�ڲ�����1�ɹ���0�û����Ѿ����ڣ�2���ݿ��޸ô�ѧ
	public static int addUser(String userId,String password,int duty,
			String cName,String mName,int sYear,
			String type,String name,String career,File pic,String picContentType) {
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("�����ݿ�ʧ�ܣ�");
			return -1;
		}
		else
			System.out.println("�����ݿ�ɹ���");
		String sql="select * from Account where userId='"+userId+"' "
			+"and password='"+password+"' ";
		ResultSet rs=DBConn.excuteSelect(sql);
		try {
			
			if(!rs.next())
			{
				System.out.println("���û��������ã�");
				password=password.replace("'", "''");
				if(duty==1)//�߿����������
				{
					sql="insert into Account values('"+userId+"','"+password+"',"+duty+","+"0)";
					if(DBConn.excuteIUD(sql))
						System.out.println("��Ӹ߿����ɹ�");
					
					sql="insert into highschool values('"+userId+"','"+userId+"',null)";
					//Ĭ���ǳƺ��û�����ͬ
					if(DBConn.excuteIUD(sql))
						System.out.println("��Ӹ߿������˳ɹ�");
					
				}
				else if(duty==2)//ѧ��ѧ��
				{
					//ServletContext servletContext=ServletActionContext.getServletContext();
					//�ļ��ϴ�·��
					//String path=servletContext.getRealPath("/verifiedImg/"+userId+"."
					//                               +picContentType.split("/")[1]);
					String path=DBConn.picUploadPath+userId+"."+picContentType.split("/")[1];
					System.out.println(cName+mName);
					//�ҵ���ѧ
					String sql1="select A.cId from College A where A.cName='"+cName+"'";
					//�ҵ�רҵ
					String sql2="select mId from Major where mName='"+mName+"'";
					ResultSet rs1=DBConn.excuteSelect(sql1);
					ResultSet rs2=DBConn.excuteSelect(sql2);
					
					if(rs1.next()&&rs2.next())
					{
						System.out.println("������ж�");
						sql="insert into Account values('"+userId+"','"+password+"',"+duty+","+"2 )";
						if(DBConn.excuteIUD(sql))
							System.out.println("���ѧ��ѧ��ɹ�");
						//�ϴ�ͼƬ��������
						if(pic!=null)
						{
							System.out.println("pic����");
							System.out.println(path);
							try {
								FileOutputStream out=new FileOutputStream(path);
								FileInputStream in=new FileInputStream(pic);
								byte[] buffer=new byte[1024];
								int len=0;
								try {
									while((len=in.read(buffer))!=-1)
									{
										out.write(buffer,0,len);
									}
									out.flush();
									out.close();
									in.close();
								} catch (IOException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							} catch (FileNotFoundException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
						String cId=rs1.getString("cId");
						String mId=rs2.getString("mId");
						Timestamp time= new Timestamp(System.currentTimeMillis());
						path="verifiedImg\\"+userId+"."+picContentType.split("/")[1];//���ݿ�洢·��Ϊ����Ŀ���ļ�����
						sql="insert into collegeStu values('"+userId+"','"+userId+"',null,'"
								+cId+"','"+mId+"',"+sYear+",'"+path+"', '"+time+"')";
						//Ĭ���ǳƺ��û�����ͬ
						if(DBConn.excuteIUD(sql))
							System.out.println("���ѧ��������Ϣ�ɹ�");
					}
					else{
						return 2;//���ݿ��޸ô�ѧ��רҵ
					}
				}
				else if(duty==3)//��ʦ
				{
					String path=DBConn.picUploadPath
							+userId+"."+picContentType.split("/")[1];
					System.out.println(cName+mName);
					String sql1="select A.cId from College A where A.cName='"+cName+"'";
					ResultSet rs1=DBConn.excuteSelect(sql1);
					if(rs1.next())
					{
						System.out.println("������ж�");
						sql="insert into Account values('"+userId+"','"+password+"',"+duty+","+"2)";
						if(DBConn.excuteIUD(sql))
							System.out.println("�����ʦ�ɹ�");
						//�ϴ�ͼƬ��������
						if(pic!=null)
						{
							try {
								FileOutputStream out=new FileOutputStream(path);
								FileInputStream in=new FileInputStream(pic);
								byte[]buffer=new byte[1024];
								int len=0;
								try {
									while((len=in.read(buffer))!=-1)
									{
										out.write(buffer,0,len);
									}
									out.flush();
									out.close();
									in.close();
								} catch (IOException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							} catch (FileNotFoundException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
						String cId=rs1.getString("cId");
						path="verifiedImg\\"+userId+"."+picContentType.split("/")[1];
						Timestamp time= new Timestamp(System.currentTimeMillis());
						//���ͼƬ���ݿ�洢·��Ϊ����Ŀ���ļ�����
						sql="insert into teacher values('"+userId+"','"+name+"',null,'"
								+cId+"','"+type+"','"+career+"','"+path+"', '"+time+"')";
						
						if(DBConn.excuteIUD(sql))
							System.out.println("�����ʦ������Ϣ�ɹ�");
					}
					else{
						return 2;//���ݿ��޸ô�ѧ��רҵ
					}
				}
				DBConn.close();
				return 1;
			}
			else{
				System.out.println("���û����Ѿ����ڣ�");
				return 0;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
	}
	
	//��ʾ������Ϣ
	public static User showUserInfo(String userId){
		System.out.println("����showUserInfo Action");
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("�����ݿ�ʧ�ܣ�");
			return null;
		}
		else
			System.out.println("�����ݿ�ɹ���");
		String sql="select * from Account where userId='"+userId+"' ";
		ResultSet rs=DBConn.excuteSelect(sql);
		try {
			if(!rs.next())
			{
				System.out.println("�Ҳ������û���");
				DBConn.close();
				return null;
			}
			else{
				
				User user=new User();
				user.setId(rs.getString("userId"));
				user.setPassword(rs.getString("password"));
				user.setDuty(rs.getInt("duty"));
				user.setStatus(rs.getInt("status"));
				if(user.getDuty()==1)//�߿���
				{
					sql="select A.* from highschool A,Account B where A.userId=B.userId and "
							+ "A.userId='"+user.getId()+"'";
					rs=DBConn.excuteSelect(sql);
					if(rs.next())
						System.out.println("�ҵ�������Ϣ��");
					else
						return null;
					user.setNickname(rs.getString("nickname"));
					user.setSex(rs.getString("sex"));
				}
				else if(user.getDuty()==2)
				{
					//�ҵ���Ӧ�ı�
					sql="select A.* from collegeStu A,Account B where A.userId=B.userId and "
							+ "A.userId='"+user.getId()+"'";
					rs=DBConn.excuteSelect(sql);
					if(rs.next())
						System.out.println("�ҵ�������Ϣ��");
					else
						return null;
					user.setNickname(rs.getString("nickname"));
					user.setSex(rs.getString("sex"));
					user.setsYear(rs.getInt("sYear"));
					user.setPicSrc(rs.getString("picSrc"));
					//�ҵ���ѧ
					String sql1="select cName from College where cId='"+rs.getString("cId")+"'";
					//�ҵ�רҵ
					String sql2="select mName from Major where mId='"+rs.getString("mId")+"'";
					ResultSet rs1=DBConn.excuteSelect(sql1);
					ResultSet rs2=DBConn.excuteSelect(sql2);
					if(rs1.next()&&rs2.next())
					{
						System.out.println("������ж�");	
						String cName=rs1.getString("cName");
						String mName=rs2.getString("mName");
						user.setcName(cName);
						user.setmName(mName);
					}
				}
				else if(user.getDuty()==3)//��ʦ
				{
					sql="select A.name,A.sex,C.cName,A.type,A.career,A.picSrc from teacher A,Account B,College C where A.userId=B.userId and "
							+ "A.userId='"+user.getId()+"' and "
									+ "A.cId=C.cId";
					rs=DBConn.excuteSelect(sql);
					if(rs.next())
						System.out.println("�ҵ�������Ϣ��");
					else
						return null;
					user.setName(rs.getString("name"));
					user.setSex(rs.getString("sex"));
					user.setcName(rs.getString("cName"));
					user.setType(rs.getString("type"));
					user.setCareer(rs.getString("career"));
					user.setPicSrc(rs.getString("picSrc"));
				}
				DBConn.close();
				return user;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	//�޸��û�����
	public static boolean modUserPassword(String userId,String password)
	{
		System.out.println("�����޸�����action��");
		System.out.println("userID:"+userId+" password:"+password);
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("�����ݿ�ʧ�ܣ�");
			return false;
		}
		else
			System.out.println("�����ݿ�ɹ���");
		if(!password.equals(""))
		{
			password=password.replace("'", "''");
			System.out.println("�������벻Ϊ�գ��޸�");
			String sql="UPDATE Account SET password = '"+password+"' WHERE userId = '"+userId+"' ";
			if(DBConn.excuteIUD(sql))
				System.out.println("��������ɹ���");
		}
		else
			System.out.println("��������Ϊ�գ����޸�");
		return true;
	}
	//�޸��û���Ϣ(�Ա�,�ǳ�)
	public static boolean modUserInfo(String userId,String nickname,String sex,int duty){
		   
		    System.out.println("�����޸��û�������ϢAction!");
		    System.out.println("userID:"+userId+" duty:"+duty);
			if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("�����ݿ�ʧ�ܣ�");
				return false;
			}
			else
				System.out.println("�����ݿ�ɹ���");
			String[] table={null,"highschool","collegeStu","teacher"};
			if(nickname!=null)
			{
				nickname=nickname.replace("'", "''");
				String sql="UPDATE "+table[duty]+" SET nickname = '"+nickname+"' WHERE userId = '"+userId+"' ";
				if(DBConn.excuteIUD(sql))
					System.out.println("�޸��ǳƳɹ���");
			}
			if(sex!=null)
			{
			if(sex.equals("δ����"))
			{
				if(duty!=0){
					String sql="UPDATE "+table[duty]+" SET sex = null WHERE userId = '"+userId+"' ";
					if(DBConn.excuteIUD(sql))
						System.out.println("�޸��Ա�ɹ���");
				}
				
			}
			else{
				if(duty!=0){
					String sql="UPDATE "+table[duty]+" SET sex = '"+sex+"'  WHERE userId = '"+userId+"' ";
					if(DBConn.excuteIUD(sql))
						System.out.println("�޸��Ա�ɹ���");
				}
			}
			}
		return true;
	}
	
	//ɾ���û�
	public static String deleteUser(String userId){
		System.out.println("����ɾ���û�Action��");
		String msg;//���ش�����
		int d;
		String duty[]={"highschool","collegeStu","teacher"};
		String sql="select duty from Account where userId="+"'"+userId+"'";
		try{
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("�����ݿ�ʧ�ܣ�");
			return "�����ݿ�ʧ�ܣ�";
		}
		else
			System.out.println("�����ݿ�ɹ���");
		ResultSet rs=DBConn.excuteSelect(sql);
		if(rs.next()){
			d=rs.getInt("duty");
			if(d==0)//ɾ���˺�Ϊ����Ա����
				return "����ɾ������Ա�˺ţ�";
			d--;
			//ɾ��Answer��
			sql="delete from Answer where userId="+"'"+userId+"'";
			DBConn.excuteIUD(sql);
			//ɾ��Question��
			sql="delete from Question where userId="+"'"+userId+"'";
			DBConn.excuteIUD(sql);
			//ɾ��tAnswer��
			sql="delete from tAnswer where userId="+"'"+userId+"'";
			DBConn.excuteIUD(sql);
			//ɾ��tQuestion��
			sql="delete from tQuestion where userId="+"'"+userId+"'";
			DBConn.excuteIUD(sql);
			//ɾ��������Ϣ��
			sql="delete from "+duty[d]+" where userId="+"'"+userId+"'";
			DBConn.excuteIUD(sql);
			//ɾ���˺ű�
			sql="delete from Account where userId="+"'"+userId+"'";
			DBConn.excuteIUD(sql);
			
			msg="ɾ���û��ɹ���";
		}
		else
			msg="�Ҳ������û���";
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			msg="�����쳣��";
			return msg;
		}		
		return msg;
	}
	
	//��ʾ������û�
	public static ArrayList displayExaminedUser(int currentPage,int duty)
	{
		 int averPage=5,totalPages=0,totalCount=0,p=0;
		 if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("�����ݿ�ʧ�ܣ�");
				return null;
			}
			else
				System.out.println("�����ݿ�ɹ���");
		 String sql="select  COUNT(*)  from Account where status = 2";
		 ArrayList list=new ArrayList();
		 ArrayList auList = new ArrayList();
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
					if(duty==2)
					{
						sql="select * from ( "+
							    "select A.userId,C.cName,D.mName, "
							    + "B.sYear,B.sex,B.picSrc,B.requestTime, "
							    + "ROW_NUMBER() over (order by B.requestTime) "
							    + "as rank from Account A ,collegeStu B,College C,Major D "
							    + "where status = 2 and A.userId=B.userId "
							    + "and C.cId=B.cId and D.mId=B.mId "
							    +") as t where t.rank between "+p+" and "+currentPage*averPage;
							rs=DBConn.excuteSelect(sql);
							while(rs.next()){
								System.out.println("�ҵ� "+p+"to "+currentPage*averPage+" �����ˣ�");
								
								User user=new User();
								user.setId(rs.getString("userId"));
								user.setSex(rs.getString("sex"));								
								user.setcName(rs.getString("cName"));
								user.setmName(rs.getString("mName"));
								user.setsYear(rs.getInt("sYear"));
								user.setPicSrc(rs.getString("picSrc"));
								user.setRequestTime(rs.getTimestamp("requestTime"));
								
								auList.add(user);					     
							}
					}
					else if(duty==3)
					{
						sql="select * from ( "+
							    "select A.userId,B.name,C.cName,B.career,B.type, "
							    + "B.sex,B.picSrc,B.requestTime, "
							    + "ROW_NUMBER() over (order by B.requestTime) "
							    + "as rank from Account A ,teacher B,College C "
							    + "where status = 2 and A.userId=B.userId "
							    + "and C.cId=B.cId "
							    +") as t where t.rank between "+p+" and "+currentPage*averPage;
							rs=DBConn.excuteSelect(sql);
							while(rs.next()){
								System.out.println("�ҵ� "+p+"to "+currentPage*averPage+" �����ˣ�");
								
								User user=new User();
								user.setId(rs.getString("userId"));
								user.setSex(rs.getString("sex"));
								user.setName(rs.getString("name"));
								user.setcName(rs.getString("cName"));

								user.setCareer(rs.getString("career"));
								user.setType(rs.getString("type"));
								user.setPicSrc(rs.getString("picSrc"));
								user.setRequestTime(rs.getTimestamp("requestTime"));
								
								auList.add(user);					     
							}
					}
					list.add(auList);
					list.add(totalPages);
					list.add(totalCount);
					DBConn.close();				
					return list;
				}
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		 return null;
	}
	
	//����û�
	public static void examineUser(String[] userGp,int result){
		int s;
		if (result==0){
			s=3;
		}else{
			s=1;
		}
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("�����ݿ�ʧ�ܣ�");
			return;
		}
		else
			System.out.println("�����ݿ�ɹ���");
		for(int i=0;i<userGp.length;i++)
		{
			String sql="update Account set status="+s+"where userId="+"'"+userGp[i]+"'";
			DBConn.excuteIUD(sql);
		}		
	}

	//���δͨ�����޸������Ϣ�������ύ
	public static int modUserVerifiedInfo(String userId,int duty,
			String cName,String mName,int sYear,
			String type,String name,String career,File pic,String picContentType) throws SQLException{
		System.out.println("�����޸������Ϣaction��");
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("�����ݿ�ʧ�ܣ�");
			return -1;
		}
		else
			System.out.println("�����ݿ�ɹ���");
		System.out.println("userId:"+userId+" duty:"+duty);
	    String sql; 	    
	    //ɾ���û�֮ǰ�ύ�������Ϣ
	    if(duty==2)//ɾ��ѧ��ѧ���
	    {
	    	sql="delete from collegeStu where userId= '"+userId+"' ";
	    	 DBConn.excuteIUD(sql);
	    }
	    else if(duty==3)
	    {
	    	sql="delete from teacher where userId= '"+userId+"' ";
	    	 DBConn.excuteIUD(sql);
	    }
	   
	    if(cName!=null)	    
	    	cName=cName.replace("'", "''");
	    if(mName!=null)	    
	    	mName=mName.replace("'", "''");
	    if(type!=null)	    
	    	type=type.replace("'", "''");
	    if(name!=null)	    
	    	name=name.replace("'", "''");
	    if(career!=null)	    
	    	career=career.replace("'", "''");
	    //�ϴ�����Ϣ(�������ͼƬ)
	    if(duty==2)
	    {
	    	String path=DBConn.picUploadPath+userId+"."+picContentType.split("/")[1];
			System.out.println(cName+mName);
			//�ҵ���ѧ
			String sql1="select A.cId from College A where A.cName='"+cName+"'";
			//�ҵ�רҵ
			String sql2="select mId from Major where mName='"+mName+"'";
			ResultSet rs1=DBConn.excuteSelect(sql1);
			ResultSet rs2=DBConn.excuteSelect(sql2);
			if(rs1.next()&&rs2.next())
			{
				System.out.println("������ж�");
				//�ϴ�ͼƬ��������
				if(pic!=null)
				{
					System.out.println("pic����");
					System.out.println(path);
					try {
						FileOutputStream out=new FileOutputStream(path);
						FileInputStream in=new FileInputStream(pic);
						byte[] buffer=new byte[1024];
						int len=0;
						try {
							while((len=in.read(buffer))!=-1)
							{
								out.write(buffer,0,len);
							}
							out.flush();
							out.close();
							in.close();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					} catch (FileNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				String cId=rs1.getString("cId");
				String mId=rs2.getString("mId");
				Timestamp time= new Timestamp(System.currentTimeMillis()); 
				path="verifiedImg\\"+userId+"."+picContentType.split("/")[1];//���ݿ�洢·��Ϊ����Ŀ���ļ�����
				sql="insert into collegeStu values('"+userId+"','"+userId+"',null,'"
						+cId+"','"+mId+"',"+sYear+",'"+path+"', '"+time+"')";
				//Ĭ���ǳƺ��û�����ͬ
				if(DBConn.excuteIUD(sql))
					System.out.println("���ѧ��������Ϣ�ɹ�");
			}
			else{
				return 2;//���ݿ��޸ô�ѧ��רҵ
			}
				
	    }
	    else if(duty==3)//��ʦ
		{
			String path=DBConn.picUploadPath+userId+"."+picContentType.split("/")[1];
			System.out.println(cName+mName);
			String sql1="select A.cId from College A where A.cName='"+cName+"'";
			ResultSet rs1=DBConn.excuteSelect(sql1);
			if(rs1.next())
			{
				System.out.println("������ж�");
				//�ϴ�ͼƬ��������
				if(pic!=null)
				{
					try {
						FileOutputStream out=new FileOutputStream(path);
						FileInputStream in=new FileInputStream(pic);
						byte[]buffer=new byte[1024];
						int len=0;
						try {
							while((len=in.read(buffer))!=-1)
							{
								out.write(buffer,0,len);
							}
							out.flush();
							out.close();
							in.close();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					} catch (FileNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				String cId=rs1.getString("cId");
				path="verifiedImg\\"+userId+"."+picContentType.split("/")[1];
				Timestamp time= new Timestamp(System.currentTimeMillis()); 
				//���ͼƬ���ݿ�洢·��Ϊ����Ŀ���ļ�����
				sql="insert into teacher values('"+userId+"','"+name+"',null,'"
						+cId+"','"+type+"','"+career+"','"+path+"', '"+time+"')";
				
				if(DBConn.excuteIUD(sql))
					System.out.println("�����ʦ������Ϣ�ɹ�");
			}
			else{
				return 2;//���ݿ��޸ô�ѧ��רҵ
			}
		}
	    //�ɹ�������Ϣ�������ϴ�
		sql="UPDATE Account SET status = 2  WHERE userId = '"+userId+"' ";
	    //���û����״̬��Ϊ�����2
	    DBConn.excuteIUD(sql);
		DBConn.close();
		return 1;
			
	}

	//�������״̬
			public static boolean getSta(String userId){
				if(!DBConn.open(DBConn.DBIP))
				{
					System.out.println("��getSta���ݿ�ʧ�ܣ�");
					return false;
				}
				else
					System.out.println("��getSta���ݿ�ɹ���");
				String sql="select status from Account where userId='"+userId+"' ";
				ResultSet rs=DBConn.excuteSelect(sql);
				try {
					if(rs.next())
					{
						int sta=rs.getInt("status");
						if(sta!=1){
							System.out.println("��=1");
							return false;
						}
						else 
							return true;
					}
					else
						return false;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return false;
				}
			}
}
