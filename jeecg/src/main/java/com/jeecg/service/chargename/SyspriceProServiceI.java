package com.jeecg.service.chargename;
import com.jeecg.entity.chargename.SyspriceProEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface SyspriceProServiceI extends CommonService{
	
 	public void delete(SyspriceProEntity entity) throws Exception;
 	
 	public Serializable save(SyspriceProEntity entity) throws Exception;
 	
 	public void saveOrUpdate(SyspriceProEntity entity) throws Exception;
 	
}
