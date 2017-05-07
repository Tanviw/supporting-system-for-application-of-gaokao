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

	//在数据库中找到该用户账号密码，用于登录
	public static User findUserInfo(String userId,String password){
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开数据库失败！");
			return null;
		}
		else
			System.out.println("打开数据库成功！");
		String sql="select * from Account where userId='"+userId+"' "
			+"and password='"+password+"' ";
		ResultSet rs=DBConn.excuteSelect(sql);
		try {
			if(!rs.next())
			{
				System.out.println("找不到该用户！");
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
	
	//添加用户，用于注册,返回-1内部错误。1成功，0用户名已经存在，2数据库无该大学
	public static int addUser(String userId,String password,int duty,
			String cName,String mName,int sYear,
			String type,String name,String career,File pic,String picContentType) {
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开数据库失败！");
			return -1;
		}
		else
			System.out.println("打开数据库成功！");
		String sql="select * from Account where userId='"+userId+"' "
			+"and password='"+password+"' ";
		ResultSet rs=DBConn.excuteSelect(sql);
		try {
			
			if(!rs.next())
			{
				System.out.println("该用户名可以用！");
				password=password.replace("'", "''");
				if(duty==1)//高考生不用审核
				{
					sql="insert into Account values('"+userId+"','"+password+"',"+duty+","+"0)";
					if(DBConn.excuteIUD(sql))
						System.out.println("添加高考生成功");
					
					sql="insert into highschool values('"+userId+"','"+userId+"',null)";
					//默认昵称和用户名相同
					if(DBConn.excuteIUD(sql))
						System.out.println("添加高考生个人成功");
					
				}
				else if(duty==2)//学长学姐
				{
					//ServletContext servletContext=ServletActionContext.getServletContext();
					//文件上传路径
					//String path=servletContext.getRealPath("/verifiedImg/"+userId+"."
					//                               +picContentType.split("/")[1]);
					String path=DBConn.picUploadPath+userId+"."+picContentType.split("/")[1];
					System.out.println(cName+mName);
					//找到大学
					String sql1="select A.cId from College A where A.cName='"+cName+"'";
					//找到专业
					String sql2="select mId from Major where mName='"+mName+"'";
					ResultSet rs1=DBConn.excuteSelect(sql1);
					ResultSet rs2=DBConn.excuteSelect(sql2);
					
					if(rs1.next()&&rs2.next())
					{
						System.out.println("进入该判断");
						sql="insert into Account values('"+userId+"','"+password+"',"+duty+","+"2 )";
						if(DBConn.excuteIUD(sql))
							System.out.println("添加学长学姐成功");
						//上传图片到服务器
						if(pic!=null)
						{
							System.out.println("pic不空");
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
						path="verifiedImg\\"+userId+"."+picContentType.split("/")[1];//数据库存储路径为：项目下文件夹名
						sql="insert into collegeStu values('"+userId+"','"+userId+"',null,'"
								+cId+"','"+mId+"',"+sYear+",'"+path+"', '"+time+"')";
						//默认昵称和用户名相同
						if(DBConn.excuteIUD(sql))
							System.out.println("添加学长个人信息成功");
					}
					else{
						return 2;//数据库无该大学或专业
					}
				}
				else if(duty==3)//老师
				{
					String path=DBConn.picUploadPath
							+userId+"."+picContentType.split("/")[1];
					System.out.println(cName+mName);
					String sql1="select A.cId from College A where A.cName='"+cName+"'";
					ResultSet rs1=DBConn.excuteSelect(sql1);
					if(rs1.next())
					{
						System.out.println("进入该判断");
						sql="insert into Account values('"+userId+"','"+password+"',"+duty+","+"2)";
						if(DBConn.excuteIUD(sql))
							System.out.println("添加老师成功");
						//上传图片到服务器
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
						//审核图片数据库存储路径为：项目下文件夹名
						sql="insert into teacher values('"+userId+"','"+name+"',null,'"
								+cId+"','"+type+"','"+career+"','"+path+"', '"+time+"')";
						
						if(DBConn.excuteIUD(sql))
							System.out.println("添加老师个人信息成功");
					}
					else{
						return 2;//数据库无该大学或专业
					}
				}
				DBConn.close();
				return 1;
			}
			else{
				System.out.println("该用户名已经存在！");
				return 0;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
	}
	
	//显示个人信息
	public static User showUserInfo(String userId){
		System.out.println("进入showUserInfo Action");
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开数据库失败！");
			return null;
		}
		else
			System.out.println("打开数据库成功！");
		String sql="select * from Account where userId='"+userId+"' ";
		ResultSet rs=DBConn.excuteSelect(sql);
		try {
			if(!rs.next())
			{
				System.out.println("找不到该用户！");
				DBConn.close();
				return null;
			}
			else{
				
				User user=new User();
				user.setId(rs.getString("userId"));
				user.setPassword(rs.getString("password"));
				user.setDuty(rs.getInt("duty"));
				user.setStatus(rs.getInt("status"));
				if(user.getDuty()==1)//高考生
				{
					sql="select A.* from highschool A,Account B where A.userId=B.userId and "
							+ "A.userId='"+user.getId()+"'";
					rs=DBConn.excuteSelect(sql);
					if(rs.next())
						System.out.println("找到个人信息！");
					else
						return null;
					user.setNickname(rs.getString("nickname"));
					user.setSex(rs.getString("sex"));
				}
				else if(user.getDuty()==2)
				{
					//找到对应的表
					sql="select A.* from collegeStu A,Account B where A.userId=B.userId and "
							+ "A.userId='"+user.getId()+"'";
					rs=DBConn.excuteSelect(sql);
					if(rs.next())
						System.out.println("找到个人信息！");
					else
						return null;
					user.setNickname(rs.getString("nickname"));
					user.setSex(rs.getString("sex"));
					user.setsYear(rs.getInt("sYear"));
					user.setPicSrc(rs.getString("picSrc"));
					//找到大学
					String sql1="select cName from College where cId='"+rs.getString("cId")+"'";
					//找到专业
					String sql2="select mName from Major where mId='"+rs.getString("mId")+"'";
					ResultSet rs1=DBConn.excuteSelect(sql1);
					ResultSet rs2=DBConn.excuteSelect(sql2);
					if(rs1.next()&&rs2.next())
					{
						System.out.println("进入该判断");	
						String cName=rs1.getString("cName");
						String mName=rs2.getString("mName");
						user.setcName(cName);
						user.setmName(mName);
					}
				}
				else if(user.getDuty()==3)//老师
				{
					sql="select A.name,A.sex,C.cName,A.type,A.career,A.picSrc from teacher A,Account B,College C where A.userId=B.userId and "
							+ "A.userId='"+user.getId()+"' and "
									+ "A.cId=C.cId";
					rs=DBConn.excuteSelect(sql);
					if(rs.next())
						System.out.println("找到个人信息！");
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
	//修改用户密码
	public static boolean modUserPassword(String userId,String password)
	{
		System.out.println("进入修改密码action！");
		System.out.println("userID:"+userId+" password:"+password);
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开数据库失败！");
			return false;
		}
		else
			System.out.println("打开数据库成功！");
		if(!password.equals(""))
		{
			password=password.replace("'", "''");
			System.out.println("输入密码不为空！修改");
			String sql="UPDATE Account SET password = '"+password+"' WHERE userId = '"+userId+"' ";
			if(DBConn.excuteIUD(sql))
				System.out.println("更新密码成功！");
		}
		else
			System.out.println("输入密码为空！不修改");
		return true;
	}
	//修改用户信息(性别,昵称)
	public static boolean modUserInfo(String userId,String nickname,String sex,int duty){
		   
		    System.out.println("进入修改用户基础信息Action!");
		    System.out.println("userID:"+userId+" duty:"+duty);
			if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("打开数据库失败！");
				return false;
			}
			else
				System.out.println("打开数据库成功！");
			String[] table={null,"highschool","collegeStu","teacher"};
			if(nickname!=null)
			{
				nickname=nickname.replace("'", "''");
				String sql="UPDATE "+table[duty]+" SET nickname = '"+nickname+"' WHERE userId = '"+userId+"' ";
				if(DBConn.excuteIUD(sql))
					System.out.println("修改昵称成功！");
			}
			if(sex!=null)
			{
			if(sex.equals("未设置"))
			{
				if(duty!=0){
					String sql="UPDATE "+table[duty]+" SET sex = null WHERE userId = '"+userId+"' ";
					if(DBConn.excuteIUD(sql))
						System.out.println("修改性别成功！");
				}
				
			}
			else{
				if(duty!=0){
					String sql="UPDATE "+table[duty]+" SET sex = '"+sex+"'  WHERE userId = '"+userId+"' ";
					if(DBConn.excuteIUD(sql))
						System.out.println("修改性别成功！");
				}
			}
			}
		return true;
	}
	
	//删除用户
	public static String deleteUser(String userId){
		System.out.println("进入删除用户Action！");
		String msg;//返回处理结果
		int d;
		String duty[]={"highschool","collegeStu","teacher"};
		String sql="select duty from Account where userId="+"'"+userId+"'";
		try{
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开数据库失败！");
			return "打开数据库失败！";
		}
		else
			System.out.println("打开数据库成功！");
		ResultSet rs=DBConn.excuteSelect(sql);
		if(rs.next()){
			d=rs.getInt("duty");
			if(d==0)//删除账号为管理员类型
				return "不得删除管理员账号！";
			d--;
			//删除Answer表
			sql="delete from Answer where userId="+"'"+userId+"'";
			DBConn.excuteIUD(sql);
			//删除Question表
			sql="delete from Question where userId="+"'"+userId+"'";
			DBConn.excuteIUD(sql);
			//删除tAnswer表
			sql="delete from tAnswer where userId="+"'"+userId+"'";
			DBConn.excuteIUD(sql);
			//删除tQuestion表
			sql="delete from tQuestion where userId="+"'"+userId+"'";
			DBConn.excuteIUD(sql);
			//删除个人信息表
			sql="delete from "+duty[d]+" where userId="+"'"+userId+"'";
			DBConn.excuteIUD(sql);
			//删除账号表
			sql="delete from Account where userId="+"'"+userId+"'";
			DBConn.excuteIUD(sql);
			
			msg="删除用户成功！";
		}
		else
			msg="找不到该用户！";
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			msg="出现异常！";
			return msg;
		}		
		return msg;
	}
	
	//显示待审核用户
	public static ArrayList displayExaminedUser(int currentPage,int duty)
	{
		 int averPage=5,totalPages=0,totalCount=0,p=0;
		 if(!DBConn.open(DBConn.DBIP))
			{
				System.out.println("打开数据库失败！");
				return null;
			}
			else
				System.out.println("打开数据库成功！");
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
								System.out.println("找到 "+p+"to "+currentPage*averPage+" 数据了！");
								
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
								System.out.println("找到 "+p+"to "+currentPage*averPage+" 数据了！");
								
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
	
	//审核用户
	public static void examineUser(String[] userGp,int result){
		int s;
		if (result==0){
			s=3;
		}else{
			s=1;
		}
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开数据库失败！");
			return;
		}
		else
			System.out.println("打开数据库成功！");
		for(int i=0;i<userGp.length;i++)
		{
			String sql="update Account set status="+s+"where userId="+"'"+userGp[i]+"'";
			DBConn.excuteIUD(sql);
		}		
	}

	//审核未通过，修改审核信息并重新提交
	public static int modUserVerifiedInfo(String userId,int duty,
			String cName,String mName,int sYear,
			String type,String name,String career,File pic,String picContentType) throws SQLException{
		System.out.println("进入修改审核信息action！");
		if(!DBConn.open(DBConn.DBIP))
		{
			System.out.println("打开数据库失败！");
			return -1;
		}
		else
			System.out.println("打开数据库成功！");
		System.out.println("userId:"+userId+" duty:"+duty);
	    String sql; 	    
	    //删除用户之前提交的审核信息
	    if(duty==2)//删除学长学姐表
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
	    //上传新信息(覆盖审核图片)
	    if(duty==2)
	    {
	    	String path=DBConn.picUploadPath+userId+"."+picContentType.split("/")[1];
			System.out.println(cName+mName);
			//找到大学
			String sql1="select A.cId from College A where A.cName='"+cName+"'";
			//找到专业
			String sql2="select mId from Major where mName='"+mName+"'";
			ResultSet rs1=DBConn.excuteSelect(sql1);
			ResultSet rs2=DBConn.excuteSelect(sql2);
			if(rs1.next()&&rs2.next())
			{
				System.out.println("进入该判断");
				//上传图片到服务器
				if(pic!=null)
				{
					System.out.println("pic不空");
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
				path="verifiedImg\\"+userId+"."+picContentType.split("/")[1];//数据库存储路径为：项目下文件夹名
				sql="insert into collegeStu values('"+userId+"','"+userId+"',null,'"
						+cId+"','"+mId+"',"+sYear+",'"+path+"', '"+time+"')";
				//默认昵称和用户名相同
				if(DBConn.excuteIUD(sql))
					System.out.println("添加学长个人信息成功");
			}
			else{
				return 2;//数据库无该大学或专业
			}
				
	    }
	    else if(duty==3)//老师
		{
			String path=DBConn.picUploadPath+userId+"."+picContentType.split("/")[1];
			System.out.println(cName+mName);
			String sql1="select A.cId from College A where A.cName='"+cName+"'";
			ResultSet rs1=DBConn.excuteSelect(sql1);
			if(rs1.next())
			{
				System.out.println("进入该判断");
				//上传图片到服务器
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
				//审核图片数据库存储路径为：项目下文件夹名
				sql="insert into teacher values('"+userId+"','"+name+"',null,'"
						+cId+"','"+type+"','"+career+"','"+path+"', '"+time+"')";
				
				if(DBConn.excuteIUD(sql))
					System.out.println("添加老师个人信息成功");
			}
			else{
				return 2;//数据库无该大学或专业
			}
		}
	    //成功覆盖信息后，重新上传
		sql="UPDATE Account SET status = 2  WHERE userId = '"+userId+"' ";
	    //将用户审核状态置为审核中2
	    DBConn.excuteIUD(sql);
		DBConn.close();
		return 1;
			
	}

	//查找审核状态
			public static boolean getSta(String userId){
				if(!DBConn.open(DBConn.DBIP))
				{
					System.out.println("打开getSta数据库失败！");
					return false;
				}
				else
					System.out.println("打开getSta数据库成功！");
				String sql="select status from Account where userId='"+userId+"' ";
				ResultSet rs=DBConn.excuteSelect(sql);
				try {
					if(rs.next())
					{
						int sta=rs.getInt("status");
						if(sta!=1){
							System.out.println("！=1");
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
