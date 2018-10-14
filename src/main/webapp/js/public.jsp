<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<% String path = request.getContextPath(); request.setAttribute("path", path);%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	 
	<!--  bootstrap  --> 
	<link rel="stylesheet" type="text/css" href="${path }/js/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="${path }/js/css/bootstrap.min.css">
	<!-- easyui -->
	<link rel="stylesheet" type="text/css" href="${path }/js/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${path }/js/themes/icon.css">
	
	<!-- jquery -->
	<script type="text/javascript" src="${path }/js/jquery.min.js"></script>
	<!-- easyui -->
	<script type="text/javascript" src="${path }/js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="${path }/js/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="${path }/js/sys.js"></script>
	<script type="text/javascript" src="${path }/js/easytree.js"></script>
	<!-- bootstrap -->
	<script type="text/javascript" src="${path }/js/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${path }/js/js/npm.js"></script>
