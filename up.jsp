<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link href="finalCSS/css/nav.css" rel='stylesheet' type='text/css' />
    <link href="finalCSS/css/colrank.css" rel='stylesheet' type='text/css' />
    <link href="finalCSS/css/lbt.css" rel='stylesheet' type='text/css' />
    <link href="finalCSS/font-awesome-4.7.0/css/font-awesome.min.css" rel='stylesheet' type='text/css' />
    <script src="finalCSS/js/jquery.min.js"></script>
    <script src="finalCSS/js/cbs.js"></script>
    <script src="finalCSS/js/lbt.js"></script>
    <script src="finalCSS/js/bootstrap.min.js"></script>
 </head>
<body>   
<div class="header-top">
 <% 
   String proName= this.getServletContext().getContextPath()+"/";//项目名称 
  
   //当前页面链接
  String uri= (String)pageContext.getRequest().getAttribute("javax.servlet.forward.request_uri");
  //用于action
    if(uri!=null)
  {
     uri=uri.replace(proName, "");
     //out.println("uri:"+uri);
  }
    else
  {
    	//out.println("uri:null");
  }
  String qs=request.getQueryString();
  System.out.println("QueryString:"+qs);
  //用于jsp
     
	  String url=request.getRequestURL().toString();
	 // out.println("url:"+url);
	 
	 String address=null;//登录前页面
				String adType=null;//登录前页面类型：action。。。
				//结果为action
				if(uri!=null&&!uri.equals("null"))
				{
					//uri中含有?代表request是url编码，地址就为uri
					//非url编码，qs若为空，则处理uri
					if(qs!=null)
					{
					
						if(!qs.equals("null")&&uri.indexOf("?")==-1)
						{
							address=uri+"?"+qs;
						}
					}
					else
						address=uri;
					adType="action";
				}
				//结果为jsp
				else if(url!=null&&!url.equals("null"))
				{
					url=url.substring(url.indexOf("bcnf/")+5);
					if(qs!=null)
					{
						if(!qs.equals("null")&&url.indexOf("?")==-1)//有参数的jsp或html
							address=url+"?"+qs;
					}
					
					else
						address=url;
					adType="jsp";
				}
				String from=address;
				if(from!=null)
				{
					from=from.replace("&", "&amp;");
					from=URLEncoder.encode(from,"UTF-8");
				}
				System.out.println("up.jspfrom："+from);
  %>
  
        <div class="inner">
            <div>
			<a href="index.jsp" class="siteLogo"></a>
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
                    <li><a href="transstu.jsp">关于插班生</a></li>
                </ul>
            </div>
            <!--  
            <div class="searchT fl">
            <form action="#" >
                <input type="text" placeholder="搜索你感兴趣的学校，专业" class="sr fl" name="searchFor"/>
                <input type="submit" value="搜索" class="sr_btn fl" />
            </form> 
            </div>
            -->
            <div class="user fr">
                <s:set var="status" value="#session.status"></s:set>
				<s:if test="#status != 1">
                  <a href="login.jsp?from=<%=from %>" class="log signUp">登录/注册</a>
				</s:if>
				<s:else>
					<a href="<s:url action='showUserInfo'/>"> 					  
					  <span style="color: #FFFFFF;font-size:20px;">${sessionScope.userId}</span>
					</a>
					&nbsp;&nbsp;
					<a href="<s:url action='logout'/>?from=<%=from %>" id="login" style="color: #FFFFFF;font-size:20px;">注销</a>
				</s:else>
            </div>

        </div>
</div>
</body> 