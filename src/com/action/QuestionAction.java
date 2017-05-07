package com.action;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.DAO.AnswerDAO;
import com.DAO.CollegeDao;
import com.DAO.QuestionDAO;
import com.DAO.UserDao;
import com.model.Answer;
import com.model.College;
import com.model.Question;
import com.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class QuestionAction extends ActionSupport{

	private String action;
	private String currentPage;
	private Question question;
	private User user;
	private College college;
	public User getUser() {
		return user;
	}


	public String getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public College getCollege() {
		return college;
	}


	public void setCollege(College college) {
		this.college = college;
	}


	public HttpServletRequest getRequest() {
		return request;
	}


	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}


	public Map getSession() {
		return session;
	}


	public void setSession(Map session) {
		this.session = session;
	}


	public String getAction() {
		return action;
	}


	public void setAction(String action) {
		this.action = action;
	}


	public Question getQuestion() {
		return question;
	}


	public void setQuestion(Question question) {
		this.question = question;
	}


	HttpServletRequest request = ServletActionContext.getRequest();
	Map session=ActionContext.getContext().getSession();
	
	//显示问题信息
	public String showQInfo(){
		System.out.println("进入QuestionAction:showQInfo");	    
		long qId=(long) request.getAttribute("question.qId");
        question=QuestionDAO.getQuestionInfo(qId);
        ArrayList aList=AnswerDAO.getQueAnswer(qId);
        user=UserDao.showUserInfo(question.getUserId());
        if(aList.size()==0)
        	request.setAttribute("aList", null);
        else 
        	request.setAttribute("aList", aList);
		request.setAttribute("currentPage",currentPage);
        request.setAttribute("college", college);
        request.setAttribute("user",user);
        request.setAttribute("question", question);
        if(session.get("userId")!=null){
        	User u=UserDao.showUserInfo(session.get("userId").toString());
        	request.setAttribute("Suser",u);
        }
        else
        	request.setAttribute("Suser",null);
		return SUCCESS;
	}
	
	//删除问题
	public String delPosts(){
		System.out.println("进入QuestionAction:delPosts");    
		long qId=(long) request.getAttribute("question.qId");
		college.setcName(request.getAttribute("college.cName").toString());
		if(QuestionDAO.deleteQuestion(qId))
			System.out.println("删除成功");
		else
			System.out.println("删除失败");
		request.setAttribute("currentPage",currentPage);
		request.setAttribute("college.cName", college.getcName());
		return SUCCESS;
	}
}
