package com.sample.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SimpleTag extends SimpleTagSupport {
	
	private int id;
	private String name;
	
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

	@Override
	public void doTag() throws JspException, IOException {
		
		int newid;
		String newname;
		newid = this.id;
		newname = this.name;
		
		JspWriter out = getJspContext().getOut();
		out.println("Hello Simple Tag.<br />");
		out.println("id=" + this.id + "&name=" + this.name + "<br />");
		out.println("newid=" + newid + "&newname=" + newname + "<br />");
	}

}