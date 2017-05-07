package com.action;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.DAO.AnswerDAO;
import com.DAO.ClassifyDAO;
import com.DAO.CollegeDao;
import com.DAO.QuestionDAO;
import com.DAO.TAnswerDAO;
import com.DAO.TQuestionDAO;
import com.DAO.UserDao;
import com.model.Classify;
import com.model.College;
import com.model.TQuestion;
import com.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TQuestionAction extends ActionSupport {

	private TQuestion tquestion;
	private String action;
	private Classify classify;
	private String currentPage;
	public Classify getClassify() {
		return classify;
	}

	public void setClassify(Classify classify) {
		this.classify = classify;
	}

	public String getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}

	private User user;
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public TQuestion getTquestion() {
		return tquestion;
	}

	
	public void setTquestion(TQuestion tquestion) {
		this.tquestion = tquestion;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	HttpServletRequest request = ServletActionContext.getRequest();
	Map session=ActionContext.getContext().getSession();
	
	
	public String displayT(){
		// ��ʾרҵ�����ʾ��������
			System.out.println("����TQuestionAction:displayT");
//��ʾ����&��������			ArrayList hqList=TQuestionDAO.showHotQuestion();
//			request.setAttribute("hqList", hqList);
			
//			ArrayList nqList=TQuestionDAO.showNewQuestion();
//			request.setAttribute("nqList", nqList);
			
			ArrayList clList=TQuestionDAO.showClassify();
			request.setAttribute("clList", clList);
			if(classify.getClassId().equals("all")){//--��ʾ����רҵ���
				setAction("");	
				request.setAttribute("action", action);
				ArrayList allclList=ClassifyDAO.showAllClassify();
				request.setAttribute("allclList", allclList);
			}
			else if(!classify.getClassId().equals("index")){//--�����ض�רҵ���
				setAction("displayT");	
				request.setAttribute("action", action);
				if(classify.getClassId().equals("searchC")){//���Ҹ�רҵ����רҵ���
					System.out.println("���������...");
					classify.setClassId(ClassifyDAO.namegetClassId(classify.getClassName()));
				}
				if(classify.getClassId()!=null){
					System.out.println("�ҵ�רҵ����");
					int currentPage=0;
					String cp=request.getAttribute("currentPage").toString();
					currentPage=Integer.parseInt(cp);
					Classify c=TQuestionDAO.getClassQuestion(classify.getClassId(),currentPage,tquestion.getTitle());
					request.setAttribute("keywordOfQ", tquestion.getTitle());
					request.setAttribute("totalCount", c.getTotalCount());
					if(c.getTqList().size()==0)
						request.setAttribute("questions", null);
					else{
						request.setAttribute("currentPage",currentPage);
						request.setAttribute("totalPages", c.getTotalPages());
						request.setAttribute("questions", c.getTqList());
					}
					c.setClassName(ClassifyDAO.getClassName(c.getClassId()));
					System.out.println("className="+c.getClassName());
					request.setAttribute("className", c.getClassName());
					request.setAttribute("classId", c.getClassId());
				}
				else{
					System.out.println("δ�ҵ�רҵ����");
					request.setAttribute("keywordOfQ", tquestion.getTitle());
					request.setAttribute("classId",null);
				}
			}
			else{
				setAction("");	
				request.setAttribute("action", action);
				request.setAttribute("index", new String("index"));
			}
			return SUCCESS;		
	}
	
	//�������
	   public String addTPosts(){
			System.out.println("����QuestionAction:addTPosts");
			long result=TQuestionDAO.insertTQuestion(tquestion.getTitle(), tquestion.getContext(), classify.getClassId(), user.getId());
			System.out.println("result="+result);
			if(result!=0){
				System.out.println("����ɹ�");
				tquestion.setqId(result);
				request.setAttribute("currentPage", currentPage);
				request.setAttribute("classify.classId", classify.getClassId());
				request.setAttribute("tquestion.qId", tquestion.getqId());
				return SUCCESS;
			}
			else{
				System.out.println("����ʧ��");
				return SUCCESS;
			}
		}
	
	//��ʾ������Ϣ
		public String showTQInfo(){
			System.out.println("����QuestionAction:showTQInfo");	    
			long qId=(long) request.getAttribute("tquestion.qId");
	        tquestion=TQuestionDAO.getTQuestionInfo(qId);
	        ArrayList taList=TAnswerDAO.getTQueAnswer(qId);
	        user=UserDao.showUserInfo(tquestion.getUserId());
	        if(taList.size()==0)
	        	request.setAttribute("taList", null);
	        else 
	        	request.setAttribute("taList", taList);
	        classify.setClassName(ClassifyDAO.getClassName(classify.getClassId()));
	        request.setAttribute("user",user);
	        request.setAttribute("tquestion", tquestion);
	        request.setAttribute("className", classify.getClassName());
			request.setAttribute("classId", classify.getClassId());
	        request.setAttribute("currentPage", currentPage);
	        if(session.get("userId")!=null){
	        	User u=UserDao.showUserInfo(session.get("userId").toString());
	        	request.setAttribute("Suser",u);
	        }
	        else
	        	request.setAttribute("Suser",null);
			return SUCCESS;
		}
	
		//ɾ������
		public String delTPosts(){
			System.out.println("����QuestionAction:delTPosts");    
			long qId=(long) request.getAttribute("tquestion.qId");
			if(TQuestionDAO.deleteTQuestion(qId))
				System.out.println("ɾ���ɹ�");
			else
				System.out.println("ɾ��ʧ��");
			tquestion.setTitle("Null");
			request.setAttribute("tquestion.title", tquestion.getTitle());
			request.setAttribute("currentPage",currentPage);
			request.setAttribute("classify.classId", classify.getClassId());
			return SUCCESS;
		}
}
