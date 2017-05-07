package com.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.DAO.CollegeDao;
import com.DAO.UserDao;
import com.model.College;
import com.model.Question;
import com.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport{


	private User user;

	private College college;
	
	private int cp;//点击页面
	private int duty;//管理员操作的列表，2为学长学姐，3为老师
	private String userIdGp;//管理员操作的用户组
	private int result;//审核结果:1为通过，0为不通过
	HttpServletRequest request = ServletActionContext.getRequest();
	Map session=ActionContext.getContext().getSession();
	
	
	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	public String getUserIdGp() {
		return userIdGp;
	}

	public void setUserIdGp(String userIdGp) {
		this.userIdGp = userIdGp;
	}

	public int getDuty() {
		return duty;
	}

	public void setDuty(int duty) {
		this.duty = duty;
	}

	

	public int getCp() {
		return cp;
	}

	public void setCp(int cp) {
		this.cp = cp;
	}

	public College getCollege() {
		return college;
	}

	public void setCollege(College college) {
		this.college = college;
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
	
    public String addCollege(){
		
		System.out.println(college.getcId());
		System.out.println(college.getcName());
		System.out.println(college.getPlace());
		System.out.println(college.getType());
		System.out.println(college.getVariety());
		String msg=CollegeDao.addCollege(college.getcId(),college.getcName(),
				college.getPlace(),college.getType(),college.getVariety());
		request.setAttribute("msg", msg);
		request.setAttribute("tab", 1);//操作者原操作画面
		return SUCCESS;
	}
    //删除用户
	public String deleteUser(){		
		String msg=UserDao.deleteUser(user.getId());
		request.setAttribute("msg", msg);
		request.setAttribute("tab", 4);//操作者原操作画面
		return SUCCESS;		
	}
	//显示待审核的用户
	public String displayAuditedUser(){
		System.out.println("进入displayAuditedUser Action");
		int currentPage=cp;
		System.out.println("cp:"+currentPage+" duty:"+duty);
		ArrayList list=UserDao.displayExaminedUser(currentPage,duty);
		if(list!=null)
		{
		   ArrayList auList=(ArrayList)list.get(0);
		   int totalPages=(int)list.get(1);
		   int totalCount=(int)list.get(2);
		   request.setAttribute("auList", auList);
		   request.setAttribute("totalPages", totalPages);
		   request.setAttribute("totalCount", totalCount);
		   request.setAttribute("currentPage", currentPage);
		   request.setAttribute("tab", 5);
		   request.setAttribute("duty", duty);
		   return SUCCESS;
		}
		else
			request.setAttribute("auList", null);
		request.setAttribute("tab", 5);
		request.setAttribute("duty", duty);
		return SUCCESS;
	}
	//审核用户
	public String auditUser(){
		System.out.println("进入auditUser Action!");
		System.out.println("result:"+result+" userIdGp:"+userIdGp+" duty:"+duty);
		String[] userGp=userIdGp.split(",");
		UserDao.examineUser(userGp,result);
		request.setAttribute("tab", 5);
		request.setAttribute("cp", cp);
		request.setAttribute("duty", duty);
		return SUCCESS;
	}
}
