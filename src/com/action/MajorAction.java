package com.action;

import java.util.*;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.DAO.MajorDao;
import com.model.Classify;
import com.model.Major;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class MajorAction extends ActionSupport{

	HttpServletRequest request = ServletActionContext.getRequest();
	Map session=ActionContext.getContext().getSession();
	private Classify classify;
	private String userAction;
	private Major requestedMajor;
	private ArrayList<Major> galList=new ArrayList<Major>();
	
	
	public ArrayList<Major> getGalList() {
		return galList;
	}
	public void setGalList(ArrayList<Major> galList) {
		this.galList = galList;
	}
	public Major getRequestedMajor() {
		return requestedMajor;
	}
	public void setRequestedMajor(Major requestedMajor) {
		this.requestedMajor = requestedMajor;
	}
	public String getUserAction() {
		return userAction;
	}
	public void setUserAction(String userAction) {
		this.userAction = userAction;
	}
	private Major major;
	
	public Classify getClassify() {
		return classify;
	}
	public void setClassify(Classify classify) {
		this.classify = classify;
	}
	public Major getMajor() {
		return major;
	}
	public void setMajor(Major major) {
		this.major = major;
	}
	
	//传送专业具体信息，及其所属专业大类，用HashMap<String,ArrayList>
	public String showClassMajor(){
		System.out.println("进入专业大类及其专业显示Action！");
		HashMap<String,ArrayList> classMajor=MajorDao.transClassMajor();
		System.out.println("数据库操作完成！");
		
		System.out.println("用户做了："+userAction);
		if(requestedMajor!=null)
			System.out.println("用户查看了专业");
		else
			System.out.println("用户初始进入界面");
		
		request.setAttribute("userAction", userAction);
		request.setAttribute("classMajor",classMajor);
		request.setAttribute("requestedMajor", requestedMajor);
		request.setAttribute("galList", galList);
		
		return SUCCESS;
	}
	//显示专业具体信息
	public String displayMajorInfo(){
		System.out.println("进入显示具体专业信息Action！");
		//从前台得到用户想要看的专业名字
		String mName=major.getmName();
		System.out.println("用户点击的专业名字："+mName);
		
	    Major requestedMajor=MajorDao.transMajorInfo(mName);
	    setUserAction("displayMajorInfo");
	    setRequestedMajor(requestedMajor);
	    //request.setAttribute("userAction", "displayMajorInfo");
	    //request.setAttribute("requestedMajor", requestedMajor);
	    System.out.println("调后台专业信息数据完成！");
		return SUCCESS;
	}
	
	public String displayGalRank(){
		ArrayList<Major> galList=MajorDao.transGalList();
		setUserAction("displayGalRank");
		setGalList(galList);
		System.out.println("调后台薪酬排行数据完成！");
		return SUCCESS;
	}
}
