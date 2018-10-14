<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/js/public.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		$(function(){
			$('#dg').datagrid({    
			    url:'${path}/list', 
			    toolbar: '#tb',
			    fitColumns:true,
			    pagination:true,
			    pageSize:3,
			    pageList:[3,6,9],
			    columns:[[    
			        {field:'id',title:'编号',width:100},    
			        {field:'fname',title:'房型',width:100},    
			        {field:'lc',title:'楼层',width:100},    
			        {field:'fjztname',title:'房间状态',width:100},    
			        {field:'fjjg',title:'房间价格',width:100},    
			         {field:'img',title:'房间照片',width:100,formatter: function(value){
						if (null!=value && value!='') {
							return "<img src='"+value+"' width='80px' height='60px'>";
						} else {
							return '图片不存在';
						}
					} 
				}    
			    ]]    
			});  

		})
		
		function add(){
			$('#win_add').window({    
			    width:600,    
			    height:400,    
			    modal:true,   
			    href:'${path}/toadd'
			});  
		}
		
		function update(){
			var rows = $('#dg').datagrid('getSelections');    
			if (rows.length==0) {
				$.messager.alert('警告','请选择数据');    
			} else if (rows.length>1) {
				$.messager.alert('警告','只能选择一条数据');    
			} else {
				$('#win_update').window({    
				    width:600,    
				    height:400,    
				    modal:true,   
				    href:'${path}/toupdate'
				});  
			}
		}
		
		function sc() {
			var rows = $('#dg').datagrid('getSelections');   
			if (rows.length==0) {
				$.messager.alert('警告','请选择数据');    
			} else {
				var ids = "";
				for (var i = 0; i < rows.length; i++) {
					ids+=","+rows[i].id
				}
				ids=ids.substring(1);
				$.messager.confirm('确认','您确认想要删除记录吗？',function(r){    
				    if (r){    
				        $.post("${path}/del",{ids:ids},function(obj){
				        	if (obj) {
				        		$.messager.alert('警告','删除成功');
				        		$('#dg').datagrid('reload');    // 重新载入当前页面数据  
							} else {
								$.messager.alert('警告','删除失败');
							}
				        },"json")   
				    }    
				});  
				
			}
		}
		
		function daochu(){
			location="${path}/daochu";
		}
	</script>
	
	<table id="dg"></table> 
	<div id="tb">
	<a href="#" onclick="add()" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">添加</a>
	<a href="#" onclick="sc()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</a>
	<a href="#" onclick="update()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">修改</a>
	<a href="#" onclick="daochu()"  class="easyui-linkbutton" data-options="iconCls:'icon-print',plain:true">导出</a>
	</div>
	<div id="win_add"></div> 
	<div id="win_update"></div> 
	 
</body>
</html>