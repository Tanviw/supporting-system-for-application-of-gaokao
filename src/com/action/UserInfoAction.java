package com.action;
import java.io.File;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.DAO.QuestionDAO;
import com.DAO.UserDao;
import com.model.Question;
import com.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserInfoAction extends ActionSupport{

	private User user;

	private String picContentType; // �ļ�����������
	private File pic;//ͼƬ

	private int tab;
	private int type;//typeΪ1��ѧ��ѧ���б�,typeΪ2����ʦ�б�
	private ArrayList ql;
	private String msg;//������ʾ���������Ϣ
	
	
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public ArrayList getQl() {
		return ql;
	}

	public void setQl(ArrayList ql) {
		this.ql = ql;
	}

	public int getTab() {
		return tab;
	}

	public void setTab(int tab) {
		this.tab = tab;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getPicContentType() {
		return picContentType;
	}

	public void setPicContentType(String picContentType) {
		this.picContentType = picContentType;
	}

	public File getPic() {
		return pic;
	}

	public void setPic(File pic) {
		this.pic = pic;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String execute() throws Exception{
		System.out.println("����execute");
		return SUCCESS;
	}
	
	//��ʾ������Ϣ
	public String showUserInfo() throws Exception{
		System.out.println("����showUserInfo Action!");
		Map session=ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		
		String userId=(String) session.get("userId");
		System.out.println("id: "+userId);
		System.out.println("type: "+type);
		System.out.println("msg: "+msg);
		user=UserDao.showUserInfo(userId);
		if(user==null)
			System.out.println("δ�ҵ����û���");
		request.setAttribute("user",user);//���user
		request.setAttribute("type", type);
		request.setAttribute("ql", ql);
		request.setAttribute("msg", msg);
		if(ql!=null)
		{
			System.out.println("ql!=null");
		}
		else
			System.out.println("qlΪnull");
		System.out.println("�˳�showUserInfo Action!");
		return SUCCESS;
		
	}
	
	//�޸Ļ�����Ϣ
	public String modUserInfo() throws Exception{
		Map session=ActionContext.getContext().getSession();
		String userId=(String) session.get("userId");
		int duty=(int)session.get("duty");
		 System.out.println("userID:"+userId+" password:"+user.getPassword()+" duty:"+duty
				 +" nickname:"+user.getNickname());
		if(UserDao.modUserInfo(userId, user.getNickname(),user.getSex(),duty))
			System.out.println("�޸Ļ�����Ϣ�ɹ���");
		return SUCCESS;
	}
	//�޸�����
	public String modUserPassword() throws Exception{
		Map session=ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		String userId=(String) session.get("userId");
		int duty=(int)session.get("duty");
		 System.out.println("userID:"+userId+" password:"+user.getPassword()+" duty:"+duty);
		if(UserDao.modUserPassword(userId, user.getPassword()))
		{
			System.out.println("�޸�����ɹ���");	
			msg=new String("�޸�����ɹ���");
			request.setAttribute("msg", msg);
		}
		return SUCCESS;
	}
	//���δͨ�����޸������Ϣ�������ύ
	public String modUserVerifiedInfo() throws SQLException{
		Map session=ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		String userId=(String) session.get("userId");
		int duty=(int)session.get("duty");
		 System.out.println("userID:"+userId+" password:"+user.getPassword()+" duty:"+duty
				 +" mName:"+user.getmName());
		int result=UserDao.modUserVerifiedInfo(userId,duty,user.getcName(),
				user.getmName(),user.getsYear(),user.getType(),
				user.getName(),user.getCareer(),pic,picContentType);
	
		if(result==0)
		{
			request.setAttribute("msg", "���û����Ѿ����ڣ�");
			return ERROR;
		}
		else if(result==1)
		{
			
			request.setAttribute("msg", "�����ϴ������Ϣ�ɹ���");
			return SUCCESS;
		}
		else if(result==2)
		{
			request.setAttribute("msg", "�ô�ѧ��רҵ���޼�¼��");
			return ERROR;
		}
		else{
			request.setAttribute("msg", "�����ڲ�����");
			return ERROR;
		}
	}
   
	public String showQuestion(){
		Map session=ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		System.out.println("����鿴����Action");
		System.out.println("type: "+type);
		System.out.println("userId: "+session.get("userId"));
		ql=QuestionDAO.showQl(type, (String)session.get("userId"));
		//chain ���ݲ�������new,���Լ����Ե�get��set
		if(ql==null)
			System.out.println("ql null");
		else
			System.out.println("ql �ǿգ�");
		request.setAttribute("ql", ql);
		request.setAttribute("type", type);
		request.setAttribute("tab", 5);
		System.out.println("�˳��鿴����Action");
		return SUCCESS;
	}
}
