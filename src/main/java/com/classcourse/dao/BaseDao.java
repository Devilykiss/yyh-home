package com.classcourse.dao;

import java.io.Serializable;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


public class BaseDao<T> extends HibernateDaoSupport{
	Logger log = Logger.getLogger(BaseDao.class);
	
	
	public void save(T classInstance){
		log.debug("开始存入数据库");
		try{
			this.getHibernateTemplate().saveOrUpdate(classInstance);
			log.debug("保存修改成功");
		} catch (RuntimeException re) {
			log.error("保存失败", re);
			throw re;
		}
	}
	
	public  T queryForObject(Class<T> entityClass,Serializable id){
		return this.getHibernateTemplate().get(entityClass, id);
	}
	
	public List<T> queryForList(String hql){
		return queryForList(hql,(Object[]) null);
	}
	public List<T> queryForList(String hql,Object value){
		return queryForList(hql,new Object[]{value});
	}
	@SuppressWarnings("unchecked")
	public List<T> queryForList(String hql, Object... values){
		return (List<T>)this.getHibernateTemplate().find(hql, values);
	}
	
	@SuppressWarnings("unchecked")
	public T queryObjectLogin(String hql,Object... values){
		List<T> list = this.getHibernateTemplate().find(hql,values);
		if(list != null && list.size()>0)
			return (T)list.get(0);
		return null; 
	}
	
	public void deletObject(T entity){
		this.getHibernateTemplate().delete(entity);
	}
}
