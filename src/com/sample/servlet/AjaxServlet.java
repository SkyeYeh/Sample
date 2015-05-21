package com.sample.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="AjaxServlet", urlPatterns={"/ajax.view"})
public class AjaxServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String temp = (String) req.getParameter("temp");
		responseText(resp, "post!" + temp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String temp = (String) req.getParameter("temp");
		responseText(resp, "get!" + temp);
	}
	
	private void responseText(HttpServletResponse resp,String temp) {
		PrintWriter writer;
		try {
			writer = resp.getWriter();
			writer.print("<p>" + temp + "</p>");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
