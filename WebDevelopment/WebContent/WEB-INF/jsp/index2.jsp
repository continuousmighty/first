<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 
   <title>考研人的家园--考研棒！！！</title>
   <script type="text/javascript" src="./jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="./jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="./jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="./jquery-easyui-1.5/themes/default/easyui.css"/>
<link rel="stylesheet" type="text/css" href="./jquery-easyui-1.5/themes/icon.css"/>
</head>
<body>
<script type="text/javascript">
window.onload=function(){
	 $('#tree').tree({
		 onClick:function(node){
			 if(!node.children)
			 window.location.href="<%=request.getContextPath()%>/indexs.action?jiangshi="+node.id; 
		 }
	 }) 
}
	
</script>
    <div style="margin:20px 0;"></div>
    <div id="s" class="easyui-layout" style="width:100%;height: 900px;">
        <div data-options="region:'north'" style="height:100px">
        <h2 style="text-align: center;font-family: KaiTi;">欢迎各位，有考研资料大家一起分享  </h2>
		<h2 style="text-align: center;font-family: KaiTi;">2019最新各大机构考研视频分享，来和大家一起进步吧(#^.^#)</h2>
		</div>
		<div data-options="region:'west',split:true" title="West" style="width:15%;">
             <ul id="tree" class="easyui-tree" data-options="url:'./json/tree_data1.json',method:'get',animate:true,dnd:true"></ul>
        </div>
        <div data-options="region:'east',split:true" title="East" style="width:20%;">
            <ul >
            	<li style="font-family: KaiTi;">更多待更新</li>
				<li style="font-family: KaiTi;">需要更多实时更新的2019各大机构的视频资料加qq群695851999,以便及时知道更新情况！！！</li>
				<li style="font-family: KaiTi;">需要更多老师的视频请联系qq号码915298483，将会尽量帮大家搜寻，或者你也可以联系他贡献自己的好视频</li>
            </ul>
        </div>
        <div id="center" data-options="region:'center',title:'Class content',iconCls:'icon-ok'">
            <div class="easyui-tabs" data-options="fit:true,border:false,plain:true">
                <div title="课程链接"  style="padding:10px">
                <div style="margin-left:20%;width:60%; background:#959595;">
<div style="padding-top: 5px;"><ul>
<c:forEach items='${list}' var='item'>
             <li ><a style="line-height:20px;font-family: KaiTi;" href="${item.lianjie}">${item.name}---密码:${item.mima}</a> 
</c:forEach>
</ul>
</div>
</div>
                
                </div>
            </div>
        </div>
    </div>
</body>
</html>