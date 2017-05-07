package com.action;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.DAO.UserDao;
import com.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
//import com.uitl.HibernateUtil;
public class LoginAction extends ActionSupport{

	private User user;

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

	public String getUri() {
		return uri;
	}

	public void setUri(String uri) {
		this.uri = uri;
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
	
	//��¼
	public String login() throws Exception{
		try{
			System.out.println("����loginAction");
			Map session=ActionContext.getContext().getSession();
			if(session !=null)
				System.out.println("�Ự�򲻿գ�");
			System.out.println(user.getId()+" "+user.getPassword());
			HttpServletRequest request = ServletActionContext.getRequest();
			/*
			if(user.getId().equals("12345") && user.getPassword().equals("12345"))
			{
				session.put("status", 1);
				session.put("userId", user.getId()); 
				session.put("duty", 0);//0Ϊ����Ա
				return SUCCESS;
			}
			*/
			User us=UserDao.findUserInfo(user.getId(), user.getPassword());//�洢���ݿ��ҵ����û�
			if(us!=null)//�ҵõ����û�
			{
				session.put("status", 1);//status��ŵ�¼״̬
				session.put("userId", user.getId()); 
				session.put("duty", us.getDuty());//0Ϊ����Ա��1Ϊ�߿�����2Ϊѧ��ѧ�㣬3Ϊ��ʦ
				session.put("sta",us.getStatus());//���״̬
                System.out.println("from: "+from);
                if(from!=null)
                {
                	from=from.replace("&", "&amp;");
					from=URLEncoder.encode(from,"UTF-8");
                }
                request.setAttribute("from", from);
                System.out.println("�˳�LoginAction��");
				return SUCCESS;
			}
			else
			{
				session.put("status", 0); //status��ŵ�¼״̬
				request.setAttribute("msg", "�û������������");
				//setUri("login.jsp");//��½ʧ�ܣ����ص�¼����
				return ERROR;
			}
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			//HibernateUtil.getSession().close();
			//setUri("login.jsp");
			return ERROR;
		}
	}
	
	public String logout() throws UnsupportedEncodingException{
		System.out.println("����logoutAction��");
		HttpServletRequest request = ServletActionContext.getRequest();
		System.out.println(from);
		if(from!=null)
		{
		from=from.replace("&amp;", "&");
		from=URLEncoder.encode(from,"UTF-8");
		}
		request.setAttribute("from", from);
		System.out.println("from:"+from);
		
		//����Ự��״̬
		Map session=ActionContext.getContext().getSession();
		if(session!=null)
		{
			System.out.println("����˴λỰ");
			session.clear();
		}
		System.out.println("�˳�logoutAction��");
		return SUCCESS;
	}
}
