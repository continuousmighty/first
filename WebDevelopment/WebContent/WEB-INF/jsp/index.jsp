<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考研人的家园</title>
<style type="text/css">
a{
	text-decoration:none;
}
</style>
</head>
<body>
<div style="top: 0px;width:100%; height: 40px; background: gray;">
<div style="margin-left: 35%;height:40px;width:30%; background:#959595;"><p style="line-height: 40px;text-align: center;">考研的同学，大家好</p></div>
</div>
<h2 style="text-align: center;">欢迎各位，有考研资料大家一起分享  </h2>
<h2 style="text-align: center;">2019最新各大机构考研视频分享，来和大家一起进步吧(#^.^#)  </h2>
<div style="margin-left:20%;width:60%; background:#959595;">
<div style="padding-top: 5px;"><ul>
<c:forEach items='${list}' var='item'>
             <li ><a style="line-height:20px;" href="${item.lianjie}">${item.name}---密码:${item.mima}</a><a href="<%=request.getContextPath()%>/del.action?lj=${item.lianjie}&mm=${item.mima}">删除</a></li>
</c:forEach>
<li >更多待更新</li>
<li>需要更多实时更新的2019各大机构的视频资料加qq群695851999,以便及时知道更新情况！！！</li>
</ul>
</div>
</div>
</html>