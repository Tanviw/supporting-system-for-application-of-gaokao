package com.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.DAO.AnswerDAO;
import com.DAO.CollegeDao;
import com.DAO.QuestionDAO;
import com.model.Answer;
import com.model.College;
import com.model.Question;
import com.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AnswerAction extends ActionSupport {

	private String action;
    private Answer answer;
    private Question question;
    private User user;
    private College college;
    private String currentPage;
    
	HttpServletRequest request = ServletActionContext.getRequest();
	Map session=ActionContext.getContext().getSession();
	
	public Answer getAnswer() {
		return answer;
	}
	public String getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}
	public College getCollege() {
		return college;
	}
	public void setCollege(College college) {
		this.college = college;
	}
	public void setAnswer(Answer answer) {
		this.answer = answer;
	}
	public Question getQuestion() {
		return question;
	}
	public void setQuestion(Question question) {
		this.question = question;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
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
	
	//点赞
	public String praise(){
		System.out.println("进入AnswerAction:praise");
		System.out.println(answer.getaId()+question.getqId());
		boolean result=AnswerDAO.updatePraise(answer.getaId());
		System.out.println("result="+result);
		if(result){
			request.setAttribute("currentPage",currentPage);
			request.setAttribute("question.qId", question.getqId());
			request.setAttribute("college.cName", college.getcName());
			System.out.println("修改成功");
			return SUCCESS;
		}
		else{
			System.out.println("修改失败");
			return SUCCESS;
		}
	}
	
	//添加回复
	public String addReply(){
		System.out.println("进入AnswerAction:addReply");
		System.out.println(answer.getqId());
		boolean result=AnswerDAO.insertAnswer(answer.getContext(),answer.getcId(),answer.getUserId(),answer.getqId());
		if(result){
			question=new Question();
			question.setqId(answer.getqId());
			request.setAttribute("currentPage",currentPage);
			request.setAttribute("college.cName", college.getcName());
			request.setAttribute("question.qId", question.getqId());
			System.out.println("插入成功");
			return SUCCESS;
		}
		else{
			System.out.println("插入失败");
			return SUCCESS;
		}
	}
	
	//删除回复
	public String delReply(){
		System.out.println("进入AnswerAction:delReply");
		System.out.println(answer.getaId()+question.getqId());
		boolean result=AnswerDAO.deleteAnswer(answer.getaId(),question.getqId());
		System.out.println("result="+result);
		if(result){
			request.setAttribute("currentPage",currentPage);
			request.setAttribute("question.qId", question.getqId());
			request.setAttribute("college.cName", college.getcName());
			System.out.println("删除成功");
			return SUCCESS;
		}
		else{
			System.out.println("删除失败");
			return SUCCESS;
		}
	}
}
