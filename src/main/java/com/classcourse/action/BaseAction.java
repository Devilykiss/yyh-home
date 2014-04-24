package com.classcourse.action;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport{
	
	/**
	 *  
	 */
	private static final long serialVersionUID = 20144151357L;
	public static final String FAIL = "fail";
	
	Logger logger = Logger.getLogger(BaseAction.class);
	
	protected HttpServletRequest getRequest(){  
        return ServletActionContext.getRequest();  
    }  
      
	protected HttpServletResponse getResponse(){  
        return ServletActionContext.getResponse();  
    }  
      
	protected HttpSession getSession(){  
        return getRequest().getSession();  
    }  
	
	protected void outJson(String json){
		try {
			PrintWriter pw = getResponse().getWriter();
			pw.print(json);
			pw.flush();
			pw.close();
		} catch (IOException e) {
			logger.error(" MyInterceptor 输出json出错：");
			e.printStackTrace();
		}
	}
}
