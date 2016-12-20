package com.jeecg.pricename.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.lang.String;
import java.lang.Double;
import java.lang.Integer;
import java.math.BigDecimal;
import javax.xml.soap.Text;
import java.sql.Blob;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.SequenceGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

/**   
 * @Title: Entity
 * @Description: 收费名称
 * @author onlineGenerator
 * @date 2016-12-16 14:49:11
 * @version V1.0   
 *
 */
@Entity
@Table(name = "Sys_priceName", schema = "")
@SuppressWarnings("serial")
public class SysPricenameEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**培训费*/
	@Excel(name="培训费")
	private java.lang.Double traincostName;
	/**补考费*/
	@Excel(name="补考费")
	private java.lang.Double resitcostName;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  主键
	 */
	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")
	@Column(name ="ID",nullable=false,length=36)
	public java.lang.String getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  主键
	 */
	public void setId(java.lang.String id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  培训费
	 */
	@Column(name ="TRAINCOST_NAME",nullable=true,length=50)
	public java.lang.Double getTraincostName(){
		return this.traincostName;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  培训费
	 */
	public void setTraincostName(java.lang.Double traincostName){
		this.traincostName = traincostName;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  补考费
	 */
	@Column(name ="RESITCOST_NAME",nullable=true,length=50)
	public java.lang.Double getResitcostName(){
		return this.resitcostName;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  补考费
	 */
	public void setResitcostName(java.lang.Double resitcostName){
		this.resitcostName = resitcostName;
	}
}
