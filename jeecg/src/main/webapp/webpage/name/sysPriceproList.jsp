<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:0px;border:0px">
  <t:datagrid name="sysPriceproList" checkbox="true" fitColumns="false" title="收费表" actionUrl="sysPriceproController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="姓名"  field="priName"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="收费名称"  field="priProject"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="金额"  field="priPrice"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作员"  field="priCaozuoyuan"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作日期"  field="priDate" formatter="yyyy-MM-dd"   queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="备注"  field="priRemark"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="sysPriceproController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="sysPriceproController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="sysPriceproController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="sysPriceproController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="sysPriceproController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/com/jeecg/chargename/sysPriceproList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 			$("#sysPriceproListtb").find("input[name='priDate']").attr("class","Wdate").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 });
 
   
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'sysPriceproController.do?upload', "sysPriceproList");
}

//导出
function ExportXls() {
	JeecgExcelExport("sysPriceproController.do?exportXls","sysPriceproList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("sysPriceproController.do?exportXlsByT","sysPriceproList");
}
 </script>