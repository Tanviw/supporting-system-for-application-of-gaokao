<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.text.*" %>
<%@page import="com.model.Question" %>
<%@page import="com.model.College" %>
<%@taglib uri="/struts-tags" prefix="s" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    
    <title>学长问答</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

 <link href="//cdn.bootcss.com/bootstrap/3.0.1/css/bootstrap-theme.css" rel="stylesheet">
 <link href="//cdn.bootcss.com/bootstrap/3.0.1/css/bootstrap-theme.min.css" rel="stylesheet">
 <link href="//cdn.bootcss.com/bootstrap/3.0.1/css/bootstrap.css" rel="stylesheet">
 <link href="//cdn.bootcss.com/bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet">
 <script src="//cdn.bootcss.com/bootstrap/3.0.1/js/bootstrap.js"></script>
 <script src="//cdn.bootcss.com/bootstrap/3.0.1/js/bootstrap.min.js"></script>
 <script src="//cdn.bootcss.com/bootstrap/3.0.1/js/button.js"></script>
 <script src="//cdn.bootcss.com/bootstrap/3.0.1/js/button.min.js"></script>



    <!-- up&down -->
    <link href="finalCSS/css/nav.css" rel='stylesheet' type='text/css' />
    <link href="finalCSS/css/colrank.css" rel='stylesheet' type='text/css' />
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
    <link href="finalCSS/css/lbt.css" rel='stylesheet' type='text/css' />
    <script src="finalCSS/js/lbt.js"></script>
	
	
  </head>
  <body>
 


