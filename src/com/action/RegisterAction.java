package com.action;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.DAO.UserDao;
import com.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{

	private User user;
	private String picContentType; // �ļ�����������
	private File pic;//ͼƬ
	private String uri;
	private String url;
	private String qs;//����
	private String from;
	
	
	
	
	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getUri() {
		return uri;
	}

	public void setUri(String uri) {
		this.uri = uri;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getQs() {
		return qs;
	}

	public void setQs(String qs) {
		this.qs = qs;
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

	public String register(){
		System.out.println("����registerAction!");
		HttpServletRequest request = ServletActionContext.getRequest();
		Map session=ActionContext.getContext().getSession();
		System.out.println(user.getId());
		System.out.println(user.getDuty());
		if(pic==null)
			System.out.println("picnull!");
		int result=UserDao.addUser(user.getId(),user.getPassword(),user.getDuty(),user.getcName(),
				user.getmName(),user.getsYear(),user.getType(),
				user.getName(),user.getCareer(),pic,picContentType);
		if(result==0)
		{
			request.setAttribute("msg", "���û����Ѿ����ڣ�");
			return ERROR;
		}
		else if(result==1)
		{
			session.put("status", 1);//status��ŵ�¼״̬
			session.put("userId", user.getId()); 
			session.put("duty", user.getDuty());
			if(user.getDuty()==2||user.getDuty()==3)//ע��Ϊѧ������ʦ
			{
			     session.put("sta",2);//���״̬���տ�ʼע�����״̬Ϊ�����2
			     request.setAttribute("msg","ע��ɹ������Խ��������Ϣ�鿴���״̬��");      
			}
			else{
				session.put("sta", 0);//����Ա�͸߿����������
				request.setAttribute("msg","ע��ɹ���");  
			}
			System.out.println("from: "+from);
            if(from!=null)
            {
            	from=from.replace("&", "&amp;");
				try {
					from=URLEncoder.encode(from,"UTF-8");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
            }
            request.setAttribute("from", from);
            System.out.println("�˳�RegisterAction��"); 
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
}
