<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="com.model.User" %>
<%@ page import="com.model.Question" %>
<%@ page import="com.model.TQuestion" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="finalCSS/css/nav.css" rel='stylesheet' type='text/css' />
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
<link href="finalCSS/css/lbt.css" rel='stylesheet' type='text/css' />

<!-- Animate.css -->
	<link rel="stylesheet" href="userInfo/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="userInfo/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="userInfo/css/bootstrap.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="userInfo/css/styleUserInfo.css">
    
    <script src="js/page.js" type="text/javascript"></script>
    <script src="js/uploadPreview.js" type="text/javascript"></script>
	<!-- Modernizr JS -->
	<script src="userInfo/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<title>个人中心</title>
</head>
<body style="background-image: url(images/两本书.jpg);">
<s:if test="#session.status!=1"><!-- 没登录不准进入此页面！ -->
<%response.sendRedirect("index.jsp"); %>
</s:if>
<%
        User user=(User)request.getAttribute("user");
        pageContext.setAttribute("user",user,PageContext.PAGE_SCOPE);
   %>
   <script type="text/javascript">
  
      function checkForm3Empty(){
    	  var nickname=document.getElementById("user.nickname");
    	  if(nickname.value== "")
    	{
    	
    		  alert("请完善信息！");
    		  return false
        }
    	  return true;
      }
  
      function checkEmpty2()  
	{  
	       var duty="<%=user.getDuty()%>";
	       if(duty==2)
	      {
	    	if(document.getElementById("user.cName").value==""||
	    			document.getElementById("user.mName").value==""||
	    			document.getElementById("user.sYear").value=="")
	    	{
	    		alert("请完善信息以便审核！");
	    		return false;
	    	}
	    	var imgShow=document.getElementById("imgShow");//预览图片
		    
			 var file=document.getElementById("up_img");
			 var filevalue=document.form4.pic.value;
			    if(filevalue =="")
			  {
			    	alert("请上传图片以待审核！");
			    	return false;
			    }
			    else{
			    	 var fileSize=file.files[0].size;//文件大小
				     //alert(fileSize);
			    	if(!yanzheng(fileSize))//超过限制大小
			    		return false;
			    }
	    }
	    else if(duty==3)
	    {
	    	if(document.getElementById("user.cName").value==""||
	    			document.getElementById("user.type").value==""||
	    			document.getElementById("user.name").value==""||
	    				document.getElementById("user.career").value=="")
	    	{
	    		alert("请完善信息以便审核！");
	    		return false;
	    	}
	    	var imgShow=document.getElementById("imgShow");//预览图片
		    
			 var file=document.getElementById("up_img");
			 var filevalue=document.form4.pic.value;
			    if(filevalue =="")
			  {
			    	alert("请上传图片以待审核！");
			    	return false;
			    }
			    else{
			    	 var fileSize=file.files[0].size;//文件大小
				     //alert(fileSize);
			    	if(!yanzheng(fileSize))//超过限制大小
			    		return false;
			    }
	    	
	    }

	    return true;  
	}
      //上传图片大小限制
      function yanzheng(fileSize) 
      {        
	         if(fileSize>1024*1024*1)//大小大于1M
	        {
	            alert("图片不得大于1M！");
	            return false;
	           }
	         else
	        	 return true;
      } 
    
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
   		   
   	   }
   		   
   	  
   	   else if(request_tab == 1)	
   	   {
   	       tab1.className='active';

   	       content1.className='fh5co-tab-content active';
   		   
   	   }
   	   else if(request_tab == 2)
   		 {
   		   tab2.className='active';
   		   content2.className='fh5co-tab-content active';
   		 }
   		        	  
   	   else if(request_tab == 3)
   	   {
   		   tab3.className='active';
   		   content3.className='fh5co-tab-content active';
   		  
   	   }
   		      
   	   
   	   else if(request_tab == 4)
   	   {
   		   tab4.className='active';
   		   content4.className='fh5co-tab-content active';
   		   
   	   }
   		      
   	   
   	   else if(request_tab == 5)
   	   {
   		   tab5.className='active';
   		   content5.className='fh5co-tab-content active';
           goPage(1,6);
   		 
   	   }
   	   else if(request_tab == 0)
   	   {
   		   tab1.className='active';
		   content1.className='fh5co-tab-content active';
   	   }
   		     
      }
      function checkform2(){
    	  var modpw1=document.getElementById("modpw1");
    	  var modpw2=document.getElementById("modpw2");
    	  if(modpw1.value==null){
    		  return false;
    	  }    	  
    	  else if(modpw1.value!=modpw2.value){
    		  alert("两次输入密码不一致");
    		  return false;
    	  }
    	  else if(modpw1.value.length<5){
    		  alert("密码至少为5位字符！");
    		  return false;
    	  }
    	  return true;
      }
      window.onload=function(){
    	      
        	 var sex="${user.sex}";//js中使用EL表达式
        	 var request_tab="${requestScope.tab}";
        	 var msg="${requestScope.msg}";
        	 //alert(request_tab);
        	 
        	 setActive(request_tab);
        	 //alert(msg);
      	     if(msg!="")
      		   alert(msg);
      	     
        	 var r1=document.getElementById("male_checked");        	
        	 var r2=document.getElementById("female_checked");
        	 var r3=document.getElementById("default_checked");   	         	 
        	 if(sex=="男")
        		 r1.checked=true;
        	 else if(sex=="女")
        	     r2.checked=true;
        	 else
        		 r3.checked=true;
        	
        	 //上传图片预览
             new uploadPreview({ UpBtn: "up_img", DivShow: "imgdiv", ImgShow: "imgShow" });
      }      
					  
					   
 </script>
