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

	private String picContentType; // 文件的内容类型
	private File pic;//图片

	private int tab;
	private int type;//type为1：学长学姐列表,type为2：老师列表
	private ArrayList ql;
	private String msg;//用于显示操作后的消息
	
	
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
		System.out.println("进入execute");
		return SUCCESS;
	}
	
	//显示个人信息
	public String showUserInfo() throws Exception{
		System.out.println("进入showUserInfo Action!");
		Map session=ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		
		String userId=(String) session.get("userId");
		System.out.println("id: "+userId);
		System.out.println("type: "+type);
		System.out.println("msg: "+msg);
		user=UserDao.showUserInfo(userId);
		if(user==null)
			System.out.println("未找到该用户！");
		request.setAttribute("user",user);//存放user
		request.setAttribute("type", type);
		request.setAttribute("ql", ql);
		request.setAttribute("msg", msg);
		if(ql!=null)
		{
			System.out.println("ql!=null");
		}
		else
			System.out.println("ql为null");
		System.out.println("退出showUserInfo Action!");
		return SUCCESS;
		
	}
	
	//修改基础信息
	public String modUserInfo() throws Exception{
		Map session=ActionContext.getContext().getSession();
		String userId=(String) session.get("userId");
		int duty=(int)session.get("duty");
		 System.out.println("userID:"+userId+" password:"+user.getPassword()+" duty:"+duty
				 +" nickname:"+user.getNickname());
		if(UserDao.modUserInfo(userId, user.getNickname(),user.getSex(),duty))
			System.out.println("修改基础信息成功！");
		return SUCCESS;
	}
	//修改密码
	public String modUserPassword() throws Exception{
		Map session=ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		String userId=(String) session.get("userId");
		int duty=(int)session.get("duty");
		 System.out.println("userID:"+userId+" password:"+user.getPassword()+" duty:"+duty);
		if(UserDao.modUserPassword(userId, user.getPassword()))
		{
			System.out.println("修改密码成功！");	
			msg=new String("修改密码成功！");
			request.setAttribute("msg", msg);
		}
		return SUCCESS;
	}
	//审核未通过后修改审核信息并重新提交
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
			request.setAttribute("msg", "该用户名已经存在！");
			return ERROR;
		}
		else if(result==1)
		{
			
			request.setAttribute("msg", "重新上传审核信息成功！");
			return SUCCESS;
		}
		else if(result==2)
		{
			request.setAttribute("msg", "该大学或专业并无记录！");
			return ERROR;
		}
		else{
			request.setAttribute("msg", "出现内部错误！");
			return ERROR;
		}
	}
   
	public String showQuestion(){
		Map session=ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		System.out.println("进入查看问题Action");
		System.out.println("type: "+type);
		System.out.println("userId: "+session.get("userId"));
		ql=QuestionDAO.showQl(type, (String)session.get("userId"));
		//chain 传递参数不能new,用自己属性的get、set
		if(ql==null)
			System.out.println("ql null");
		else
			System.out.println("ql 非空！");
		request.setAttribute("ql", ql);
		request.setAttribute("type", type);
		request.setAttribute("tab", 5);
		System.out.println("退出查看问题Action");
		return SUCCESS;
	}
}
