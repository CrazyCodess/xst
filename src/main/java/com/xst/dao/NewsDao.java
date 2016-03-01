package com.xst.dao;

import com.xst.entity.V9News;
import com.xst.page.Page;
import com.xst.page.PageHandler;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 
 * @author CrazyCodess
 *
 */
 @Repository("newsDao")
public class NewsDao  extends BaseDao {
	@Autowired
	private PageHandler<V9News> newsPageHandler;

	/**
	 * 根据新闻Id返回新闻类
	 * @param id
	 * @return
     */
	public V9News getById(int id){
		return get(V9News.class,id);
	}

	/**
	 * 查询所有的news
	 * @return
     */
	public List<V9News> queryForNewsList(){
		String hql="from V9News as news order by news.listorder desc,news.updatetime desc";
		Query query = query(hql);
		return query.list();
	}

	/**
	 * 查询所有的news,分页
	 * @param pageNum 页码
	 * @param pageSize 页框
     * @return
     */
	public Page<V9News> queryForNewsListByPage(int pageNum , int pageSize) {
		String hql="from V9News as news where news.thumb!='' order by news.listorder desc,news.updatetime desc ";
		Query query = query(hql);
		Page<V9News> newsPage = newsPageHandler.getPage(pageNum, pageSize, V9News.class, query);
		return newsPage;
	}
}