<!-- 头部开始 -->

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
            <!--  
            <div class="searchT fl">
                <input type="text" placeholder="搜索你感兴趣的学校，专业" class="sr fl" >
                <input type="button" value="搜索" class="sr_btn fl">
            </div>
            -->
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

<!-- 头部结束 -->
<div style="color:white;text-align:center;">

            <%if(user.getDuty()==0) {
                   //request.setAttribute("duty",user.getDuty());%>
            <br>
            <br>
		            <a href="admin.jsp" style="color:black">进入管理中心</a>
	               <%} %>
            </div>
<div id="fh5co-main">
		<div class="fh5co-tab-wrap">
			<ul class="fh5co-tab-menu">
				<li id="tab1"><a href="#" data-tab="1"><span class="menu-text">显示信息</span></a></li>
				<li id="tab2"><a href="#" data-tab="2"></span><span class="menu-text">修改密码</span></a></li>
				<% if(user.getDuty()!=0) {%>
				<li id="tab3"><a href="#" data-tab="3"></span><span class="menu-text">修改基础信息</span></a></li>
				<%} %>
				<%if(user.getStatus()==3) {%>
				<li id="tab4"><a href="#" data-tab="4" data-pie="yes"><span class="menu-text">修改审核信息</span></a></li>
				<%} %>
                <% if(user.getDuty()==1) {%>
				<li id="tab5"><a href="#" data-tab="5"></span><span class="menu-text">我的提问</span></a></li>
				<%} %>
			</ul>
			<div class="fh5co-tab-content" data-content="1" id="content1">
				<div class="fh5co-content-inner text-center">
					<div class="row row-bottom-padded-sm">
						<div class="col-md-12">						
						<table style="margin:0 auto;font-size:18px;">					
						<!-- 用户名开始 -->
						   <tr>
                           <td width="200px">用户名</td>
                           <td width="200px">
                               ${sessionScope.userId}
                           </td>
                           </tr>
                         <!-- 用户名结束 -->
                          
                         <!-- 身份开始 -->
                           <tr>
                              <td >身份</td>
                                <td >
                                <%if(user.getDuty()==1) {%>高考生<%} 
                                else if(user.getDuty()==2) {%>学长学姐<%} 
                                else if(user.getDuty()==3) {%>老师<%}
                                else if(user.getDuty()==0) {%>管理员<%} %>
                               </td>
                           </tr>
                          <!-- 身份结束 -->
                         
        <!-- 非管理员用户显示性别开始-->
        <%if(user.getDuty()!=0){ %>
        <tr>
          <td>性别</td>
          <td>
            <%  if(user.getSex()!=null) 
            {
               if(user.getSex().equals("女")){ %>
                                        女
            <% }
               else if(user.getSex().equals("男")){ %>
                                       男
            <% }
            }
               else{ %>
                                      未设置
            <%} %>
          </td>
        </tr>
        <%} %>
         <!-- 性别结束 -->	
        
            <%if(user.getDuty()==1) {%>
                 <tr>
                 <td width="85">昵称</td>
                 <td width="342">
                 ${user.nickname}
                 </td>
                 </tr>
                 
             <%} 
             //学长学姐 
             else if(user.getDuty()==2){%>
             <tr>
                 <td>昵称</td>
                 <td>
                 ${user.nickname}
                 </td>
             </tr>
             
             <tr>
                 <td>大学</td>
                 <td>
                 ${user.cName}
                 </td>
             </tr>
          
             <tr>
                 <td>专业</td>
                 <td>
                 ${user.mName}
                 </td>
             </tr>
           
             <tr>
                 <td>入学年份</td>
                 <td>
                 ${user.sYear}
                 </td>
             </tr>
           
             <tr>
                 <td>审核图片</td>
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
             </tr>
             
             <tr>
                 <td>审核状态</td>
                 <td>
                    <%if(user.getStatus()==1) {%>已通过<%} 
                    else if(user.getStatus()==2) {%>审核中<%} 
                    else if(user.getStatus()==3) {%>未通过<%} %>
                 </td>
             </tr>
             
             <%} 
             //老师
             else if(user.getDuty()==3){%>
             <tr>
                 <td>姓名</td>
                 <td>
                 ${user.name}
                 </td>
             </tr>
             
             <tr>
                 <td>大学</td>
                 <td>
                 ${user.cName}
                 </td>
             </tr>
             
             <tr>
                 <td>擅长领域</td>
                 <td>
                 ${user.type}
                 </td>
             </tr>
             
             <tr>
                 <td>职位</td>
                 <td>
                 ${user.career}
                 </td>
             </tr>
            
             <tr>
                 <td>审核图片</td>
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
								      <span>上传图片</span>
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
             </tr>
             
             <tr>
                 <td width="85">审核状态</td>
                 <td width="342">
                    <%if(user.getStatus()==1) {%>已通过<%} 
                    else if(user.getStatus()==2) {%>审核中<%} 
                    else if(user.getStatus()==3) {%>未通过<%} %>
                 </td>
              </tr>
             
             <%} %>
       </table>
						</div>
					</div>
				</div>
			</div>
			<div class="fh5co-tab-content" data-content="2" id="content2">
				<div class="fh5co-content-inner">
					<div class="row">
						<div class="col-md-12">
                            <form name="form2" onsubmit="return checkform2()" method="post" action="modUserPassword">
						    <table style="margin:0 auto">
						    <tr>
                              <td>密码：</td>
                              <td>
                                 <input id="modpw1" style="color:black" 
                                  maxlength=20 type="password" name="user.password">
                              </td>
                            </tr>
                            <tr>
                              <td>确认密码：</td>
                              <td>
                                 <input id="modpw2" style="color:black" 
                                  maxlength=20  type="password" name="user.password">
                              </td>
                            </tr>                       
                            <tr style="text-align:center">
                            <td colspan="2">
                              <input class="log signUp" type="submit" value="确定修改" />
                            </td>
                            </tr>
                            </table>
						</form>
						</div>
						
					</div>
				</div>
			</div>
			<div class="fh5co-tab-content" data-content="3" id="content3">
				<div class="fh5co-content-inner">
					<div class="row">
						<div class="col-md-12">
                             <!-- 非管理员用户显示 -->
		<form name="form3" method="post" action="modUserInfo" onSubmit="return checkForm3Empty()">
		<table style="margin:0 auto">
		<!-- 非管理员用户都拥有性别 -->
        <%
           //高考生和学长学姐有昵称修改
           if(user.getDuty()==1||user.getDuty()==2){
        %> 
           <tr><td width="85">昵称</td>
           <td width="342">
           <input  maxlength=10 style="color:black" 
             type="text" value="${user.nickname}" name="user.nickname" id="user.nickname"/> 
           </td>
           </tr>
           <br/>
        <% }
           //除管理员外都有性别显示
          if(user.getDuty()!=0) {%>
        <tr>
          <td width="85">性别</td>
          <td width="342">
          
          <input type="radio" name="user.sex" value="男" id="male_checked"/>男&nbsp;
          <input type="radio" name="user.sex" value="女" id="female_checked"/>女&nbsp;
          <input type="radio" name="user.sex" value="未设置" id="default_checked"/>未设置&nbsp;
          </td>
        </tr>     
        <tr>
        <td colspan="2">
        <input class="log signUp" type="submit" value="确定修改"/>
        </td>
        </tr>
        <%} %>
        </table>
        </form>

						</div>
						
					</div>
				</div>
			</div>
			<div class="fh5co-tab-content" data-content="4" id="content4">
				<div class="fh5co-content-inner">
					<div class="row">
						<div class="col-md-12">
						<form name="form4" method="post" action="modUserVerifiedInfo" 
		   onSubmit="return checkEmpty2()" ENCTYPE="multipart/form-data">
		      
            <% 
              if(user.getDuty()==1){
            %>
              <table>
              </table>
            <% }
             //学长学姐
             else if (user.getDuty()==2){%>
             <table  style="font-size:17px">
             <tr>
                 <td width="342px">大学</td>
                 <td style="color:black">
                 <input type="text" value='${user.cName}'  name="user.cName" id="user.cName"/>
                 </td>
             </tr>
             
             <tr>
                 <td>专业</td>
                 <td style="color:black">
                 <input type="text" value='${user.mName}'  name="user.mName" id="user.mName"/>
                 </td>
             </tr>
             
             <tr>
                 <td >入学年份</td>
                 <td style="color:black">
                 <input type="text" value='${user.sYear}' name="user.sYear" id="user.sYear"/>
                 </td>
             </tr>
            
             <tr>
                 <td>审核图片</td>
                 <td>
                    <div id="input7">
						<span id="picHint">请上传相关证件照片，最大为1M</span>
						<br/>
                        <div id="imgdiv"><img id="imgShow" width="200px" height="120px"/></div>
                        <input type="file" class="log login" id="up_img" name="pic"/>
					</div>
                 </td>
             </tr>
             <tr style="text-align:center">
                 <td colspan="2"><input class="log signUp" type="submit" value="提交审核"/>
                 <input class="log signUp" type="reset" value="重置"/></td>
             </tr>
             </table>
            <%}
              //老师 
             else if(user.getDuty()==3){%>
             <table style="font-size:17px">
             <tr>
                 <td>姓名</td>
                 <td style="color:black">
                 <input type="text"  value='${user.name}' name="user.name" id="user.name"/>
                 </td>
                 <td>大学</td>
                 <td style="color:black">
                 <input type="text"  value='${user.cName}' name="user.cName" id="user.cName"/>
                 </td>
             </tr>
            
             <tr>
                 <td>擅长领域</td>
                 <td style="color:black">
                 <input type="text"  value='${user.type}' name="user.type" id="user.type"/>
                 </td>
                 <td>职位</td>
                 <td style="color:black">
                 <input type="text"  value='${user.career}' name="user.career" id="user.career"/>
                 </td>
             </tr>
          
           
             <tr>
                 <td>审核图片</td>
                 <td colspan="3">
                    <div id="input7">
						<span id="picHint">请上传相关证件照片，最大为1M</span>
						<br/>
                        <div id="imgdiv"><img id="imgShow" width="200px" height="120px"/></div>
                        <input type="file" class="log login" id="up_img" name="pic"/>
					</div>
                 </td>
             </tr>
             <tr style="text-align:center">
                 <td colspan="4"><input class="log signUp" type="submit" value="提交审核"/>
                 <input class="log signUp" type="reset" value="重置"/></td>
             </tr>
             </table>
             
             <%} %>
		   </form>
						</div>
					</div>
				</div>
			</div>
		    <div class="fh5co-tab-content" data-content="5" id="content5">
				<div class="fh5co-content-inner">
					<div class="row">
						<div class="col-md-12">
                        <table style="margin:0 auto">
						<tr>
						<td width="200px">
						   <a 
						   href="<s:url action='showQuestion'/>?type=1">
						        学长问答</a>
						</td>
						<td>
						   <a 
						   href="<s:url action='showQuestion'/>?type=2">
						        权威在线</a>
						</td>
						</tr>
						</table>
						</div>
						<!-- 问题列表 -->
						<div>
						<s:if test="#request.type != null && #request.type !=0">
						<%
						   ArrayList ql=(ArrayList)request.getAttribute("ql"); 
                           if(ql==null){
                        %>
						<div>你还有没有任何提问！</div>
						<% } 
						 else{%>						
						    <!-- 大学版块列表 -->						   
						   <s:if test="#request.type == 1">
						   <table style="margin:0 auto">
						   <tr>
                           <td width="150px" style="text-align:center">问题标题</td>
                           <td width="200px" style="text-align:center">大学</td>
                           <td width="200px" style="text-align:center">提问时间</td>
                           </tr>
						    </table>
                           <table style="margin:0 auto" id="idData">
                        <%
                           for(int i=0;i<ql.size();i++)
                           {
                        	   Question q=(Question)ql.get(i);
                        	   pageContext.setAttribute("q",q,PageContext.PAGE_SCOPE);
                        %>
                           <tr style="text-align:center;font-size:17px">
                           <td width="150px">
                           <a href="<s:url action='showQInfo'>
							  <s:param name="question.qId">${q.qId}</s:param>
							  <s:param name="college.cName">${q.cName}</s:param>
							  <s:param name="currentPage">1</s:param>
						      </s:url>">${q.title}
						   </a>
                           </td>
                           <td width="200px">
                           ${q.cName}
                           </td>
                           <td width="200px">
                           ${q.datetime}
                           </td>
                           </tr>
                        <%
                           }
                        %>
                           <table width="60%" style="margin:0 auto">
                           <tr><td><div id="barcon" name="barcon"></div></td></tr>
                           </table>
                           </table>
                        
                           </s:if>
                           <s:elseif test="#request.type == 2">
                           <!-- 大类 -->
                           <table style="margin:0 auto">
						   <tr>
                           <td width="150px" style="text-align:center">问题标题</td>
                           <td width="200px" style="text-align:center">专业大类</td>
                           <td width="200px" style="text-align:center">提问时间</td>
                           </tr>
						   </table>
                           <table style="margin:0 auto" id="idData">
                        <%
                           for(int i=0;i<ql.size();i++)
                           {
                        	   TQuestion tq=(TQuestion)ql.get(i);
                        	   pageContext.setAttribute("tq",tq,PageContext.PAGE_SCOPE);
                        %>
                           <tr style="text-align:center;font-size:17px">
                           <td width="150px">
                           <a href="<s:url action='showTQInfo'>
							  <s:param name="tquestion.qId">${tq.qId}</s:param>
							  <s:param name="classify.classId">${tq.classId}</s:param>
							  <s:param name="currentPage">1</s:param>
						      </s:url>">${tq.title}
						   </a>
                           </td>
                           <td width="200px">
                           ${tq.className}
                           </td>
                           <td width="200px">
                           ${tq.qTime}
                           </td>
                           </tr>
                        <%
                           }
                        %>
                           <table width="60%" style="margin:0 auto">
                           <tr><td><div id="barcon" name="barcon"></div></td></tr>
                           </table>
                           </table>
                        
                           </s:elseif>
                        <%} %>
					    </s:if>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<footer id="fh5co-footer">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center">

				</div>
			</div>
		</footer>
		
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

<br/>
<!-- footer开始 -->
<div style="height:200px"></div>
<jsp:include page="down.jsp"/>
<!-- footer结束 -->
</body>
</html>