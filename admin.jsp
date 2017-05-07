<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="com.model.User" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>管理中心</title>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="finalCSS/css/nav.css" rel='stylesheet' type='text/css' />
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
    <link href="finalCSS/css/lbt.css" rel='stylesheet' type='text/css' />
    <link href="finalCSS/css/colrank.css" rel='stylesheet' type='text/css' />
    <script src="finalCSS/js/lbt.js"></script>
    <script src="userInfo/js/index.js"></script>
    <script src="js/pageAd.js"></script>
    <!-- Animate.css -->
	<link rel="stylesheet" href="userInfo/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="userInfo/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="userInfo/css/bootstrap.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="userInfo/css/style.css">

	<!-- Modernizr JS -->
	<script src="userInfo/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<style type="text/css">

 /*div{
border:1px solid #f7f7f7;
}*/

.tablist{
color:black;
text-align:center;
border:1px solid red;
}
.tablist td .txtValue{
padding:1px 0;
}
.clear{

display:block;
overflow:hidden;
}
.borderbug div{
border:1px solid #f7f7f7;
}
</style>
<script>
						function checkPClicked(){
							//alert("进入");
							var pass=document.getElementById("pass");
							if(pass.value=='')
						    {
								alert("最少勾选一项！");
								return false;
						    }
							else
								return true;
						}
	function checkFClicked(){
	//alert("进入");
	var pass=document.getElementById("failure");
	if(pass.value=='')
	{
	alert("最少勾选一项！");
	return false;
	}
	else
	return true;
	}
	function checkAddCollege(){
		var cName=document.getElementById("fmcName");
		var cId=document.getElementById("fmcId");
		var cType=document.getElementById("fmcType");
		var cPlace=document.getElementById("fmcPlace");
		var cVariety=document.getElementById("fmcVariety");
		var re =  /^[0-9]*$/;//数字组合
		if(cName.value=="")
		{
			alert("学校名称不能为空！");
			return false;
		}
		else if(cId.value=="")
		{
			alert("院校代码不能为空！");
			return false;
		}
		else if(!re.test(cId.value))
	    {
	    	alert("院校代码只能由数字组成！");
	    	return false;
	    }
		else if(cType.value=="")
		{
			alert("院校类型不能为空！");
			return false;
		}
		else if(cPlace.value=="")
		{
			alert("院校所在地不能为空！");
			return false;
		}
		else if(cVariety.value=="")
		{
			alert("批次不能为空！");
			return false;
		}
		return true;
	}
</script>
<title>管理中心</title>
</head>
<body>
<!-- 非管理员用户不得进入此页面 ,问题：管理员账号被改变？-->
<s:if test="#session.duty!=0">
<%response.sendRedirect("index.jsp"); %>
</s:if>
<div class="slider">
   <div class="header-top">
        <div class="inner" >
            <div class="siteLogo">
			<a href="index.jsp"></a>
			</div>
            <div class="nav">
                <ul>
                    <li><a href="<s:url action='showRank'/>">高校排行</a></li>
                    <li><a href="<s:url action='showClassMajor'/>">专业解析</a></li>
                    <li>
                        <a href="<s:url action='display'>
                          <s:param name="college.cName">index</s:param>
                        </s:url>">学长问答</a> 
                    </li>
                    <li>
                        <a href="<s:url action='displayT'>
                          <s:param name="classify.classId">index</s:param>
                        </s:url>">权威咨询</a> 
                    </li>
                    <li>
                        <a href="transstu.jsp">关于插班生</a>
                    </li>
                </ul>
            </div>
            <div class="user fr">
                <s:set var="status" value="#session.status"></s:set>
				<s:if test="#status != 1">
                  <a href="login.jsp" class="log signUp">登录/注册</a>
				</s:if>
				<s:else>
					<a href="<s:url action='showUserInfo'/>"> 					  
					  <span style="color: #FFFFFF;font-size:20px;">${sessionScope.userId}</span>
					</a>
					&nbsp;&nbsp;
					
					<a href="<s:url action='logout'/>" id="login" style="color: #FFFFFF;font-size:20px;">注销</a>
					
				</s:else>
            </div>
            
        </div>
