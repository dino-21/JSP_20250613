package com.dino.javabeans;

public class MemberBean {
	private String name;
	private String userid;

	public MemberBean(String name, String userid) {
		super();
		this.name = name;
		this.userid = userid;
	}
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "MemberBean [name=" + name + ", userid=" + userid + "]";
	}
	

	//매개변수가 없는 생성자 없으면 에러
	public MemberBean() {

	}

}
