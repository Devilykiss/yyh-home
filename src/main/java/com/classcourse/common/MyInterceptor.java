package com.classcourse.common;


import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class MyInterceptor implements Interceptor {
	
	/**
	 *  MyInterceptor
	 */
	private static final long serialVersionUID = 20144191800L;
	
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> currentSession = ActionContext.getContext().getSession();
		
		if(currentSession.get(Globals.TEACHER) == null && currentSession.get(Globals.STUDENT) == null ){
			// return Action.LOGIN;
			return invocation.invoke();
		}else{
			// bug 任何一类账号登录都可以访问其他类型账号的信息
			// 例如：学生登录后 可以访问老师的信息
			return invocation.invoke();
		}
	}
	
	public void destroy() {
		
	}

	public void init() {
		
	}
}