</div>
    <ul class="slider-main">
        <li class="slider-panel">
            <img  src="images/房间.jpg">
        </li>
        <li class="slider-panel">
            <img  src="images/两本书.jpg">
        </li>
        <li class="slider-panel">
            <img  src="images/简约房.jpg">
        </li>
    </ul>
    <div class="slider-extra">
        <ul class="slider-nav">
            <li class="slider-item"> </li>
            <li class="slider-item"> </li>
            <li class="slider-item"> </li>
        </ul>
        <div class="slider-page">
            <a class="slider-pre" href="javascript:;;"><</a>
            <a class="slider-next" href="javascript:;;">></a>
        </div>
    </div>
</div>
<div class="tips">
    <div class="wel"><p>欢迎来到管理员页面！您可进行以下权限操作：</p></div>
</div>
<div class="fh5co-tab-wrap">
<!-- 操作完回到原来所处事务页面 -->
<script>
   var request_tab="${requestScope.tab}";
   var msg="${requestScope.msg}";
   function setActive(request_tab){
	   var tab1=document.getElementById("tab1");
	   var tab2=document.getElementById("tab2");
	   var tab3=document.getElementById("tab3");
	   var tab4=document.getElementById("tab4");
	   var tab5=document.getElementById("tab5");
	   var content1=document.getElementById("content1");
	   var content2=document.getElementById("content2");
	   var content3=document.getElementById("content3");
	   var content4=document.getElementById("content4");
	   var content5=document.getElementById("content5");
	   if(request_tab== '')	
	   {
		   tab1.className='active';
		   content1.className='fh5co-tab-content active';
		   var twolist=document.getElementById("twolist");
		   twolist.style.display='none';
	   }
		   
	  
	   else if(request_tab == 1)	
	   {
	       tab1.className='active';

	       content1.className='fh5co-tab-content active';
	       var twolist=document.getElementById("twolist");
		   twolist.style.display='none';
	   }
	   else if(request_tab == 2)
		 {
		   tab2.className='active';
		   content2.className='fh5co-tab-content active';
		   var twolist=document.getElementById("twolist");
		   twolist.style.display='none';
		 }
		      
	   else if(request_tab == 3)
	   {
		   tab3.className='active';
		   content3.className='fh5co-tab-content active';
		   var twolist=document.getElementById("twolist");
		   twolist.style.display='none';
	   }
		      
	   
	   else if(request_tab == 4)
	   {
		   tab4.className='active';
		   content4.className='fh5co-tab-content active';
		   var twolist=document.getElementById("twolist");
		   twolist.style.display='none';
	   }
		      
	   
	   else if(request_tab == 5)
	   {
		   tab5.className='active';
		   content5.className='fh5co-tab-content active';
		   var twolist=document.getElementById("twolist");
		   twolist.style.display='block';
	   }
		     
   }
   window.onload = function (){
	   //alert("request_tab"+request_tab);
	   setActive(request_tab);
	   if(msg!='')
		   alert(msg);
	   var a5=document.getElementById('href5');
	   a5.onclick=function(){
		   var twolist=document.getElementById("twolist");
		   twolist.style.display='block';
	   }
   }
  
   function checkDelete(){
	   var inputId=document.getElementById("user.id");
	   if(inputId.value=='')
	   {		
		   alert("用户ID不能为空！");
		   return false;
	   }
	   else
		   return true;
   }

