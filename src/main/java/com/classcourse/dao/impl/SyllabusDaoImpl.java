package com.classcourse.dao.impl;

import java.util.List;

import com.classcourse.dao.BaseDao;
import com.classcourse.dao.SyllabusDao;
import com.classcourse.domain.Syllabus;

public class SyllabusDaoImpl extends BaseDao<Syllabus> implements SyllabusDao{

	@Override
	public void saveSyllabus(Syllabus syb) {
		this.save(syb);
	}

	@Override
	public List<Syllabus> findSyllabusById(Integer userID) {
		String hql = " from Syllabus where userID = ? ";
		return this.queryForList(hql,userID);
	}

	
}
