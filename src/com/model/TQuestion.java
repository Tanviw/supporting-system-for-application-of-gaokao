package com.model;

import java.sql.Timestamp;

public class TQuestion {

	private long qId; 
	private String classId;
	private String userId;
	private int numOfAn;
	private String title;
	private String context;
	private Timestamp qTime;
	private int numOfClick;
	private String className;
	
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public long getqId() {
		return qId;
	}
	public void setqId(long qId) {
		this.qId = qId;
	}
	public String getClassId() {
		return classId;
	}
	public void setClassId(String classId) {
		this.classId = classId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getNumOfAn() {
		return numOfAn;
	}
	public void setNumOfAn(int numOfAn) {
		this.numOfAn = numOfAn;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public Timestamp getqTime() {
		return qTime;
	}
	public void setqTime(Timestamp qTime) {
		this.qTime = qTime;
	}
	public int getNumOfClick() {
		return numOfClick;
	}
	public void setNumOfClick(int numOfClick) {
		this.numOfClick = numOfClick;
	}
}
