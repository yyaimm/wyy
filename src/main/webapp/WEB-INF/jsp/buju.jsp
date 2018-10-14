<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/js/public.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body class="easyui-layout">   
   
	<script type="text/javascript">
	$(function(){
		$("#tree").tree({
				url:'${path}/shu',
				idFiled:'id',
				textFiled:'name',
				parentField:'pid',
				onClick:function(node){
					nodeClick(node);
				}
		})
	})
	function nodeClick(node){
		if(node.pid!=0){
			var tab=$("#tab").tabs("exists",node.name);
			if(tab){
				var tab=$("#tab").tabs("select",node.text);
			}else{
				$("#tab").tabs('add',{
					title:node.name,
					selected: true,
					closable:true,
					/* href:""+node.url+"" */
					href:node.url
					/* content:content */
				})
			}
		}
	}
	function tc() {
		$.post("${path}/tc",function(data){
			if (data.status) {
				location="${path}/login.jsp";
			}else{
				$.messager.alert('警告',data.msg);  
			}			
		})
	}
	
	</script>
    <div id="cc" class="easyui-layout" style="width:600px;height:400px;" fit="true">   
    <div data-options="region:'north',title:'North Title',split:true" style="height:100px;">
    	<h1 style="display: inline;float:left; margin-left:400px;margin-top: 8px;">欢迎${u.uname }登陆</h1><a href="" onclick="tc()" style="float: right;margin-top: 28px;margin-right: 10px;">退出</a>
    </div>   
    <div data-options="region:'west',title:'West',split:true" style="width:200px;">
    	<ul id="tree"></ul>
    </div>   
    <div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">
    	<div id="tab" class="easyui-tabs" fit=true>   
	        <div title="首面" style="padding:20px;display:none;" align="center">
	               <font color="blue" size="30">欢迎使用</font>
	        </div>
	    </div> 
    </div>   
</div>  
</body>  

</html>