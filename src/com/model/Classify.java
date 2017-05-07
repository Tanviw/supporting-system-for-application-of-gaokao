package com.model;

import java.util.ArrayList;

public class Classify {

	private String classId;
	private String className;
    private ArrayList<TQuestion> tqList;
	
	private int totalPages,totalCount;
	
	public ArrayList<TQuestion> getTqList() {
		return tqList;
	}
	public void setTqList(ArrayList<TQuestion> tqList) {
		this.tqList = tqList;
	}
	public int getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public String getClassId() {
		return classId;
	}
	public void setClassId(String classId) {
		this.classId = classId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	
}
