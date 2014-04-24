package com.classcourse.dao;

import java.util.List;

import com.classcourse.domain.Syllabus;

public interface SyllabusDao {

	public void saveSyllabus(Syllabus syb);

	public List<Syllabus> findSyllabusById(Integer userID);

}
