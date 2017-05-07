package com.action;

import com.model.TQuestion;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.DAO.AnswerDAO;
import com.DAO.TAnswerDAO;
import com.model.Classify;
import com.model.TAnswer;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TAnswerAction extends ActionSupport {

	private TAnswer tanswer;
	private TQuestion tquestion;
	private Classify classify;
	private String currentPage;
	
	HttpServletRequest request = ServletActionContext.getRequest();
	Map session=ActionContext.getContext().getSession();
	
	
	

	public TQuestion getTquestion() {
		return tquestion;
	}

	public void setTquestion(TQuestion tquestion) {
		this.tquestion = tquestion;
	}

	public Classify getClassify() {
		return classify;
	}

	public TAnswer getTanswer() {
		return tanswer;
	}

	public void setTanswer(TAnswer tanswer) {
		this.tanswer = tanswer;
	}

	public String getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}

	public void setClassify(Classify classify) {
		this.classify = classify;
	}

		//��ӻظ�
		public String addTReply(){
			System.out.println("����TAnswerAction:addTReply");
			System.out.println(tanswer.getqId());
			boolean result=TAnswerDAO.insertTAnswer(tanswer.getContext(), classify.getClassId(), tanswer.getUserId(), tanswer.getqId());
			if(result){
				tquestion=new TQuestion();
				tquestion.setqId(tanswer.getqId());
				request.setAttribute("currentPage",currentPage);
				request.setAttribute("classify.classId", classify.getClassId());
				request.setAttribute("tquestion.qId", tquestion.getqId());
				System.out.println("����ɹ�");
				return SUCCESS;
			}
			else{
				System.out.println("����ʧ��");
				return SUCCESS;
			}
		}
		
		//ɾ���ظ�
		public String delTReply(){
			System.out.println("����AnswerAction:delTReply");
			boolean result=TAnswerDAO.deleteTAnswer(tanswer.getaId(),tquestion.getqId() );
			System.out.println("result="+result);
			if(result){
				request.setAttribute("currentPage",currentPage);
				request.setAttribute("tquestion.qId", tquestion.getqId());
				request.setAttribute("classify.classId", classify.getClassId());
				System.out.println("ɾ���ɹ�");
				return SUCCESS;
			}
			else{
				System.out.println("ɾ��ʧ��");
				return SUCCESS;
			}
		}
		
		//����
		public String praiseT(){
			System.out.println("����AnswerAction:praiseT");
			boolean result=TAnswerDAO.updatePraiseT(tanswer.getaId());
			System.out.println("result="+result);
			if(result){
				request.setAttribute("currentPage",currentPage);
				request.setAttribute("tquestion.qId", tquestion.getqId());
				request.setAttribute("classify.classId", classify.getClassId());
				System.out.println("�޸ĳɹ�");
				return SUCCESS;
			}
			else{
				System.out.println("�޸�ʧ��");
				return SUCCESS;
			}
		}
}
