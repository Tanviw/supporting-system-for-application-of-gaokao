package com.model;

import java.util.ArrayList;
import java.util.HashMap;

public class Major {

	private String mId;
	private String mName;
	private String info;//文本链接，专业介绍
	private String forward;//文本链接，就业前景
	private int gallery;//薪酬
	//private ArrayList<String> collegeList;//开设大学列表
	//private HashMap majorRank;//此专业的大学排行，Integer为排名，String格式为大学名称
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
