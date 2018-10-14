<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/js/public.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<script>
		
	function submitForm(){
		$('#ff').form('submit', {    
		    url:'/login',    
		    onSubmit: function(){    
		    	var isValid = $(this).form('validate');
				if (!isValid){
					$.messager.progress('close');	// 如果表单是无效的则隐藏进度条
				}
				return isValid;	// 返回false终止表单提交

		    },    
		    success:function(data){    
		    	var data =  eval("("+data+")");
		    	if(data.status){
					$.messager.progress('close');	// 如果提交成功则隐藏进度条
					location="/tobuju";
				}else{
					$.messager.alert('警告',data.msg);    
				}
		    }    
		});  

	}
	
	
	
	</script>

<body>
	<div style="padding-left: 33%;padding-top: 10%">
	<div class="easyui-panel" title="登陆" style="width:400px">
		<div style="padding:10px 60px 20px 60px">
	    <form id="ff" method="post">
	    	<table cellpadding="5">
	    		<tr>
	    			<td>用户名:</td>
	    			<td><input class="easyui-textbox" type="text" name="uname" data-options="required:true,iconCls:'icon-man'"></input></td>
	    		</tr>
	    		<tr>
	    			<td>密码:</td>
	    			<td><input class="easyui-textbox" type="password" name="pwd" data-options="required:true,iconCls:'icon-lock'"></input></td>
	    		</tr>
	    		
	    		
	    	</table>
	    </form>
	    <div style="text-align:center;padding:5px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">登陆</a>
	    </div>
	    </div>
	</div>
	</div>
</body>
</html>