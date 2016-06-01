package com.footing.website.modules.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.footing.website.common.persistence.Page;
import com.footing.website.common.service.CrudService;
import com.footing.website.common.utils.StringUtils;
import com.footing.website.modules.test.entity.TestDataMain;
import com.footing.website.modules.test.dao.TestDataMainDao;
import com.footing.website.modules.test.entity.TestDataChild;
import com.footing.website.modules.test.dao.TestDataChildDao;

/**
 * 主子表生成Service
 * @author Footing
 * @version 2016-03-14
 */
@Service
@Transactional(readOnly = true)
public class TestDataMainService extends CrudService<TestDataMainDao, TestDataMain> {

	@Autowired
	private TestDataChildDao testDataChildDao;
	
	public TestDataMain get(Long id) {
		TestDataMain testDataMain = super.get(id);
		testDataMain.setTestDataChildList(testDataChildDao.findList(new TestDataChild(testDataMain)));
		return testDataMain;
	}
	
	public List<TestDataMain> findList(TestDataMain testDataMain) {
		return super.findList(testDataMain);
	}
	
	public Page<TestDataMain> findPage(Page<TestDataMain> page, TestDataMain testDataMain) {
		return super.findPage(page, testDataMain);
	}
	
	@Transactional(readOnly = false)
	public void save(TestDataMain testDataMain) {
		super.save(testDataMain);
		for (TestDataChild testDataChild : testDataMain.getTestDataChildList()){
			// if (testDataChild.getId() == null){
			//	 continue;
			// }
			if (TestDataChild.DEL_FLAG_NORMAL.equals(testDataChild.getDelFlag())){
				if (testDataChild.getId() == null){
					testDataChild.setTestDataMain(testDataMain);
					testDataChild.preInsert();
					testDataChildDao.insert(testDataChild);
				}else{
					testDataChild.preUpdate();
					testDataChildDao.update(testDataChild);
				}
			}else{
				testDataChildDao.delete(testDataChild);
			}
		}
	}
	
	@Transactional(readOnly = false)
	public void delete(TestDataMain testDataMain) {
		super.delete(testDataMain);
		testDataChildDao.delete(new TestDataChild(testDataMain));
	}
	
}