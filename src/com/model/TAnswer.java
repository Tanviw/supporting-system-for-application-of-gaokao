package com.model;

import java.sql.Timestamp;

public class TAnswer {

	private long aId;
	private long qId;
	private String classId;
	private String userId;
	private String context;
	private Timestamp aTime;
	private int numOfPraise;
	public long getaId() {
		return aId;
	}
	public void setaId(long aId) {
		this.aId = aId;
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
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public Timestamp getaTime() {
		return aTime;
	}
	public void setaTime(Timestamp aTime) {
		this.aTime = aTime;
	}
	public int getNumOfPraise() {
		return numOfPraise;
	}
	public void setNumOfPraise(int numOfPraise) {
		this.numOfPraise = numOfPraise;
	}
}
