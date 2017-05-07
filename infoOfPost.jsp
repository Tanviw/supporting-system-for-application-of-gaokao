<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.model.Question" %>
<%@page import="com.model.Answer" %>
<%@page import="com.model.User" %>
<%@page import="com.model.College" %>
<%@page import="com.DAO.UserDao" %>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE head PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript">

          function checkStatus(){  
        	  var status="<s:property value='#session.status'/>";
        	  if(status==0){
  				  alert("请先登录！");
  				  return false;
  			  }
        	  else{
        	      var duty="<s:property value='#session.duty'/>",
        	          sta="<s:property value='#request.Suser.status'/>",
        	          school="<s:property value='#request.college.cName'/>",
        	          userS="<s:property value='#request.Suser.cName'/>";
        	      if(duty!=2){
        	    	  alert("对不起，您不是学长/学姐，无回答资格！");
        	    	  return false;
        	      }
        	      else if(sta!=1){
        	    	  alert("对不起，请等待审核通过后回答！");
        	    	  return false;
        	      }
        	      else if(school!=userS){
        	    	  alert("对不起，您不是该学校的学长/学姐，无回答资格！");
        	    	  return false;
        	      }
        	      else{
      					var text=document.getElementById("text").value;
      					 if(text==""||text==null){
      						 alert("请输入回答内容！");
      						 return false;
      					 }
      					 else{
      						var len=text.length;
      				        var cnChar=text.match(/[^\x00-\x80]/g);//利用match方法检索出中文字符并返回一个存放中文的数组
      				        len+=cnChar.length;//算出实际的字符长度
      				        //alert("len="+len);
      						if(len>100){
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

           <%
              Question q=(Question)request.getAttribute("question");
              User u=(User)request.getAttribute("user");
              College c=(College)request.getAttribute("college");
              String duty=null;
              if(u.getDuty()==0) 
            	  duty="管理员";
              else if(u.getDuty()==1) 
            	  duty="高考生";
              else if(u.getDuty()==2) 
            	  duty="学长/学姐";
              else 
            	  duty="老师";
              pageContext.setAttribute("duty",duty,PageContext.PAGE_SCOPE);
              pageContext.setAttribute("q",q,PageContext.PAGE_SCOPE);
              pageContext.setAttribute("c",c,PageContext.PAGE_SCOPE);
           %>


<title>${q.title}</title>

<!-- 
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<script src="bootstrap/js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
 -->
 <link href="//cdn.bootcss.com/bootstrap/3.0.1/css/bootstrap-theme.css" rel="stylesheet">
 <link href="//cdn.bootcss.com/bootstrap/3.0.1/css/bootstrap-theme.min.css" rel="stylesheet">
 <link href="//cdn.bootcss.com/bootstrap/3.0.1/css/bootstrap.css" rel="stylesheet">
 <link href="//cdn.bootcss.com/bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet">
 <script src="//cdn.bootcss.com/bootstrap/3.0.1/js/bootstrap.js"></script>
 <script src="//cdn.bootcss.com/bootstrap/3.0.1/js/bootstrap.min.js"></script>
 <script src="//cdn.bootcss.com/bootstrap/3.0.1/js/button.js"></script>
 <script src="//cdn.bootcss.com/bootstrap/3.0.1/js/button.min.js"></script>

    <!-- up&down -->
    <link href="css/nav.css" rel='stylesheet' type='text/css' />
    <link href="css/colrank.css" rel='stylesheet' type='text/css' />
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
    <link href="css/lbt.css" rel='stylesheet' type='text/css' />
    <script src="js/lbt.js"></script>


</head>
<body>


<style>
/*div{
	border:1px solid red;
}*/
body{
    background:url(finalCSS/images/bac.jpg);
}
</style>


<jsp:include page="up.jsp"/>
<br/><br/><br/><br/>	


 <!-- 导航开始 -->     
 <div>   
          <a style="color:#BF5148" href=<s:url action="display">
                    <s:param name="college.cName">${c.cName}</s:param>
                    <s:param name="currentPage">${currentPage}</s:param>
                    <s:param name="question.title">Null</s:param>
          </s:url>>${c.cName}</a>
                <font color=white>>>${q.title}</font>
</div>  
 <!-- 导航结束 -->  

<div class="container-fluid">
 <!-- 问题开始 --> 
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1><font color=white>
					${q.title}<small>提问者：${q.userId}(${duty})</small>
				</font></h1>
			</div>
			<p><font color=white>
				${q.context}
			</font></p>
			<s:if test="#session.duty == 0"><p>
               <a href=<s:url action="delPosts">
                    <s:param name="question.qId">${q.qId}</s:param>
                    <s:param name="college.cName">${c.cName}</s:param>
                    <s:param name="currentPage">${currentPage}</s:param>
               </s:url>>删除该问题</a></p>
            </s:if>    
		</div>
	</div>
 <!-- 问题结束 -->  
	<br><br><br>
	
 <!-- 回答列表开始 --> 
    <s:if test='#request.aList==null'>
    <div>
                 <p><font color=white>暂时还没有人向该问题提出回答，欢迎回答！</font></p>
    </div>
    </s:if>
    <s:else>
          <%
            String[] colors={"rgb(53, 189, 199);","rgb(252, 166, 30);","rgb(230, 90, 79);","rgb(161, 193, 92);","rgb(118, 203, 162);","rgb(143, 130, 188);","rgb(242, 156, 159);","rgb(255,235,205)"};
            
            ArrayList aList=(ArrayList)request.getAttribute("aList");
            pageContext.setAttribute("aL",aList,PageContext.PAGE_SCOPE);
            int n=0,qNumber=aList.size();
            if(qNumber>12)
            	n=3;
            else{
            	if(qNumber%4==0)  n=qNumber/4;
            	else n=qNumber/4+1;
            }
            n=n*310;
            pageContext.setAttribute("n",n,PageContext.PAGE_SCOPE);
            pageContext.setAttribute("qNumber",qNumber,PageContext.PAGE_SCOPE);
          %>
    <div id="showA" class="row clearfix" style="height:${n};width:1080px;overflow:hidden;margin:0 auto;">
          <%  for(int i=0;i<aList.size();i++){
            	Answer a=(Answer)aList.get(i);
            	pageContext.setAttribute("a",a,PageContext.PAGE_SCOPE);
                pageContext.setAttribute("colors",colors[i%8],PageContext.PAGE_SCOPE);
          %>
          <div style="position: relative;float: left;margin-top: 10px;margin-right: 
                      10px;margin-left: 10px;width: 245px;height: 300px;cursor: pointer;
                      background-color:${colors}">
			<div>
			<h3><font color="#fff">
				回答者：${a.userId}
			</font></h3>
			</div>
			<div style="position:absolute;text-align: center;width:90%;height:50%;
			            margin-top: 10px;margin-right: 10px;margin-left: 10px;">
				<h2><font color="#fff">${a.context}
				</font></h2>
			</div>
			<div style="position: absolute;bottom: 0;left: 0;padding-bottom: 15px;width: 100%;text-align: center;">
				<a  class="btn btn-default"href="<s:url action='praise'>
				  <s:param name="answer.aId">${a.aId}</s:param>
                  <s:param name="question.qId">${q.qId}</s:param>
                  <s:param name="college.cName">${c.cName}</s:param>
                  <s:param name="currentPage">${currentPage}</s:param>
                </s:url>">${a.numOfPraise}人赞过</a>
			</div>
			 <s:if test="#session.duty == 0"><p>
             <a href=<s:url action="delReply">
                  <s:param name="answer.aId">${a.aId}</s:param>
                  <s:param name="question.qId">${q.qId}</s:param>
                  <s:param name="college.cName">${c.cName}</s:param>
                  <s:param name="currentPage">${currentPage}</s:param>
             </s:url>>删除该回答</a>
             </p></s:if> 
		  </div>
          <%  }
          %>
	</div>
	</s:else>
 <!-- 回答列表结束 --> 
	<br><br><br>
	
 <!-- 查看更多开始 --> 
    <s:if test='#request.aList!=null'>
    <% 
    int qNumber=Integer.parseInt(pageContext.getAttribute("qNumber").toString());
    if(qNumber>12){
    %>
	<div class="row clearfix" align="center">
		<div class="col-md-12 column">
			 <button id="more" onClick="add();" class="btn btn-lg btn-info" type="button">查看更多</button>
		</div>
	</div>
	<%}%>
	</s:if>
 <!-- 查看更多结束 --> 
	<br><br><br>
	
 <!-- 发表回复开始 --> 	
    <form name="form1" method="post" action="addReply" id="form1" onSubmit="return checkStatus()">
    <input type="text" name="answer.userId" value="${sessionScope.userId}" style="visibility:hidden"/>
	<input type="text" name="college.cName" value="${c.cName}" style="visibility:hidden"/>
	<input type="text" name="answer.qId" value="${q.qId}" style="visibility:hidden"/>
	<input type="text" name="answer.cId" value="${q.cId}" style="visibility:hidden"/>
	<input type="text" name="currentPage" value="${currentPage}" style="visibility:hidden"/>
    
	<div class="row clearfix" style="margin:0 auto;padding: 30px;background-color:#fff;width:80%">
	  <s:if test="#session.userId!= null">
	   <s:if test="#session.duty!=0">
	   <div class="row clearfix">
		<div class="col-md-3 column" align="center">
         <p> 用户：${sessionScope.userId}</p>
         <p>身份：
         <s:if test="#session.duty==1">
		  高考生
         </s:if>
         <s:elseif test="#session.duty==2">
		  学长/学姐
         </s:elseif>
         <s:else>
		  老师
         </s:else>
         </p>
		</div>
		<div class="col-md-9 column">
        <textarea id="text" placeholder="回答不得超过50字！" class="form-control" style="resize:none;height:180px;width:70%;" name="answer.context"></textarea>
		</div>
	   </div>
	   <div class="row clearfix" align="center" style="margin-top: 10px;">
		<input class="btn btn-default" type="submit" value="回答"/>
	   </div>
	   </s:if>
	  </s:if> 
	  <s:else>
	  <div class="row clearfix">
		<div class="col-md-3 column" align="center">
		<p>未登录</p>
		</div>
		<div class="col-md-9 column">
        <textarea placeholder="请先登录！" class="form-control" style="resize:none;height:180px;width:70%;" class="input-medium search-query" name="answer.context" id="textarea" ></textarea>
		</div>
	  </div>
	  <div class="row clearfix" align="center" style="margin-top: 10px;">
		<input class="btn btn-default" type="submit" value="回答"/>
	  </div>
	  </s:else>
	</div>
	
	</form>
 <!-- 发表回复结束 --> 
</div>


<script>
var counter = 1;
function add(){
	  counter++;
	  var number="<s:property value='#attr.qNumber'/>";
	  alert("number="+number);
	  number=parseInt(number);
	  if(number>=(counter*12)){
		  document.getElementById("showA").style.height=counter*930+'px';
	  }
	  else{
		  var i=number-((counter-1)*12);
		  if(i%4==0)
			  i=i/4;
		  else
			  i=i/4+1;
		  document.getElementById("showA").style.height=(counter-1)*930+i*310+'px';
	  }
	  if(counter*9>=number){
		  document.getElementById("more").style.display="none";
	  }
}
</script>


<br/><br/><br/><br/><br/>
<jsp:include page="down.jsp"/>

</body>
</html>