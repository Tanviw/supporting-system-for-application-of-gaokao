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
	
	//����רҵ������Ϣ����������רҵ���࣬��HashMap<String,ArrayList>
	public String showClassMajor(){
		System.out.println("����רҵ���༰��רҵ��ʾAction��");
		HashMap<String,ArrayList> classMajor=MajorDao.transClassMajor();
		System.out.println("���ݿ������ɣ�");
		
		System.out.println("�û����ˣ�"+userAction);
		if(requestedMajor!=null)
			System.out.println("�û��鿴��רҵ");
		else
			System.out.println("�û���ʼ�������");
		
		request.setAttribute("userAction", userAction);
		request.setAttribute("classMajor",classMajor);
		request.setAttribute("requestedMajor", requestedMajor);
		request.setAttribute("galList", galList);
		
		return SUCCESS;
	}
	//��ʾרҵ������Ϣ
	public String displayMajorInfo(){
		System.out.println("������ʾ����רҵ��ϢAction��");
		//��ǰ̨�õ��û���Ҫ����רҵ����
		String mName=major.getmName();
		System.out.println("�û������רҵ���֣�"+mName);
		
	    Major requestedMajor=MajorDao.transMajorInfo(mName);
	    setUserAction("displayMajorInfo");
	    setRequestedMajor(requestedMajor);
	    //request.setAttribute("userAction", "displayMajorInfo");
	    //request.setAttribute("requestedMajor", requestedMajor);
	    System.out.println("����̨רҵ��Ϣ������ɣ�");
		return SUCCESS;
	}
	
	public String displayGalRank(){
		ArrayList<Major> galList=MajorDao.transGalList();
		setUserAction("displayGalRank");
		setGalList(galList);
		System.out.println("����̨н������������ɣ�");
		return SUCCESS;
	}
}
