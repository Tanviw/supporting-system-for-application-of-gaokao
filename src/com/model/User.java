package com.model;

import java.io.File;
import java.sql.Timestamp;

public class User {

	private String id;
	private String password;
	private int status;//���������״̬��0Ϊ����ˣ�1Ϊ���ͨ����2Ϊ��������� 3���δͨ��
	private int duty;//1Ϊ�߿�����2Ϊѧ��ѧ�㣬3Ϊ��ʦ��0Ϊ����Ա
	private String nickname;
	private String sex;
	private String cName;//��ѧ����
	private String mName;//רҵ����
	private int sYear;//��ѧ���
	private String name;//����
	private String type;//�ó�����
	private String career;//ְλ
	private String picSrc;//���ͼƬ·��

	private Timestamp requestTime;
	
	
	public Timestamp getRequestTime() {
		return requestTime;
	}
	public void setRequestTime(Timestamp requestTime) {
		this.requestTime = requestTime;
	}
	public String getPicSrc() {
		return picSrc;
	}
	public void setPicSrc(String picSrc) {
		this.picSrc = picSrc;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getsYear() {
		return sYear;
	}
	public void setsYear(int sYear) {
		this.sYear = sYear;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String toString()
	{
		return null;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getDuty() {
		return duty;
	}
	public void setDuty(int duty) {
		this.duty = duty;
	}
	
}
