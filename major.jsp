<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="com.model.Major" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; UTF-8">
<title>专业解析</title>

<link rel="stylesheet" type="text/css" href="finalCSS/css/bootstrap.min.css">
<link href="finalCSS/css/nav.css" rel='stylesheet' type='text/css' />
<link href="finalCSS/css/colrank.css" rel='stylesheet' type='text/css' />
<link href="finalCSS/css/lbt.css" rel='stylesheet' type='text/css' />
<script src="finalCSS/js/jquery.min.js"></script>
<script src="finalCSS/js/lbt.js"></script>
<script src="finalCSS/js/bootstrap.min.js"></script>
<style>
/*
div{
border:1px solid red
}
*/
</style>
</head>
<body>
<div class="slider">
    <jsp:include page="up.jsp"></jsp:include>
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
<div class="major-top">
    <h1>2017热门专业库</h1>
</div>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-2 column">
			<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-main" 
						 href="#panel-element-galleryRank">专业排行榜</a>
					</div>
					<div id="panel-element-galleryRank" class="panel-collapse collapse">
						<div class="panel-body" style="text-align:center">
							<a href="<s:url action='displayGalRank'/>">专业薪酬排行榜</a>
						</div>
					</div>
				</div>
			<!-- 调后台数据库 -->
			<% 
			HashMap<String,ArrayList> classMajor=(HashMap<String,ArrayList>)request.getAttribute("classMajor"); 
			System.out.println("调后台专业大类数据完成！");
			//如果无大类信息
			if(classMajor.isEmpty()){
			%>
			<div>暂无专业大类信息可查！</div>
			<%
			}
			else{			
				Iterator classes = classMajor.keySet().iterator();
				int classNum = 1;
			%>
			    <div class="panel-group" id="panel-main">
			<% 	
			    while(classes.hasNext())
				{
					
					String classify = (String)classes.next();
			%>		
			    <div class="panel panel-default">
					<div class="panel-heading">
			<%
			        if(classNum==1)			
			        {
			%>
					<a class="panel-title" data-toggle="collapse" data-parent="#panel-main" 
					 href="#panel-element-<%=classNum%>"><%=classify %></a>
			<%			
			        }
			        else{
			%> 
			        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-main" 
					 href="#panel-element-<%=classNum%>"><%=classify %></a>
			<%       	
			        }
			%>						 
					</div>
			<%
			        if(classNum==1)			
			        {
			%>
					<div id="panel-element-<%=classNum%>" class="panel-collapse in">
			<%			
			        }
			        else{
			%> 
			        <div id="panel-element-<%=classNum%>" class="panel-collapse collapse">
			<%       	
			        }
			%>	
					<div class="panel-body">
					       <table>
			<%
			       //得到专业类的专业列表
			        ArrayList majorList=classMajor.get(classify);
			        Iterator majors = majorList.iterator();
			        while(majors.hasNext())
			        {
			        	String major=(String)majors.next();
			%>
					        
						    <tr>
						    <td>
							<a href="<s:url action='displayMajorInfo'>
							<s:param name='major.mName'><%=major %></s:param>
							</s:url>">
							<%=major %></a>
							</td>
						    </tr>
			<%       	
			        }
			%>			    	
						    </table>
					</div>
					</div>
					
				</div>
			<%		
					classNum++;
				}	
			}
			%>					
				
				
			</div>
		</div>
		
		<s:set var="userAction" value="#request.userAction"></s:set>
		<s:if test='#userAction=="displayMajorInfo"'>
		<div class="col-md-10 column">
			<div class="page-header">
				<h2>
				    <% Major requestedMajor = (Major)request.getAttribute("requestedMajor"); %>
					<small>代码：${requestedMajor.mId}</small> 
					${requestedMajor.mName}
					<%
					   if(requestedMajor.getGallery()>0){ %>  
					       <small id="salary">平均薪酬：${requestedMajor.gallery}</small>
					<%					 
					   } 
					   else{
					%>
					       <small id="salary">⊙_⊙抱歉暂无该专业薪酬信息</small>
					<%	   
					   }
					%>
				</h2>
			</div>
			<div class="tabbable" id="tabs-468605">
				<ul class="nav nav-tabs">
					<li class="active">
						 <a href="#panel-01" data-toggle="tab">专业介绍</a>
					</li>
					<li>
						 <a href="#panel-02" data-toggle="tab">核心课程</a>
					</li>
					<li>
						 <a href="#panel-03" data-toggle="tab">就业前景与方向</a>
					</li>
					<li>
						 <a href="#panel-04" data-toggle="tab">专业排名</a>
					</li>
				</ul>
				 <div style="width:10px;height:10px;clear:both;"></div>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-01">
						<%
						   String info=requestedMajor.getInfo();
						   if(info==null)
						   {
						%>
						   <div>0.0抱歉暂无介绍信息！</div>
						<%	   
						   }
						   else{
						%>
						   <jsp:include page="<%=requestedMajor.getInfo() %>"/>
						<%
						   }
						%>
					</div>
					<div class="tab-pane" id="panel-02">
						<%
						   String mainCourses=requestedMajor.getMainCourses();
						   if(mainCourses==null)
						   {
						%>
						   <div>0.0抱歉暂无录入核心课程！</div>
						<%	   
						   }
						   else{
						%>
						   <jsp:include page="<%=requestedMajor.getMainCourses() %>"/>
						<%
						   }
						%>
						
					</div>
					<div class="tab-pane" id="panel-03">
						<!-- 就业前景方向-->
						<%
						   String forward=requestedMajor.getForward();
						   if(forward==null)
						   {
						%>
						   <div>0.0抱歉暂无介绍信息！</div>
						<%	   
						   }
						   else{
						%>
						   <jsp:include page="<%=requestedMajor.getForward() %>"/>
						<%
						   }
						%>
                         
					</div>
					
					<div class="tab-pane" id="panel-04">
					<!-- 专业排名 -->
						<%
						  String majorRank = requestedMajor.getMajorRank();
						  if(majorRank==null)
						  {
						%>	  
						  <div>0.0抱歉暂无该专业大学排行信息！</div>
						<% 
						  }
						  else
						  {	
						%>						
						   <jsp:include page="<%=requestedMajor.getMajorRank() %>"/>
                        <% 
								 
						  } 
						%>
					</div>
				</div>
				
			</div>
		</div>
		</s:if>
		<s:elseif test='#userAction=="displayGalRank"'>
		<div>
		<%
		     ArrayList<Major> galList=(ArrayList<Major>)request.getAttribute("galList");
		     if(galList.isEmpty())
		     {
		%>
		     <h1>抱歉暂无统计薪酬排行！</h1>
		<%
		     }
		     else
		     {
		%>
		<div align="center">
		     <div style="color:red">专业平均薪酬排行榜（仅供参考）</div>
		     <div class="zypm">
               <div class="zypmtable">
             <table cellpadding="0" cellspacing="0">
             <tbody>
			 <tr>
			 <th class="pm">排名</th>
			 <th class="mc">专业名称</th>
			 <th class="dd">平均薪酬</th>
             </tr>
		<%						
			 for(int i=0;i<galList.size();i++)
			{							  						  			    
				Major major=galList.get(i);				                
			    pageContext.setAttribute("major",major,PageContext.PAGE_SCOPE);
		%>						
			<tr>
			<td class="t1"><%=i+1 %></td>
			<td class="t2">${major.mName}</td>
            <td class="t3">${major.gallery}</td>                 
            </tr>
       <%                           
			} 
	   %>
			</tbody>
            </table>
            </div>
            </div>
            </div>
	   <%
		    }
	   %>
		</div>
		</s:elseif>
		<s:else>
		<div class="col-md-8 column majorshouye">
		  <div class="majorsyintro">
                <h2>热门专业解析</h2>
                <h4>
                    我们为您带来：
                </h4>
                <h3>专业介绍、核心课程、平均薪酬、就业前景、专业院校排名
                </h3>
                <h4>
                    全面的专业解析，为您的职业规划保驾护航
                </h4>
                <p>
                    您想知道的，这儿都有。
                </p>
                <p class="gjdk">
                    赶紧点开左侧来浏览吧~
                </p>
                <span>声明：数据来源于教务部官方数据和高校本科培养计划及部分网络资源</span>
            </div>
		</div>
		</s:else>
	</div>
</div>
<div style="height:200px"></div>
<jsp:include page="down.jsp"></jsp:include>
</body>
</html>