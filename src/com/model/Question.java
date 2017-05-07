package com.model;

import java.sql.Timestamp;

public class Question {
	private long qId; 
	private String cId;
	private String cName;
	private String userId;
	private int numOfAn;
	private String title;
	private String context;
	private Timestamp datetime;
	private int numOfClick;
	
	
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public long getqId() {
		return qId;
	}
	public void setqId(long qId) {
		this.qId = qId;
	}
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
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
	public Timestamp getDatetime() {
		return datetime;
	}
	public void setDatetime(Timestamp datetime) {
		this.datetime = datetime;
	}
	public int getNumOfClick() {
		return numOfClick;
	}
	public void setNumOfClick(int numOfClick) {
		this.numOfClick = numOfClick;
	}
	
}
