package com.footing.website.modules.sys.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.footing.website.common.service.CrudService;
import com.footing.website.common.utils.CacheUtils;
import com.footing.website.modules.entity.Dict;
import com.footing.website.modules.sys.dao.DictDao;
import com.footing.website.modules.sys.utils.DictUtils;

/**
 * 字典Service
 */
@Service
@Transactional(readOnly = true)
public class DictService extends CrudService<DictDao, Dict> {
	
	/**
	 * 查询字段类型列表
	 * @return
	 */
	public List<String> findTypeList(){
		return dao.findTypeList(new Dict());
	}

	@Transactional(readOnly = false)
	public void save(Dict dict) {
		super.save(dict);
		CacheUtils.remove(DictUtils.CACHE_DICT_MAP);
	}

	@Transactional(readOnly = false)
	public void delete(Dict dict) {
		super.delete(dict);
		CacheUtils.remove(DictUtils.CACHE_DICT_MAP);
	}
	/**
	 * 
	 * <p>
	 * Description:查询字段类型列表<br />
	 * </p>
	 * @author yubin
	 * @version 0.1 2016年3月2日
	 * @param typeCode
	 * @return
	 * List<String>
	 */
	public List<String> findDescriptionByTypeCode( String typeCode){
		return dao.findDescriptionByTypeCode(typeCode);
	}

}
