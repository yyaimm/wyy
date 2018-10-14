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
		$('#fidd').combobox({    
		    url:'${path}/flist',    
		    valueField:'fid',    
		    textField:'fname'   
		});  
		$('#fjztidd').combobox({    
		    url:'${path}/fjztlist',    
		    valueField:'fjztid',    
		    textField:'fjztname'   
		});  
	})
	
	function tj(){
		$.messager.progress();	// 显示进度条
		$('#ff').form('submit', {
			url: '${path}/add',
			onSubmit: function(){
				var isValid = $(this).form('validate');
				if (!isValid){
					$.messager.progress('close');	// 如果表单是无效的则隐藏进度条
				}
				return isValid;	// 返回false终止表单提交
			},
			success: function(data){
				if (data) {
					$.messager.progress('close');	// 如果提交成功则隐藏进度条
					$('#dg').datagrid('reload');    // 重新载入当前页面数据  
					$('#win_add').window('close');  // close a window 
					$.messager.show({
						title:'我的消息',
						msg:'添加成功',
						timeout:2000,
						showType:'slide'
					});
				}
				
			}
		});


	}
</script>

<div align="center">
<form id="ff" method="post" enctype="multipart/form-data">  
	<table>
		<tr>
			<td>
				<label for="fid">房型:</label>
			</td>
			<td>   
				
        		<input class="easyui-validatebox" type="text" id="fidd" name="fid" data-options="required:true" />
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
        		<input class="easyui-validatebox" type="text" id="fjztidd" name="fjztid" data-options="required:true" />
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
				<a id="btn" href="#" onclick="tj()" class="easyui-linkbutton" data-options="iconCls:'icon-add'">添加</a>  
			</td>
		</tr>
		
	</table> 
   
     
</form>  
</div>
</body>
</html>