</script>
<div class="ope_li">
            
			<ul class="fh5co-tab-menu">
				<li id="tab1"><a href="#" data-tab="1"><span class="menu-text">添加大学版块</span></a></li>
				<!--<li id="tab2"><a href="#" data-tab="2"><span class="menu-text">删除大学版块</span></a></li>-->
				<!--  <li id="tab3"><a href="#" data-tab="3"><span class="menu-text">封禁用户</span></a></li>-->
				<li id="tab4"><a href="#" data-tab="4" data-pie="yes"><span class="menu-text">删除用户</span></a></li>
				<li id="tab5"><a href="#" id="href5" data-tab="5" data-pie="yes" ><span class="menu-text">审核用户</span></a></li>
			</ul>
			
		    </div>
		    </div>
<div id="fh5co-main">
		<div class="fh5co-tab-wrap">
		    
			<div class="fh5co-tab-content" data-content="1" id="content1">
				<div class="fh5co-content-inner text-center">
					<div class="row row-bottom-padded-sm">
						<div class="col-md-12">
						<div class="admin_box">
    <div class="addcol">
        <h3>请录入院校信息：</h3>
        <form class="fm" action="addCollege" method="post" onsubmit="return checkAddCollege()">
        <p class="colmes">院校名称：  
        <input id="fmcName" type="text" placeholder="如：清华大学" name="college.cName"></p>
        
        <p class="colmes">院校代码：   
        <input id="fmcId" type="text" placeholder="如：10003" maxlength="5" name="college.cId"></p>
        
        <p class="colmes">院校类型：   
        <input id="fmcType" type="text" placeholder="理工类，文科类，综合类" name="college.type"></p>
        
        <p class="colmes">院校所在地:  
        <input id="fmcPlace" type="text" placeholder="如：北京" name="college.place"></p>
        
        <p class="colmes">&nbsp;&nbsp;&nbsp;&nbsp;批次&nbsp;&nbsp;：  
        <input id="fmcVariety" type="text" placeholder="985，211，本科" name="college.variety"></p>
           
        <!-- 提交重置按钮 -->
        <input type="submit" value="提交" class="add_btn">
        <input type="reset" value="重置" class="add_btn">
        </form>
    </div>
