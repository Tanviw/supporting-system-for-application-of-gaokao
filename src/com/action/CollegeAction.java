package com.action;

import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.DAO.CollegeDao;
import com.DAO.QuestionDAO;
import com.DAO.UserDao;
import com.model.College;
import com.model.Question;
import com.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CollegeAction extends ActionSupport{

	private College college;
	private String action;
	private Question question;
	private User user;
	private String currentPage;
	
	
	HttpServletRequest request = ServletActionContext.getRequest();
	Map session=ActionContext.getContext().getSession();
	
	
	public String getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
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
	
	
	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String display(){
		//显示大学版块&热门大学
			System.out.println("进入CollegeyAction:display");
			ArrayList hotList=CollegeDao.showCollegeHot();
			request.setAttribute("hotList", hotList);
			if(college.getcName().equals("all")){//查看所有大学--
				setAction("");	
				request.setAttribute("action", action);
				ArrayList coList=CollegeDao.showAllCollege();
				request.setAttribute("collegeList", coList);
			}
			else if(!college.getcName().equals("index")){//进入特定大学--
				setAction("display");	
				request.setAttribute("action", action);
				boolean isChecked=CollegeDao.searchCollege(college.getcName());
				if(!isChecked){
					request.setAttribute("school", null);//无该大学
				}	
				else{
					int currentPage=0;
					String cp=request.getAttribute("currentPage").toString();
					currentPage=Integer.parseInt(cp);
					College c=CollegeDao.getCollegeQuestion(college.getcName(),currentPage,question.getTitle());
					request.setAttribute("keywordOfQ", question.getTitle());
					request.setAttribute("totalCount", c.getTotalCount());
					if(c.getqList().size()==0)
						request.setAttribute("questions", null);
					else{
						request.setAttribute("currentPage",currentPage);
						request.setAttribute("totalPages", c.getTotalPages());
						request.setAttribute("questions", c.getqList());
					}
					request.setAttribute("school", college.getcName());
				}
			}
			else if(session.get("userId")!=null&&session.get("duty").toString().equals("2")){//用户若为学长/学姐，进入所读大学--
				User u=UserDao.showUserInfo(session.get("userId").toString());
				setAction("display");	
				request.setAttribute("action", action);
				int currentPage=1;
				College c=CollegeDao.getCollegeQuestion(u.getcName(),currentPage,"Null");
				request.setAttribute("keywordOfQ", "Null");
				request.setAttribute("totalCount", c.getTotalCount());
				if(c.getqList().size()==0)
					request.setAttribute("questions", null);
				else{
					request.setAttribute("currentPage",currentPage);
					request.setAttribute("totalPages", c.getTotalPages());
					request.setAttribute("questions", c.getqList());
				}
				request.setAttribute("school", u.getcName());	
		    } 
			else{//显示热门大学的热门问题及最新问题--
				
				setAction("");	
				request.setAttribute("action", action);
				request.setAttribute("index", new String("index"));
			}
			return SUCCESS;
		}
	public String addPosts(){
		//在该大学版块发表帖子
		System.out.println("进入CollegeAction:addPosts");
		College c=CollegeDao.getCollegeInfo(college.getcName());
		System.out.println(question.getTitle()+question.getContext()+c.getcId()+user.getId());
		long result=QuestionDAO.insertQuestion(question.getTitle(), question.getContext(),c.getcId(), user.getId());
		System.out.println("result="+result);
		if(result!=0){
			System.out.println("插入成功");
			question.setqId(result);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("college.cName", college.getcName());
			request.setAttribute("question.qId", question.getqId());
			return SUCCESS;
		}
		else{
			System.out.println("插入失败");
			return SUCCESS;
		}

	}
	
	public String showRank(){
		//显示大学排行
		ArrayList rankList=CollegeDao.showRankOfCollege();
		request.setAttribute("rankList", rankList);
		return SUCCESS;
	}
	
	
}
