<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
 <title>收费信息</title>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<script type="text/javascript">
  //编写自定义JS代码
  </script>
</head>
<body>
<table align="center">
<div region="center" style="padding:100px;border:200px;font-size:30px" titile="收费信息">
<t:formvalid formid="formobj" dialog="false" usePlugin="password" layout="table" action="syspriceProController.do?goAdd" tiptype="1">
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
					      						class="Wdate" onClick="WdatePicker()" datatype="*" >    
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
				<tr>
				<td class="value">
                   <input id="baocun" name="baocun" type="submit" class="inputxt"/>
                   <span class="validform_checktip"></span>
                   <lable class="validform_lable" style="display: none;">保存 </lable>
          </td>          
  </tr>
  <tr>
<td>  
 <input type="reset" value="重置" size="30"/><br><br>
 </td>
 </tr>

			</table>
		</t:formvalid>
  </div>
</table>
</body>
 <script src = "webpage/com/jeecg/chargename/syspricePro.js"></script>	
   <div class="easyui-layout" fit="true">
   <div region="center" style="padding:0px;border:0px;font_size:30px">
   <t:datagrid name="syspriceProList" checkbox="true" fitColumns="false" title="收费表" actionUrl="syspriceProController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="350"></t:dgCol>
   <t:dgCol title="姓名"  field="priName"   query="true" queryMode="single"  width="350"></t:dgCol>
   <t:dgCol title="收费名称"  field="priProject"   query="true" queryMode="single" dictionary="  " width="350"></t:dgCol>
   <t:dgCol title="金额"  field="priPrice"   query="true" queryMode="single"  width="350"></t:dgCol>
   <t:dgCol title="操作员"  field="priCaozuoyuan"   query="true" queryMode="single"  width="350"></t:dgCol>
   <t:dgCol title="操作日期"  field="priDate" formatter="yyyy-MM-dd"  query="true" queryMode="group"  width="350"></t:dgCol>
   <t:dgCol title="备注"  field="priRemark"   query="true" queryMode="single"  width="350"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="200"></t:dgCol>
   <%-- <t:dgToolBar title="录入" icon="icon-add" url="syspriceProController.do?goAdd" funname="add"></t:dgToolBar> --%>
   <t:dgDelOpt title="删除" url="syspriceProController.do?doDel&id={id}" />
   <t:dgToolBar title="编辑" icon="icon-edit" url="syspriceProController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="syspriceProController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="syspriceProController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
 </div>
 <script src = "webpage/com/jeecg/chargename/syspriceProList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 			$("#syspriceProListtb").find("input[name='priDate_begin']").attr("class","Wdate").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#syspriceProListtb").find("input[name='priDate_end']").attr("class","Wdate").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 });
 
   
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'syspriceProController.do?upload', "syspriceProList");
}

//导出
function ExportXls() {
	JeecgExcelExport("syspriceProController.do?exportXls","syspriceProList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("syspriceProController.do?exportXlsByT","syspriceProList");
}
 </script>