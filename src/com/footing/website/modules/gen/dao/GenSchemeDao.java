package com.footing.website.modules.gen.dao;

import com.footing.website.common.persistence.CrudDao;
import com.footing.website.common.persistence.annotation.MyBatisDao;
import com.footing.website.modules.entity.GenScheme;

/**
 *  生成方案DAO接口
 */
@MyBatisDao
public interface GenSchemeDao extends CrudDao<GenScheme> {
	
}
