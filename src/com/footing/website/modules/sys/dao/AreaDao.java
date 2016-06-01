package com.footing.website.modules.sys.dao;

import com.footing.website.common.persistence.TreeDao;
import com.footing.website.common.persistence.annotation.MyBatisDao;
import com.footing.website.modules.entity.Area;

/**
 * 区域DAO接口
 */
@MyBatisDao
public interface AreaDao extends TreeDao<Area> {
	
}
