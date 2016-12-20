<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>收费表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="false" usePlugin="password" layout="table" action="syspriceProController.do?doAdd" tiptype="1" >
					<input id="id" name="id" type="hidden" value="${syspriceProPage.id }">
		<table  align="center" style="width: 1000px;" cellpadding="1" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							姓名:
						</label>
					</td>
					<td class="value">
					     	 <input id="priName" name="priName" type="text" style="width: 150px" class="inputxt"  datatype="*">
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">姓名</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							收费名称:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="priProject" type="list"
									typeGroupCode="price" defaultVal="${syspriceProPage.priProject}" hasLabel="true"  title=""></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;"></label>
						</td>
						</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							金额:
						</label>
					</td>
					<td class="value">
					     	 <input id="priPrice" name="priPrice" type="text" style="width: 150px" class="inputxt"  datatype="*">
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">金额</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							操作员:
						</label>
					</td>
					<td class="value">
					     	 <input id="priCaozuoyuan" name="priCaozuoyuan" type="text" style="width: 150px" class="inputxt"  datatype="*">
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">操作员</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							操作日期:
						</label>
					</td>
					<td class="value">
							   <input id="priDate" name="priDate" type="text" style="width: 150px" 
					      						class="Wdate" onClick="WdatePicker()"
datatype="*"
								               >    
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">操作日期</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							备注:
						</label>
					</td>
					<td class="value">
					     	 <input id="priRemark" name="priRemark" type="text" style="width: 150px" class="inputxt" >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">备注</label>
						</td>
				</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/chargename/syspricePro.js"></script>	
  