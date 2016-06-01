package com.footing.website.modules.sys.dao;

import com.footing.website.common.persistence.TreeDao;
import com.footing.website.common.persistence.annotation.MyBatisDao;
import com.footing.website.modules.entity.Office;

/**
 * 机构DAO接口
 */
@MyBatisDao
public interface OfficeDao extends TreeDao<Office> {
	
}
