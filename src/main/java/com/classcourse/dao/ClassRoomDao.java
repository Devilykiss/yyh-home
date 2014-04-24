package com.classcourse.dao;

import java.util.List;

import com.classcourse.domain.ClassRoom;


public interface ClassRoomDao {
	public void saveClassRoom(ClassRoom cr);
	public List<ClassRoom> queryClassRoomList();
}