</div>
						</div>
					</div>
				</div>
			</div>
			<!--  删除大学版块
			<div class="fh5co-tab-content" data-content="2">
				<div class="fh5co-content-inner">
					<div class="row">
						<div class="col-md-12">
						<form action="deleteCollege">
						</form>

						</div>
						
					</div>
				</div>
			</div>
			-->
			<!-- 封禁用户 版块 -->
			<div class="fh5co-tab-content" data-content="3" id="content3">
				<div class="fh5co-content-inner">
					<div class="row">
						<div class="col-md-12">
						3
                                 

						</div>
						
					</div>
				</div>
			</div>
			<div class="fh5co-tab-content" data-content="4" id="content4">
				<div class="fh5co-content-inner">
					<div class="row">
						<div class="col-md-12">
						<form class="fm" style="text-align:center" 
						onSubmit="return checkDelete()" action="deleteUser" method="post">
						<p class="colmes">用户名 ：
                        <input type="text" name="user.id" id="user.id" placeholder="请输入用户ID" /></p>
                        <input type="submit" value="确认删除" class="add_btn">
						</form>
						</div>
					</div>
				</div>
			</div>
			<!-- 审核用户版块 -->
			<div data-content="5" id="content5" style="width:100%;align:center">
				<div>
					<div>
						
						<div id="twolist" style="display:none">
						<!-- 学长学姐和老师按钮 -->
						<form>
						<table>
						<tr>
						<td width="200px">
						   <a 
						   href="<s:url action='displayAuditedUser'/>?cp=1&duty=2">
						        学长学姐列表</a>
						</td>
						<td>
						   <a 
						   href="<s:url action='displayAuditedUser'/>?cp=1&duty=3">
						        老师列表</a>
						</td>
						</tr>
						</table>
						</form>
						</div>
						
						<!-- 待审核列表 -->
						<!--  <div class="pagination" style="color:black">-->
						<div>

						<s:set var="duty" value="#request.duty"/>
						<s:if test="#duty == 2 && #request.auList != null">
						<form style="text-align:center">						
						<table class="table-bordered tablist" >
						
						     <tr>
						     <td width="50px"></td>
						     <th style="text-align:center;">账号</th>
						     <th style="text-align:center;">大学</th>
						     <th style="text-align:center;">专业</th>
						     <th style="text-align:center;">入学年份</th>
						     <th style="text-align:center;">审核图片</th>
						     <th style="text-align:center;">请求时间</th>
						     </tr>
						<%
						   ArrayList<User> auList=(ArrayList<User>)request.getAttribute("auList");//待审核队列
						   System.out.println(auList.size());
						   for(int i=0;i<auList.size();i++)
						   {
							   User user=auList.get(i);
							   pageContext.setAttribute("user",user,PageContext.PAGE_SCOPE);
						   
							   System.out.println(user.getId());
						%>						
						     <tr>
						     <td><input type="checkbox" name="userIdGp" value=" " /></td>
						     <td>
						     ${user.id}
						     </td>
						     <td>
						     ${user.cName}
						     </td>
						     <td>
						     ${user.mName}
						     </td>
						     <td>
						     ${user.sYear}
						     </td>
						     <td>					      
						        <div>
			                    <a id="modal-377027" href="#modal-container-${user.id}" 
			                    role="button" class="btn" data-toggle="modal">
			                    <img src="${user.picSrc}" widh="120px" height="100px" />
			                    </a>
			                    <div class="modal fade" id="modal-container-${user.id}" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				                <div class="modal-dialog">
					            <div class="modal-content">
						        <div class="modal-header">
							      
							      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							      <h4 class="modal-title" id="myModalLabel">
								      账号:${user.id} <span>上传图片</span>
							      </h4>
							      
						        </div>
						        <div class="modal-body">
							     
							      <div style="width:100%; height:500px;">
								  <img src="${user.picSrc}" widh="100%" height="100%"/>
							      </div>
							     
						        </div>
						        <div class="modal-footer">
							     <button type="button" class="btn btn-default" 
							     data-dismiss="modal">关闭</button>
					            </div>
					            
				                </div>
				
		                       	</div>
			                    </div>
						     </td>

						     <td>
						     ${user.requestTime}
						     </td>
						     </tr>
						
						<%
						   }
						%>
						

											
		               
	                    

	                    
						</table>
						

						
                        
						</form>
						

                        <div class="clear borderbug">
                        
                        <div style="width:500px" class="fl"></div>
						
						<div style="text-align:center;color:black;" class="fl">
						<form action="<s:url action='auditUser'/>?result=1&duty=${requestScope.duty}&cp=${currentPage}" 
						method="post" 
						onsubmit="return checkPClicked()">			               
		                <input class="txtValue" type="hidden" id="pass" name="userIdGp" value="" />
	                    <input type="submit" value="通过"/>	 
	                    </form> 
	                    </div>             
	                    
	                    <div style="width:100px" class="fl"></div>	          
	                    
	                    <div style="text-align:center;color:black;" class="fl">
		                <form action="<s:url action='auditUser'/>?result=0&duty=${requestScope.duty}&cp=${currentPage}" 
		                method="post" onsubmit="return checkFClicked()">
		                
		                <input class="txtValue" type="hidden" id="failure" name="userIdGp" value="" />
	                    <input type="submit" value="不通过"/>	                    
	                    </form>
						</div>
						
						</div>
						
						<div style="text-align:center;">
                            <ul class="pagination">
                            <s:if test='#request.auList !=null&&#request.totalPages!="1"'>                        
                             <%
                             int totalPages=(int)request.getAttribute("totalPages");
                             int totalCount=(int)request.getAttribute("totalCount");  
                             int currentPage=(int)request.getAttribute("currentPage"); 
                             System.out.println("cp: "+currentPage);
                             if(currentPage==1){
                             %>
                             <li>
                              <a href="<s:url action='displayAuditedUser'/>?cp=${currentPage}&duty=2" >上一页</a>
                             </li>
                             <%
                             }
                             else{
                             pageContext.setAttribute("forward",currentPage-1,PageContext.PAGE_SCOPE);
                             %>
                             <li>
							    <a href="<s:url action='displayAuditedUser'/>?cp=${forward}&duty=2" >上一页</a>
						    </li>
                            <%
                            }
                            for(int i=1;i<=totalPages;i++){
								pageContext.setAttribute("i",i,PageContext.PAGE_SCOPE);
								if(i==currentPage){
							%>
                               <li class="active">
										<a href="<s:url action='displayAuditedUser'/>?cp=${i}&duty=2">
										${i}</a>
							   </li>
							<%  
							    }
								else{                            
                            %>
                               <li>
										<a href="<s:url action='displayAuditedUser'/>?cp=${i}&duty=2">
										${i}</a>
							   </li>
                            <%  
                               }
                            }
                            
                            if(currentPage==totalPages){

                            %>
                            <li>
								<a href="<s:url action='displayAuditedUser'/>?cp=${currentPage}&duty=2">
								        下一页</a>
						    </li>
                            <%}
                            else{
								pageContext.setAttribute("next",currentPage+1,PageContext.PAGE_SCOPE);
							%>
                            <li>
							    <a href="<s:url action='displayAuditedUser'/>?cp=${next}&duty=2">
								下一页</a>
						    </li>
							<%}%>
                               
                            </s:if>
                            </ul>
                        </div>
						</s:if>
						<s:elseif test="#duty == 3 && #request.auList != null">
						<form style="text-align:center">						
						<table class="table-bordered tablist" >
						
						     <tr>
						     <td width="50px"></td>
						     <th style="text-align:center;">账号</th>
						     <th style="text-align:center;">真实姓名</th>
						     <th style="text-align:center;">大学</th>
						     <th style="text-align:center;">擅长领域</th>
						     <th style="text-align:center;">职业</th>
						     <th style="text-align:center;">审核图片</th>
						     <th style="text-align:center;">请求时间</th>
						     </tr>
						<%
						   ArrayList<User> auList=(ArrayList<User>)request.getAttribute("auList");//待审核队列
						   System.out.println(auList.size());
						   for(int i=0;i<auList.size();i++)
						   {
							   User user=auList.get(i);
							   pageContext.setAttribute("user",user,PageContext.PAGE_SCOPE);
						   
							   System.out.println(user.getId());
						%>						
						     <tr>
						     <td><input type="checkbox" name="userIdGp" value=" " /></td>
						     <td>
						     ${user.id}
						     </td>
						     <td>
						     ${user.name}
						     </td>
						     <td>
						     ${user.type}
						     </td>
						     <td>
						     ${user.career}
						     </td>
						     <td>
						     ${user.cName}
						     </td>
						     <td>					      
						        <div>
			                    <a id="modal-377027" href="#modal-container-${user.id}" 
			                    role="button" class="btn" data-toggle="modal">
			                    <img src="${user.picSrc}" widh="120px" height="100px" />
			                    </a>
			                    <div class="modal fade" id="modal-container-${user.id}" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				                <div class="modal-dialog">
					            <div class="modal-content">
						        <div class="modal-header">
							      
							      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							      <h4 class="modal-title" id="myModalLabel">
								      账号:${user.id} <span>上传图片</span>
							      </h4>
							      
						        </div>
						        <div class="modal-body">
							     
							      <div style="width:100%; height:500px;">
								  <img src="${user.picSrc}" widh="100%" height="100%"/>
							      </div>
							     
						        </div>
						        <div class="modal-footer">
							     <button type="button" class="btn btn-default" 
							     data-dismiss="modal">关闭</button>
					            </div>
					            
				                </div>
				
		                       	</div>
			                    </div>
						        </div>
						     </td>
						     <td>
						     ${user.requestTime}
						     </td>
						     </tr>
						
						<%
						   }
						%>
						

											
		               
	                    

	                    
						</table>
						

						
                        
						</form>
						
						

                        <div class="clear borderbug">
                        
                        <div style="width:500px" class="fl"></div>
						<div style="text-align:center;color:black;" class="fl">
						<form action="<s:url action='auditUser'/>?result=1&duty=${requestScope.duty}&cp=${currentPage}" 
						method="post" 
						onsubmit="return checkPClicked()">			               
		                <input class="txtValue" type="hidden" id="pass" name="userIdGp" value="" />
	                    <input type="submit" value="通过"/>	 
	                    </form> 
	                    </div>             
	                    <div style="width:100px" class="fl"></div>	          
	                    <div style="text-align:center;color:black;" class="fl">
		                <form action="<s:url action='auditUser'/>?result=0&duty=${requestScope.duty}&cp=${currentPage}" 
		                method="post" onsubmit="return checkFClicked()">
		                
		                <input class="txtValue" type="hidden" id="failure" name="userIdGp" value="" />
	                    <input type="submit" value="不通过"/>	                    
	                    </form>
						</div>
						
						</div>
						
						<div style="text-align:center;">
                            <ul class="pagination">
                            <s:if test='#request.auList !=null&&#request.totalPages!="1"'>                        
                             <%
                             int totalPages=(int)request.getAttribute("totalPages");
                             int totalCount=(int)request.getAttribute("totalCount");  
                             int currentPage=(int)request.getAttribute("currentPage"); 
                             System.out.println("cp: "+currentPage);
                             if(currentPage==1){
                             %>
                             <li>
                              <a href="<s:url action='displayAuditedUser'/>?cp=${currentPage}&duty=3" >上一页</a>
                             </li>
                             <%
                             }
                             else{
                             pageContext.setAttribute("forward",currentPage-1,PageContext.PAGE_SCOPE);
                             %>
                             <li>
							    <a href="<s:url action='displayAuditedUser'/>?cp=${forward}&duty=3" >上一页</a>
						    </li>
                            <%
                            }
                            for(int i=1;i<=totalPages;i++){
								pageContext.setAttribute("i",i,PageContext.PAGE_SCOPE);
								if(i==currentPage){
							%>
                               <li class="active">
										<a href="<s:url action='displayAuditedUser'/>?cp=${i}&duty=3">
										${i}</a>
							   </li>
							<%  
							    }
								else{                            
                            %>
                               <li>
										<a href="<s:url action='displayAuditedUser'/>?cp=${i}&duty=3">
										${i}</a>
							   </li>
                            <%  
                               }
                            }
                            
                            if(currentPage==totalPages){

                            %>
                            <li>
								<a href="<s:url action='displayAuditedUser'/>?cp=${currentPage}&duty=3">
								        下一页</a>
						    </li>
                            <%}
                            else{
								pageContext.setAttribute("next",currentPage+1,PageContext.PAGE_SCOPE);
							%>
                            <li>
							    <a href="<s:url action='displayAuditedUser'/>?cp=${next}&duty=3">
								下一页</a>
						    </li>
							<%}%>
                               
                            </s:if>
                            </ul>
                        </div>
						</s:elseif>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<!-- 
		<footer id="fh5co-footer">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center">

				</div>
			</div>
		</footer>
		 -->
</div>


<!-- jQuery -->
	<script src="userInfo/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="userInfo/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="userInfo/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="userInfo/js/jquery.waypoints.min.js"></script>
	<!-- Easy PieChart -->
	<script src="userInfo/js/jquery.easypiechart.min.js"></script>
	<!-- MAIN JS -->
	<script src="userInfo/js/main.js"></script>
<div style="height:200px"></div>
<jsp:include page="down.jsp"></jsp:include>
</body>
</html>