package com.model;

import java.util.ArrayList;

public class College {

	private String cId;
	private String cName;
	private int techRank;
	private int mulRank;
	private String type;//type为1时显示理工类，2：文科类，3：综合类
	private String place;
	private String variety;//variety为1时显示985,2:211,3:本科
	private ArrayList<Question> qList;
	private int totalPages,totalCount;
	
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
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public int getTechRank() {
		return techRank;
	}
	public void setTechRank(int techRank) {
		this.techRank = techRank;
	}
	public int getMulRank() {
		return mulRank;
	}
	public void setMulRank(int mulRank) {
		this.mulRank = mulRank;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getVariety() {
		return variety;
	}
	public void setVariety(String variety) {
		this.variety = variety;
	}
	public ArrayList<Question> getqList() {
		return qList;
	}
	public void setqList(ArrayList<Question> qList) {
		this.qList = qList;
	}
	
	
	
	
}
