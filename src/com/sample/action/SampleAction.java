package com.sample.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.sample.model.User;

//使用Struts2 Convention plug-in時action="sample"
public class SampleAction {
	
	private int id;
	private String name;
	private User user;
	private static List<User> users = new ArrayList<User>();
	
	static {
		users.add(new User("0001", "Shon"));
		users.add(new User("0002", "Randy"));
		users.add(new User("0003", "Daniel"));
	}
	
	public SampleAction() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public List<User> getUsers() {
		return users;
	}

	//使用Struts2 Convention plug-in傳送資料
	public String execute() {
		System.out.println("convention - " + this.id);
		if (this.id == 1) {
			return "success";
		}
		if (this.id == 2) {
			return "result";
		} else {
			return "sample";
		}
	}
	
	//使用Struts2 XML傳遞資料
	public String executeXML() {
		System.out.println("xml - " + this.id);
		if (this.id == 1) {
			return "home";
		} else if (this.id == 2) {
			return "sample";
		} else if (this.id == 3) {
			return "result";
		} else {
			return "sample";
		}
	}
	
	//使用Struts2 Annotation傳送資料
	@Action(value="/annotation", 
			/*interceptorRefs={
				@InterceptorRef(params="name", value="timer")
			}, */
			results={
				@Result(name="home", location="/home.jsp"), 
				@Result(name="sample", location="/sample.jsp"), 
				@Result(name="result", location="/result.jsp")
			}
	)
	public String executeAnnotation() {
		System.out.println("annotation - " + this.id);
		if (this.id == 1) {
			return "home";
		} else if (this.id == 2) {
			return "sample";
		} else if (this.id == 3) {
			return "result";
		} else {
			return "sample";
		}
	}
}
