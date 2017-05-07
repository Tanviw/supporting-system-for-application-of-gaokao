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
	private String qs;//参数
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
		System.out.println("进入execute");
		return SUCCESS;
	}
	
	//登录
	public String login() throws Exception{
		try{
			System.out.println("进入loginAction");
			Map session=ActionContext.getContext().getSession();
			if(session !=null)
				System.out.println("会话域不空！");
			System.out.println(user.getId()+" "+user.getPassword());
			HttpServletRequest request = ServletActionContext.getRequest();
			/*
			if(user.getId().equals("12345") && user.getPassword().equals("12345"))
			{
				session.put("status", 1);
				session.put("userId", user.getId()); 
				session.put("duty", 0);//0为管理员
				return SUCCESS;
			}
			*/
			User us=UserDao.findUserInfo(user.getId(), user.getPassword());//存储数据库找到的用户
			if(us!=null)//找得到该用户
			{
				session.put("status", 1);//status存放登录状态
				session.put("userId", user.getId()); 
				session.put("duty", us.getDuty());//0为管理员，1为高考生，2为学长学姐，3为老师
				session.put("sta",us.getStatus());//审核状态
                System.out.println("from: "+from);
                if(from!=null)
                {
                	from=from.replace("&", "&amp;");
					from=URLEncoder.encode(from,"UTF-8");
                }
                request.setAttribute("from", from);
                System.out.println("退出LoginAction！");
				return SUCCESS;
			}
			else
			{
				session.put("status", 0); //status存放登录状态
				request.setAttribute("msg", "用户名或密码错误！");
				//setUri("login.jsp");//登陆失败，返回登录界面
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
		System.out.println("进入logoutAction！");
		HttpServletRequest request = ServletActionContext.getRequest();
		System.out.println(from);
		if(from!=null)
		{
		from=from.replace("&amp;", "&");
		from=URLEncoder.encode(from,"UTF-8");
		}
		request.setAttribute("from", from);
		System.out.println("from:"+from);
		
		//清除会话域状态
		Map session=ActionContext.getContext().getSession();
		if(session!=null)
		{
			System.out.println("清除此次会话");
			session.clear();
		}
		System.out.println("退出logoutAction！");
		return SUCCESS;
	}
}
