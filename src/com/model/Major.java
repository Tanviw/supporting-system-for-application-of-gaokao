package com.model;

import java.util.ArrayList;
import java.util.HashMap;

public class Major {

	private String mId;
	private String mName;
	private String info;//�ı����ӣ�רҵ����
	private String forward;//�ı����ӣ���ҵǰ��
	private int gallery;//н��
	//private ArrayList<String> collegeList;//�����ѧ�б�
	//private HashMap majorRank;//��רҵ�Ĵ�ѧ���У�IntegerΪ������String��ʽΪ��ѧ����
	private String mainCourses;
	private String majorRank;
	
	

	
	public String getMajorRank() {
		return majorRank;
	}
	public void setMajorRank(String majorRank) {
		this.majorRank = majorRank;
	}
	public String getMainCourses() {
		return mainCourses;
	}
	public void setMainCourses(String mainCourses) {
		this.mainCourses = mainCourses;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getForward() {
		return forward;
	}
	public void setForward(String forward) {
		this.forward = forward;
	}
	public int getGallery() {
		return gallery;
	}
	public void setGallery(int gallery) {
		this.gallery = gallery;
	}

	
}
