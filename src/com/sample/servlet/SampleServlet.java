package com.sample.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

@WebServlet(name="SampleServlet", 
			urlPatterns={"/sample.view"}/*, 
			initParams={
				@WebInitParam(name="param1", value="value1"),
				@WebInitParam(name="param2", value="value2"),
			}, 
			loadOnStartup=1*/)
public class SampleServlet extends HttpServlet{
/*public class Sample extends GenericServlet{*/
	
	//Log4j宣告
	static private Logger logger = Logger.getLogger(SampleServlet.class);
	private String id;
	private String name;
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		super.init();
		
		//取得log4j預設設定檔
		/*BasicConfigurator.configure();*/
		
		id = "無資料";
		name = "無資料";
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//頁面設定
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		//取得參數
		id = req.getParameter("id");
		name = req.getParameter("name");
		
		//寫入Log4j
		logger.debug("id=" + id + "&name=" + name);
		logger.info("id=" + id + "&name=" + name);
		logger.warn("id=" + id + "&name=" + name);
		logger.error("id=" + id + "&name=" + name);
		logger.fatal("id=" + id + "&name=" + name);
		
		//帶入參數
		req.setAttribute("id", id);
		req.setAttribute("name", name);
		
		//印出設定
		/*PrintWriter writer = resp.getWriter();*/
		
		//轉頁
		doForward(req, resp, "result.jsp");
		/*resp.sendRedirect("result.jsp?id=Presto&name=中文");*/
	}
	
	@Override
	public void destroy() {
		super.destroy();
	}
	
	//Forward轉頁
	private void doForward(HttpServletRequest req, HttpServletResponse resp, 
						   String uri) {
		RequestDispatcher dispatcher = req.getRequestDispatcher(uri);
		try {
			dispatcher.forward(req, resp);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