<style>
/*
div{
	border:1px solid red;
}
*/
body{
    /*background-color:#B7B7B7;*/
    background:url(finalCSS/images/bac.jpg);
}
</style>

 
   <script type="text/javascript">
   function checkSearchCollege()  
	{  
	   var searchCollege=document.getElementById("searchCollege").value;
	   if(searchCollege==""||searchCollege==null){
		   alert("请输入大学名！");
		   return false;
	   }
	   else 
		   return true;
	}
   function checkSearchTitle()  
	{  
	   var searchTitle=document.getElementById("searchTitle").value;
	   if(searchTitle==""||searchTitle==null){
		   alert("请输入问题关键字！");
		   return false;
	   }
	   else 
		   return true;
	}
   
   function checkPost()  
		{  
			var status="<s:property value='#session.status'/>";
			if(status==0)
			{
				alert("请先登录！");
				return false;
			}
			else{
				var duty="<s:property value='#session.duty'/>";
				if(duty!=1){
					alert("对不起，您不是高考生，无提问资格！");
					return false;
				}
				else{
					var titletext=document.getElementById("titletext").value;
					   if(titletext==""||titletext==null){
						   alert("请输入标题！");
						   return false;
					   }
					   else{
						    var context=document.getElementById("context").value;
     						var len=context.length;
     				        var cnChar=context.match(/[^\x00-\x80]/g);//利用match方法检索出中文字符并返回一个存放中文的数组
     				        len+=cnChar.length;//算出实际的字符长度
     				        //alert("len="+len);
     						if(len>200){
 						    	alert("回答内容超过限制字数！");
 	      						return false;
 						    }
 						    else
 						    	return true;
     					 }
				}
			}
		}
	</script>
 
 
 
  <jsp:include page="up.jsp"/>
  <br/><br/><br/><br/>	
  
  <div class="container-fluid">
	<div class="row clearfix">
		<div class="col-md-12 column">
			
				<!--导航栏开始-->
			    <div class="col-md-2 column" style="background-color:rgba(13,13,13,0.25);">
					<ul class="nav nav-stacked nav-pills">
						<li class="nav-header">
							<h3><font color=#fff>热门大学</font></h3>
						</li>
			           <s:if test='#request.hotList!=null'> 
			           <%
			            ArrayList hotList=(ArrayList)request.getAttribute("hotList");
						for(int i=0;i<hotList.size();i++){
							College c=(College)hotList.get(i);
							pageContext.setAttribute("c",c,PageContext.PAGE_SCOPE);
			           %>
			           <s:set var="school" value="#request.school"></s:set>
			           <s:if test='#school== #attr.c.cName'> 
			           <li class="active">
						    <a href="<s:url action='display'>
                               <s:param name="college.cName">${c.cName}</s:param>
                               <s:param name="currentPage">1</s:param>
                               <s:param name="question.title">Null</s:param>
                            </s:url>">${c.cName}</a>
						</li>
						</s:if>
						<s:else>
						<li>
						    <a style="color:white" href="<s:url action='display'>
                               <s:param name="college.cName">${c.cName}</s:param>
                               <s:param name="currentPage">1</s:param>
                               <s:param name="question.title">Null</s:param>
                            </s:url>">${c.cName}</a>
						</li>
						</s:else>
						<%} %>
						</s:if> 
						<li class="nav-divider" style="background-color:grey;">
						</li>
						<li>
						<a style="color:white" href="<s:url action='display'>
                          <s:param name="college.cName">all</s:param>
                        </s:url>">查看更多</a> 
						</li>
					</ul>
				</div>
				<!--导航栏结束-->
				<!--列表开始-->
				<div class="col-md-10 column" style="background-color:rgba(13,13,13,0.25);">
					<div class="row clearfix" style="margin-top: 10px;margin-top: 10px;">
						<div class="col-md-12 column">
						   <!--搜索框开始-->
			               <div class="col-md-12 column collapse navbar-collapse">
			               <form class="navbar-form navbar-left" id="search" action="display" onSubmit="return checkSearchCollege()">
			                 <div class="form-group">
			                 <input id="searchCollege" class="form-control" type="search" placeholder="请输入大学名" name="college.cName" />
			                 </div>
			                 <button type="submit" class="btn btn-default" value="go">查找</button>
			                 <input size="2" type="text" name="currentPage" value="1" style="visibility:hidden"/>
			                 <input size="2" type="text" name="question.title" value="Null" style="visibility:hidden"/>
			               </form>
			               <s:if test='#request.school!=null'>
			               <span class="label label-default">当前大学</span>
			               <h5>
			               <a style="color:white" href="<s:url action='display'>
                               <s:param name="college.cName">${school}</s:param>
                               <s:param name="currentPage">1</s:param>
                               <s:param name="question.title">Null</s:param>
                            </s:url>">${school}</a>
			               </h5>        
			               </s:if>
			               </div>
			               <!--搜索框结束-->
			               <!-- 板块栏开始 -->
			               <s:if test='#request.school!=null'>
			               <div class="col-md-12 column collapse navbar-collapse">
			               <form class="navbar-form navbar-left" id="search" action="display" onSubmit="return checkSearchTitle()">
			                 <div class="form-group">
			                 <input id="searchTitle" class="form-control" type="search" placeholder="请输入问题关键字" name="question.title" />
			                 </div>
			                 <button type="submit" class="btn btn-default" value="go">搜索</button>
			                 <input size="2" type="text" name="currentPage" value="1" style="visibility:hidden"/>
			                 <input size="2" type="text" name="college.cName" value="${school}" style="visibility:hidden"/>
			               </form>
			               <s:if test='#request.keywordOfQ!="Null"'>
			               <span class="label label-default">
			                                            根据关键字“<s:property value='#request.keywordOfQ'/>” 
			               </span> 
			               <br><br>
			                <span class="label label-default">
			                                            共搜索到<s:property value='#request.totalCount'/>条记录
			               </span> 
			               </s:if>      
			               </div>
			               </s:if>
			               <!-- 板块栏结束 -->
			               <s:set var="action" value="#request.action"></s:set>
			               <s:if test='#action=="display"'>
			                <!--分页表格开始-->
			                <s:if test='#request.keywordOfQ=="Null"'>
			                <div class="col-md-12 column" style="margin:0 auto;margin-top: 10px;">
							<table class="table table-hover">   	
							<s:if test='#request.school==null'><tr><td>无该大学！</td></tr></s:if>
							<s:elseif test='#request.questions==null'>
							  <tr><td> 暂时还没有人向该大学提出问题，欢迎提问！ </td></tr>
							</s:elseif>   
							<s:else>
							<thead>
									<tr class="warning">
										<th>
											问题
										</th>
										<th>
											回答数
										</th>
									</tr>
							</thead>
							<%
							ArrayList qList=(ArrayList)request.getAttribute("questions");
							for(int i=0;i<qList.size();i++){
								Question q=(Question)qList.get(i);
								pageContext.setAttribute("q",q,PageContext.PAGE_SCOPE);
							%>
							<tbody>
							<tr>
							<td style="text-align:left">
							<a href="<s:url action='showQInfo'>
							  <s:param name="question.qId">${q.qId}</s:param>
							  <s:param name="college.cName">${school}</s:param>
							  <s:param name="currentPage">${currentPage}</s:param>
						    </s:url>">${q.title}</a>
						    </td>
						    <td style="text-align:left">${q.numOfAn}</td>
<!-- 						    <td class="default">
							<a href="<s:url action='showQInfo'>
							  <s:param name="question.qId">${q1.qId}</s:param>
							  <s:param name="college.cName">${request.school}</s:param>
						    </s:url>">${q1.title}</a>
						    </td>
						    <td class="warning">
							<a href="<s:url action='showQInfo'>
							  <s:param name="question.qId">${q2.qId}</s:param>
							  <s:param name="college.cName">${request.school}</s:param>
						    </s:url>">${q2.title}</a>
						    </td>
						    <td class="info">
							<a href="<s:url action='showQInfo'>
							  <s:param name="question.qId">${q3.qId}</s:param>
							  <s:param name="college.cName">${request.school}</s:param>
						    </s:url>">${q3.title}</a>
						    </td> -->
						    </tr>
						    <% }%>
						    </tbody>
						    </s:else>
							</table>
							</div>
							<div style="margin:0 auto;text-align:center;">
								<ul  class="pagination">
							<s:if test='#request.questions!=null&&#request.totalPages!="1"'>
							<% 
							String tp=request.getAttribute("totalPages").toString(),
							       tc=request.getAttribute("totalCount").toString(),
							       cp=request.getAttribute("currentPage").toString();
							int totalPages=Integer.parseInt(tp),totalCount=Integer.parseInt(tc),
									currentPage=Integer.parseInt(cp);
							if(currentPage==1){
							%>	
							<li>
							    <a href="<s:url action='display'>
									<s:param name="college.cName">${school}</s:param>
									<s:param name="currentPage">${currentPage}</s:param>
									<s:param name="question.title">Null</s:param>
								</s:url>">上一页</a>
						    </li>
							<%}
							else{
							pageContext.setAttribute("forward",currentPage-1,PageContext.PAGE_SCOPE);
							%>
							<li>
							    <a href="<s:url action='display'>
									<s:param name="college.cName">${school}</s:param>
									<s:param name="currentPage">${forward}</s:param>
									<s:param name="question.title">Null</s:param>
								</s:url>">上一页</a>
						    </li>
						    <%}
							for(int i=1;i<=totalPages;i++){
								pageContext.setAttribute("i",i,PageContext.PAGE_SCOPE);
								if(i==currentPage){
							%>
							        <li class="active">
										<a href="<s:url action='display'>
										  <s:param name="college.cName">${school}</s:param>
										  <s:param name="currentPage">${i}</s:param>
										  <s:param name="question.title">Null</s:param>
										</s:url>">${i}</a>
									</li>
							<%  }
							    else{
							%>
									<li>
										<a href="<s:url action='display'>
											<s:param name="college.cName">${school}</s:param>
										    <s:param name="currentPage">${i}</s:param>
										    <s:param name="question.title">Null</s:param>
										</s:url>">${i}</a>
									</li>
							<%  }
							%>		
							<% }
							if(currentPage==totalPages){
							%>
							<li>
								<a href="<s:url action='display'>
									<s:param name="college.cName">${school}</s:param>
									<s:param name="currentPage">${currentPage}</s:param>
									<s:param name="question.title">Null</s:param>
								</s:url>">下一页</a>
						    </li>
							<%}
							else{
								pageContext.setAttribute("next",currentPage+1,PageContext.PAGE_SCOPE);
							%>
							<li>
							    <a href="<s:url action='display'>
									<s:param name="college.cName">${school}</s:param>
									<s:param name="currentPage">${next}</s:param>
									<s:param name="question.title">Null</s:param>
								</s:url>">下一页</a>
						    </li>
							<%}%>
							</s:if>
								</ul>
							</div>
							</s:if>
							   <!-- 搜索到的问题列表 -->
							<s:else>
							<div class="col-md-12 column" style="margin:0 auto;margin-top: 10px;">
							<table class="table table-hover">
							<tr>    
							<s:if test='#request.questions==null'>
							  <td> 未搜索到相关问题！ </td>
							</s:if> 
							<s:else>
							<thead>
									<tr class="warning">
										<th>
											问题
										</th>
										<th>
											回答数
										</th>
									</tr>
							</thead>
							<%
							ArrayList qList=(ArrayList)request.getAttribute("questions");
							for(int i=0;i<qList.size();i++){
								Question q=(Question)qList.get(i);
								pageContext.setAttribute("q",q,PageContext.PAGE_SCOPE);
							%>
							<tbody>
							<tr>
							<td style="text-align:left">
							<a href="<s:url action='showQInfo'>
							  <s:param name="question.qId">${q.qId}</s:param>
							  <s:param name="college.cName">${school}</s:param>
							  <s:param name="currentPage">${currentPage}</s:param>
						    </s:url>">${q.title}</a>
						    </td>
						    <td style="text-align:left">${q.numOfAn}</td>
						    </tr>
						    <% }%>
							</tbody>
							</s:else>
							</tr>
							</table>
							</div>
							<div style="margin:0 auto;text-align:center;">
								<ul class="pagination">
							<s:if test='#request.questions!=null&&#request.totalPages!="1"'>
							<% 
							String tp=request.getAttribute("totalPages").toString(),
							       tc=request.getAttribute("totalCount").toString(),
							       cp=request.getAttribute("currentPage").toString();
							int totalPages=Integer.parseInt(tp),totalCount=Integer.parseInt(tc),
									currentPage=Integer.parseInt(cp);
							if(currentPage==1){
							%>	
							<li>
							    <a href="<s:url action='display'>
									<s:param name="college.cName">${school}</s:param>
									<s:param name="currentPage">${currentPage}</s:param>
									<s:param name="question.title">${keywordOfQ}</s:param>
								</s:url>">上一页</a>
						    </li>
							<%}
							else{
							pageContext.setAttribute("forward",currentPage-1,PageContext.PAGE_SCOPE);
							%>
							<li>
							    <a href="<s:url action='display'>
									<s:param name="college.cName">${school}</s:param>
									<s:param name="currentPage">${forward}</s:param>
									<s:param name="question.title">${keywordOfQ}</s:param>
								</s:url>">上一页</a>
						    </li>
						    <%}
							for(int i=1;i<=totalPages;i++){
								pageContext.setAttribute("i",i,PageContext.PAGE_SCOPE);
								if(i==currentPage){
							%>
							        <li class="active">
										<a href="<s:url action='display'>
										  <s:param name="college.cName">${school}</s:param>
										  <s:param name="currentPage">${i}</s:param>
										  <s:param name="question.title">${keywordOfQ}</s:param>
										</s:url>">${i}</a>
									</li>
							<%  }
							    else{
							%>
									<li>
										<a href="<s:url action='display'>
											<s:param name="college.cName">${school}</s:param>
										    <s:param name="currentPage">${i}</s:param>
										    <s:param name="question.title">${keywordOfQ}</s:param>
										</s:url>">${i}</a>
									</li>
							<%  }
							%>		
							<% }
							if(currentPage==totalPages){
							%>
							<li>
								<a href="<s:url action='display'>
									<s:param name="college.cName">${school}</s:param>
									<s:param name="currentPage">${currentPage}</s:param>
									<s:param name="question.title">${keywordOfQ}</s:param>
								</s:url>">下一页</a>
						    </li>
							<%}
							else{
								pageContext.setAttribute("next",currentPage+1,PageContext.PAGE_SCOPE);
							%>
							<li>
							    <a href="<s:url action='display'>
									<s:param name="college.cName">${school}</s:param>
									<s:param name="currentPage">${next}</s:param>
									<s:param name="question.title">${keywordOfQ}</s:param>
								</s:url>">下一页</a>
						    </li>
							<%}%>
							</s:if>
								</ul>
							</div>
							</s:else>
							<!--分页表格结束-->
							<br>
							<!--发帖框开始-->
							<s:if test='#request.school!=null'>
							<s:if test="#session.userId!= null && #session.duty!=0">
							<form name="form1" method="post" action="addPosts" id="form1" onSubmit="return checkPost()">
							<input type="text" name="college.cName" value="${school}" style="visibility:hidden"/>
							<input type="text" name="user.id" value="${sessionScope.userId}" style="visibility:hidden"/>
							<input type="text" name="currentPage" value="${currentPage}" style="visibility:hidden"/>
							<div class="row clearfix">
							      <div class="col-md-1 column" align="center">
							            <p><font color=white>标题</font></p>
							      </div>
							      <div class="col-md-5 column form-group">
							           <input id="titletext" placeholder="标题不得超过20字！" class="form-control" type="text" name="question.title" size="20" maxlength="20">
							      </div>
							</div>
							<div class="row clearfix">
							      <div class="col-md-1 column" align="center">
							            <p><font color=white>内容</font></p>
							      </div>
							      <div class="col-md-9 column">
							           <textarea id="context" placeholder="内容不得超过100字！" style="resize:none;height:180px;width:70%;" class="form-control" name="question.context"></textarea>
							      </div>
							</div>
							<div class="row clearfix" align="right" style="margin-top: 10px;">
							<div class="col-md-7 column">
							<input class="btn btn-default" type="submit" value="发表"/>
							</div>
							</div>
							</form>
							</s:if>
							<s:elseif test="#session.userId==null">
							<form name="form1" method="post" action="addPosts" id="form1" onSubmit="return checkPost()">
							<div class="row clearfix">
							      <div class="col-md-1 column" align="center">
							            <p><font color=white>标题</font></p>
							      </div>
							      <div class="col-md-5 column form-group">
							           <input id="titletext" placeholder="请先登录！" class="form-control" type="text" name="question.title" maxlength="20">
							      </div>
							</div>
							<div class="row clearfix">
							      <div class="col-md-1 column" align="center">
							            <p><font color=white>内容</font></p>
							      </div>
							      <div class="col-md-9 column">
							           <textarea id="context" placeholder="请先登录！" style="resize:none;height:180px;width:70%;" class="form-control" name="question.context"></textarea>
							      </div>
							</div>
							<div class="row clearfix" align="right" style="margin-top: 10px;">
							<div class="col-md-7 column">
							<input class="btn btn-default" type="submit" value="发表"/>
							</div>
							</div>
							</form>
							</s:elseif>
							</s:if>
							<!--发帖框结束-->
						    </s:if>
						</div>
						<!-- 查看更多 -->
						   <s:set var="collegeList" value="#request.collegeList"></s:set>
			               <s:if test='#collegeList!=null'> 
			               <div class="col-md-8 column" style="width:750px" align="center">
			               <ul class="list-inline">
			                  <%
			                    ArrayList collegeList=(ArrayList)request.getAttribute("collegeList");
			                    for(int i=0;i<collegeList.size();i++){
									College ac=(College)collegeList.get(i);
									pageContext.setAttribute("ac",ac,PageContext.PAGE_SCOPE);
								%>
			                  <li>
			                   <h5><a style="color:white" href="<s:url action='display'>
                                  <s:param name="college.cName">${ac.cName}</s:param>
                                  <s:param name="currentPage">1</s:param>
                                  <s:param name="question.title">Null</s:param>
                               </s:url>">${ac.cName}</a></h5>
			                  </li>
			                  <%} %>
			               </ul>
			               </div>
			               </s:if>
			            <!-- 查看更多  -->
			            <!-- index -->
			               <s:if test='#request.index!=null'> 
			               <div class="col-md-8 column" style="height:500px;width:750px;color:white;margin-left: 100px;" align="center">
			               <div>		             
			              <h1> 欢迎使用！</h1><br/>
			              <h3> 左侧为热门大学，选择你向往的大学向学长学姐们提问吧！<br/><br/>
			               注意，只有高考生可以提问哦~请学长学姐们积极回答~<br/><br/>
			               点击查看更多可显示所有大学。</h3>
			               </div>	
			               </div>
			               </s:if>
			            <!-- index  -->
					</div>
				</div>
				<!--列表结束-->
		</div>
	</div>
</div>
  
  <br/><br/><br/><br/><br/>
  <jsp:include page="down.jsp"/>
  
  </body>
</html>
