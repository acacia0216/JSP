package kr.co.bit.day5;

import java.util.Arrays;

public class MemberVO {
	private String id;
	private String pw;
	private String name;
	private String zip1;
	private String add1;
	private String add2;
	private String email;
	private String[] langs;
	private String tool;
	private String project;
	
	
	public MemberVO() {
		super();
	}


	public MemberVO(String id, String pw, String name, String zip1, String add1, String add2, String email,
			String[] langs, String tool, String project) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.zip1 = zip1;
		this.add1 = add1;
		this.add2 = add2;
		this.email = email;
		this.langs = langs;
		this.tool = tool;
		this.project = project;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getZip1() {
		return zip1;
	}


	public void setZip1(String zip1) {
		this.zip1 = zip1;
	}



	public String getAdd1() {
		return add1;
	}


	public void setAdd1(String add1) {
		this.add1 = add1;
	}


	public String getAdd2() {
		return add2;
	}


	public void setAdd2(String add2) {
		this.add2 = add2;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String[] getLangs() {
		return langs;
	}


	public void setLangs(String[] langs) {
		this.langs = langs;
	}


	public String getTool() {
		return tool;
	}


	public void setTool(String tool) {
		this.tool = tool;
	}


	public String getProject() {
		return project;
	}


	public void setProject(String project) {
		this.project = project;
	}


	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", name=" + name + ", zip1=" + zip1 + ", add1="
				+ add1 + ", add2=" + add2 + ", email=" + email + ", langs=" + Arrays.toString(langs) + ", tool=" + tool
				+ ", project=" + project + "]";
	}


	

	
	
	
}


