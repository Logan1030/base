package com.footing.website.modules.test.dao;

import com.footing.website.common.persistence.TreeDao;
import com.footing.website.common.persistence.annotation.MyBatisDao;
import com.footing.website.modules.test.entity.TestTree;

/**
 * 树结构生成DAO接口
 * @author Footing
 * @version 2016-03-14
 */
@MyBatisDao
public interface TestTreeDao extends TreeDao<TestTree> {
	
}