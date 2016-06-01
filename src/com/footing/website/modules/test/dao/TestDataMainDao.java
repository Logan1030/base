package com.footing.website.modules.test.dao;

import com.footing.website.common.persistence.CrudDao;
import com.footing.website.common.persistence.annotation.MyBatisDao;
import com.footing.website.modules.test.entity.TestDataMain;

/**
 * 主子表生成DAO接口
 * @author Footing
 * @version 2016-03-14
 */
@MyBatisDao
public interface TestDataMainDao extends CrudDao<TestDataMain> {
	
}