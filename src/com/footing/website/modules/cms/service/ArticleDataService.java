package com.footing.website.modules.cms.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.footing.website.common.service.CrudService;
import com.footing.website.modules.cms.dao.ArticleDataDao;
import com.footing.website.modules.entity.ArticleData;

/**
 * 站点Service
 */
@Service
@Transactional(readOnly = true)
public class ArticleDataService extends CrudService<ArticleDataDao, ArticleData> {

}
