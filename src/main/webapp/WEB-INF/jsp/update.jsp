<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<script type="text/javascript">
	$(function () {
		var rows = $('#dg').datagrid('getSelected');
		$('#xgff').form('load',rows); 
	})
	$(function () {
		$('#fid').combobox({    
		    url:'${path}/flist',    
		    valueField:'fid',    
		    textField:'fname'   
		});  
		$('#fjztid').combobox({    
		    url:'${path}/fjztlist',    
		    valueField:'fjztid',    
		    textField:'fjztname'   
		});  
	})
	function xg() {
		$.messager.progress();	// 显示进度条
		$('#xgff').form('submit', {
			url: 'update',
			onSubmit: function(){
				var isValid = $(this).form('validate');
				if (!isValid){
					$.messager.progress('close');	// 如果表单是无效的则隐藏进度条
				}
				return isValid;	// 返回false终止表单提交
			},
			success: function(data){
				if (data=='true') {
					$.messager.progress('close');	// 如果提交成功则隐藏进度条
					$('#win_update').window('close');  // close a window 
					$('#dg').datagrid('reload');    // 重新载入当前页面数据  
					$.messager.show({
						title:'我的消息',
						msg:'修改成功',
						timeout:2000,
						showType:'slide'
					});

				}
				
			}
		});


	}
	
	
	
	
</script>
<form id="xgff" method="post" enctype="multipart/form-data">   
	<input type="hidden" name="id">
    <table>
		<tr>
			<td>
				<label for="fid">房型:</label>
			</td>
			<td>   
				
        		<input class="easyui-validatebox" type="text" id="fid" name="fid" data-options="required:true" />
			</td>
		</tr>
		<tr>
			<td>
				<label for="lc">楼层:</label>
			</td>
			<td>   
        		<input class="easyui-textbox" type="text" name="lc" data-options="required:true" />
			</td>
		</tr>
		<tr>
			<td>
				<label for="fjztid">房间状态:</label>
			</td>
			<td>   
        		<input class="easyui-validatebox" type="text" id="fjztid" name="fjztid" data-options="required:true" />
			</td>
		</tr>
		<tr>
			<td>
				<label for="fjjg">房间价格:</label>
			</td>
			<td>   
        		<input class="easyui-textbox" type="text" name="fjjg" data-options="required:true" />
			</td>
		</tr>
		<tr>
			<td>
				<label for="file">房间照片:</label>   
			</td>
        	<td>	
        		<input class="easyui-filebox"  name="file" data-options="required:true,buttonText:'选择照片'" />
			</td>
		</tr>
		
		<tr>
			<td colspan="11">
				<a id="btn" href="#" onclick="xg()" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">修改</a>  
			</td>
		</tr>
		
	</table> 
    
</form>  
</body>
</html>

