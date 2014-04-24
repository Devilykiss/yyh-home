package com.classcourse.dao.impl;

import java.util.List;

import com.classcourse.dao.BaseDao;
import com.classcourse.dao.ClassRoomDao;
import com.classcourse.domain.ClassRoom;

public class ClassRoomDaoImpl extends BaseDao<ClassRoom> implements ClassRoomDao{

	@Override
	public void saveClassRoom(ClassRoom cr) {
		this.save(cr);
	}

	@Override
	public List<ClassRoom> queryClassRoomList() {
		String hql = " from ClassRoom ";
		return this.queryForList(hql);
	}
	
}
