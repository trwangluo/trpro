package com.jeecg.entity.chargename;

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
 * @Description: 收费表
 * @author onlineGenerator
 * @date 2016-12-15 17:33:21
 * @version V1.0   
 *
 */
@Entity
@Table(name = "Sys_pricePro", schema = "")
@SuppressWarnings("serial")
public class SyspriceProEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**姓名*/
	@Excel(name="姓名")
	private java.lang.String priName;
	/**收费名称*/
	@Excel(name="收费名称")
	private java.lang.String priProject;
	/**金额*/
	@Excel(name="金额")
	private java.lang.Double priPrice;
	/**操作员*/
	@Excel(name="操作员")
	private java.lang.String priCaozuoyuan;
	/**操作日期*/
	@Excel(name="操作日期",format = "yyyy-MM-dd")
	private java.util.Date priDate;
	/**备注*/
	@Excel(name="备注")
	private java.lang.String priRemark;
	
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
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  姓名
	 */
	@Column(name ="PRI_NAME",nullable=false,length=32)
	public java.lang.String getPriName(){
		return this.priName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  姓名
	 */
	public void setPriName(java.lang.String priName){
		this.priName = priName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  收费名称
	 */
	@Column(name ="PRI_PROJECT",nullable=false,length=32)
	public java.lang.String getPriProject(){
		return this.priProject;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  收费名称
	 */
	public void setPriProject(java.lang.String priProject){
		this.priProject = priProject;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  金额
	 */
	@Column(name ="PRI_PRICE",nullable=false,length=32)
	public java.lang.Double getPriPrice(){
		return this.priPrice;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  金额
	 */
	public void setPriPrice(java.lang.Double priPrice){
		this.priPrice = priPrice;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  操作员
	 */
	@Column(name ="PRI_CAOZUOYUAN",nullable=false,length=32)
	public java.lang.String getPriCaozuoyuan(){
		return this.priCaozuoyuan;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  操作员
	 */
	public void setPriCaozuoyuan(java.lang.String priCaozuoyuan){
		this.priCaozuoyuan = priCaozuoyuan;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  操作日期
	 */
	@Column(name ="PRI_DATE",nullable=false,length=32)
	public java.util.Date getPriDate(){
		return this.priDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  操作日期
	 */
	public void setPriDate(java.util.Date priDate){
		this.priDate = priDate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  备注
	 */
	@Column(name ="PRI_REMARK",nullable=true,length=32)
	public java.lang.String getPriRemark(){
		return this.priRemark;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  备注
	 */
	public void setPriRemark(java.lang.String priRemark){
		this.priRemark = priRemark;
	}
}
