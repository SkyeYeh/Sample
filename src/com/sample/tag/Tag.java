package com.sample.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class Tag extends TagSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int myId;
	private String name;
	
	public void setMyId(int myId) {
		this.myId = myId;
	}

	public int getMyId() {
		return myId;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	@Override
	public int doStartTag() throws JspException {
		
		JspWriter out = pageContext.getOut();
		try {
			out.println("Sample Tag.");
			out.println("myId=" + this.myId + "&name=" + this.name);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return SKIP_BODY;
//		return EVAL_BODY_INCLUDE;
	}
	
	@Override
	public int doAfterBody() throws JspException {
		return SKIP_BODY;
//		return EVAL_BODY_AGAIN;
	}
	
	@Override
	public int doEndTag() throws JspException {
//		return SKIP_PAGE;
		return EVAL_PAGE;
	}
	
	@Override
	public void release() {
		super.release();
	}

}