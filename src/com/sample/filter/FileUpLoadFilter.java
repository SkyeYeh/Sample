package com.sample.filter;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebFilter(filterName="FileUpLoadFilter", urlPatterns="*.fileupload")
public class FileUpLoadFilter implements Filter {

	private String renamed;
	private String filedesc;
	private String target;
	private final String projectPath = "D:/workspace/Sample/";
	
	@Override
	public void destroy() {}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain arg2) throws IOException, ServletException {
		
		//檢查Request是否為檔案上傳格式
		boolean isMultipart = 
				ServletFileUpload.isMultipartContent((HttpServletRequest)req);
		if (!isMultipart) {
			System.out.println("Not a multipart");
		}
		
		//創建檔案Factory
		FileItemFactory factory = new DiskFileItemFactory();

		//創建檔案上傳處理程序
		ServletFileUpload upload = new ServletFileUpload(factory);

		//解析Request
		List<?> items = null;
		try {
			items = upload.parseRequest((HttpServletRequest)req);
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
		
		//檔案上傳進程
		Iterator<?> iter = items.iterator();
		FileItem item = null;
		while (iter.hasNext()) {
		    item = (FileItem) iter.next();
		    
		    //處理檔案描述欄位
		    if (item.isFormField()) {
		    	if ("renamed".equals(item.getFieldName())) {
		    		this.renamed = item.getString("UTF-8");
		    	} else if ("filedesc".equals(item.getFieldName())) {
		    		this.filedesc = item.getString("UTF-8");
		    	} else if ("target".equals(item.getFieldName())) {
		    		this.target = item.getString("UTF-8");
		    	}
		    } else {
		    	//處理上傳的檔案
		    	if("file".equals(item.getFieldName())) {
		    		
		    		//儲存上傳之檔案
		    		File savedFile = 
		    				new File(this.projectPath + item.getName());
//		    		String realPath = request.getSession(true).getServletContext().getRealPath("/")+
		    		
		    		try {
		    			item.write(savedFile);
		    		} catch (Exception e) {
		    			System.out.println("cannot save the uploaded file.");
		    		}
		    	}
		    }
		}
		
		System.out.println("renamed=" + this.renamed + "&filedesc=" + filedesc 
				+ "&target=" + target);
		
		doForward(req, resp, "fileupload");
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {}

	//Forward轉頁
	private void doForward(ServletRequest req, ServletResponse resp, 
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
