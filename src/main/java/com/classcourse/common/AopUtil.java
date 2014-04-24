package com.classcourse.common;


import org.apache.log4j.Logger;

import com.classcourse.dao.BaseDao;

public class AopUtil extends BaseDao {
private static Logger logger = Logger.getLogger(AopUtil.class);
	
	public void errorLog(RuntimeException e)	{
		logger.error(e.getMessage(), e);
	}
}
