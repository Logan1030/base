package com.footing.website.modules.gen.dao;

import com.footing.website.common.persistence.CrudDao;
import com.footing.website.common.persistence.annotation.MyBatisDao;
import com.footing.website.modules.entity.GenTable;

/**
 * 业务表DAO接口
 */
@MyBatisDao
public interface GenTableDao extends CrudDao<GenTable> {
	
}
