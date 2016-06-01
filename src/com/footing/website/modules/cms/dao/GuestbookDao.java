package com.footing.website.modules.cms.dao;

import com.footing.website.common.persistence.CrudDao;
import com.footing.website.common.persistence.annotation.MyBatisDao;
import com.footing.website.modules.entity.Guestbook;

/**
 * 留言DAO接口
 */
@MyBatisDao
public interface GuestbookDao extends CrudDao<Guestbook> {

}
