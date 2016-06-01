package com.footing.website.modules.sys.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.footing.website.common.service.BaseService;
import com.footing.website.common.service.TreeService;
import com.footing.website.modules.entity.Office;
import com.footing.website.modules.entity.User;
import com.footing.website.modules.sys.dao.OfficeDao;
import com.footing.website.modules.sys.utils.UserUtils;

/**
 * 机构Service
 */
@Service
@Transactional(readOnly = true)
public class OfficeService extends TreeService<OfficeDao, Office> {

	public List<Office> findAll(){
		return UserUtils.getOfficeList();
	}

	public List<Office> findList(Boolean isAll){
		if (isAll != null && isAll){
			return UserUtils.getOfficeAllList();
		}else{
			return UserUtils.getOfficeList();
		}
	}
	
	@Transactional(readOnly = true)
	public List<Office> findList(Office office){
		List<Office> officeList = new ArrayList<Office>();
		if(office != null){
			User user = UserUtils.getUser();
			if (user.isAdmin()){
				officeList = dao.findByParentIdsLike(office);
			}else{
				//获取当前用户有权限访问的部门
				office.getSqlMap().put("dsf", BaseService.dataScopeFilter(user, "a", ""));
				officeList = dao.findByParentIdsLike(office);
			}
		}
		return officeList;
	}
	
	@Transactional(readOnly = false)
	public void save(Office office) {
		super.save(office);
		UserUtils.removeCache(UserUtils.CACHE_OFFICE_LIST);
	}
	
	@Transactional(readOnly = false)
	public void delete(Office office) {
		super.delete(office);
		UserUtils.removeCache(UserUtils.CACHE_OFFICE_LIST);
	}
	
}
