<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>福利大放送 </title>
<style type="text/css">
img {margin:0.24%;
 background: green;
 border: 1px solid gray;
 
}
 
a:link{
	text-decoration:none; 
}
.left{
float: left;
margin-top: 5px;
}
.borderr{
 border: 1px solid gray;
 background: white;
 overflow: hidden;
}
.forumname {
    float: right;
    margin-top:5px;
    height: 60%;
    line-height: 90%;
    max-width: 30%;
    color: #FFF;
    background: #BBB;
    padding: 0 10px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
.huoqua{
}
</style>
</head>
<body style="background:#F1F1F1; ">
<script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="./js/index.js"></script>
<script type="text/javascript">

window.onload = function(){
	var aImg=document.getElementsByTagName('img');
	var aDiv=document.getElementById('bigbox');
	var ss=getHeightWidth();
	for(var i=0;i<aImg.length;i++){
		aDiv1=document.getElementById('out'+(i+1));
		aDiv2=document.getElementById('in'+(i+1));
		aDiv3=document.getElementById('in'+(i+1)+(i+1));
		aDiv1.style.width=ss[1]*0.9/(6*0.964)+'px';
		aDiv1.style.height=ss[1]*0.9/(6*0.964)+'px';
		aImg[i].style.height=ss[1]*0.9*2/(6*0.964*3)+'px';
		aDiv2.style.height=ss[1]*0.9/(6*0.964*6)+1+'px';
		aDiv2.style.width=ss[1]*0.9*0.158+'px';
		aDiv3.style.height=ss[1]*0.9/(6*0.964*6)-1+'px';
		aDiv3.style.width=ss[1]*0.9*0.158+'px';
		aImg[i].style.width=ss[1]*0.9*0.158+'px';
	<%--aImg[0].style.width=ss[1]/3+'px';
	aImg[1].style.width=ss[1]/4+'px';
	aImg[2].style.width=ss[1]/4+'px';
	aImg[3].style.width=ss[1]*5/24+'px';
	aImg[4].style.width=ss[1]*5/24+'px';
	aImg[5].style.width=ss[1]*5/24+'px';
	aImg[6].style.width=ss[1]*5/24+'px';--%>
	}
	$(".left").click(function(){ 
		Tishi($(this).children("div:eq(0)").children("a").attr("href"));
});
		

};

function getHeightWidth(){
	if (window.innerWidth)
		winWidth = document.innerWidth;
	else if((document.body)&&(document.body.clientWidth))
		winWidth = document.body.clientWidth;
	//获取窗口高度
	if(window.innerHeight)
		winHeight = window.innerHeight;
	else if((document.body)&&(document.body.clientWidth))
		winHeight = document.body.clientHeight;
	if(document.documentElement&&document.documentElement.clientHeight&&
			document.documentElement.clientWidth){
		winHeight = document.documentElement.clientHeight;
		winWidth = document.documentElement.clientWidth;
	}
	var a=new Array();
	a[0]=winHeight;
	a[1]=winWidth;
	return a;
}
</script>
<h2 style="text-align: center;">欢迎进来，这里有你想看的视频，成人都懂的，需要的点击下面：  </h2>
<div id="gonggao"style="position:absolute;left:30%; width:40%;height: 200px; background:gray;">
<h5 style="text-align: center;">attention</h5>
<p>&nbsp;&nbsp;&nbsp;&nbsp;点击感兴趣的资料图片，进入百度云分享，填写标题下的密码，保存到自己网盘，将资源的后缀名改为.mp4即可！！！</p>
<input  type="button" style="position:absolute;right:20%; bottom:10%; width: 50px;" value="确定" onclick="Display();" >
</div>
<div id="bigbox" style="margin-left: 2.5%; width: 95%; background: gray;">
<div id="out1" class="left"><img id="main"  alt="刺激新鲜图片" src="${pageContext.request.contextPath}/fileupload/1.png">
<div id="in1" class="borderr"><a class="huoqua" href="https://pan.baidu.com/s/1mkgkLV6">01.xi tian xiaoluoli</a></div> 
<div id="in11" class="borderr">密码：9r6v<div class="forumname">萝莉</div></div> 
</div>
<div id="out2" class="left"><img id="main1" alt="刺激新鲜图片1" src="${pageContext.request.contextPath}/fileupload/2.png">
<div id="in2" class="borderr"><a class="huoqua" href="https://pan.baidu.com/s/1jKlE5Ae">02 qun p duo nan yi nv </a></div> 
<div id="in22" class="borderr">密码：twfb<div class="forumname">骚妇</div> 
</div>
</div>
 <div id="out3" class="left"><img id="main2" alt="刺激新鲜图片2" src="${pageContext.request.contextPath}/fileupload/3.png">  
<div  id="in3" class="borderr"><a class="huoqua"  href="https://pan.baidu.com/s/1dGII137">03 yong chi cao da xuesheng </a></div> 
<div  id="in33" class="borderr">密码：bh6f<div class="forumname">学生妹</div></div> 
</div>
<div id="out4" class="left"><img id="main3" alt="刺激新鲜图片3" src="${pageContext.request.contextPath}/fileupload/4.png"> 
<div  id="in4" class="borderr"><a class="huoqua" href="https://pan.baidu.com/s/1jJDO8WQ">04 jia li cao laomeier </a></div> 
<div  id="in44" class="borderr">密码：172y<div class="forumname">少妇</div></div> 
</div>
<div id="out5" class="left"><img id="main4" alt="刺激新鲜图片4" src="${pageContext.request.contextPath}/fileupload/5.png">  
<div  id="in5" class="borderr"><a class="huoqua" href="https://pan.baidu.com/s/1dFRpI4D">05 cheng meizi buzhuyi houchata </a></div> 
<div  id="in55" class="borderr">密码：wdim<div class="forumname">强奸</div></div> 
</div>
<div id="out6" class="left"><img id="main5" alt="刺激新鲜图片5" src="${pageContext.request.contextPath}/fileupload/6.png">
<div  id="in6" class="borderr"><a class="huoqua" href="https://pan.baidu.com/s/1dzRKcA">06 gong_jiao_che_shang_输 </a></div>
<div  id="in66" class="borderr">密码：59gs<div class="forumname">咸猪手</div></div>
</div>  
<div id="out7" class="left"><img id="main6" alt="刺激新鲜图片6" src="${pageContext.request.contextPath}/fileupload/7.png">
<div  id="in7" class="borderr"><a class="huoqua" href="https://pan.baidu.com/s/1drKmZ0">07 hai_tan_qi_yu </a></div>
<div  id="in77" class="borderr">密码：7r8l<div class="forumname">御姐</div></div> 
</div>  
</div>
</body>
</html>