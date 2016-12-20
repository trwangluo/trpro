package com.jeecg.pricename.service;
import com.jeecg.pricename.entity.SysPricenameEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface SysPricenameServiceI extends CommonService{
	
 	public void delete(SysPricenameEntity entity) throws Exception;
 	
 	public Serializable save(SysPricenameEntity entity) throws Exception;
 	
 	public void saveOrUpdate(SysPricenameEntity entity) throws Exception;
 	
}
