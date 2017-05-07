<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="java.util.*" %>
<%@ page import="com.model.College" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>大学排行</title>

	<title>大学排行</title>
    <link rel="stylesheet" type="text/css" href="finalCSS/css/bootstrap.min.css">
    <link href="finalCSS/css/nav.css" rel='stylesheet' type='text/css' />
    <link href="finalCSS/css/colrank.css" rel='stylesheet' type='text/css' />
    <link href="finalCSS/css/lbt.css" rel='stylesheet' type='text/css' />
    <script src="finalCSS/js/jquery.min.js"></script>
    <script src="finalCSS/js/lbt.js"></script>
    <script src="finalCSS/js/bootstrap.min.js"></script>
    <script src="js/page.js"></script>
</head>
<body>
<script>
  window.onload=function(){
	  goPage(1,20);
  }
</script>
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
    <div class="un_rank">
        <div class="un_top">
            <h3>2017中国大学排行榜TOP100</h3>
        </div>
    </div>
    <div class="tableth">
        <table>
            <tr>
                <th class="t0">排名</th>
                <th class="t2">学校名称</th>
                <th class="t3">学校所在地</th>
                <th class="t4">类型</th>
                <th class="t5">批次</th>
               
                
            </tr>
        </table>
        <table cellpadding="0" cellspacing="0" id="idData">
            <tbody>
            <%
               ArrayList rankList=(ArrayList)request.getAttribute("rankList");
               for(int i=0;i<rankList.size();i++)
               {
            	   College college=(College)rankList.get(i);
            	   pageContext.setAttribute("college",college,PageContext.PAGE_SCOPE);
            %>
            <tr>
                <td class="t1">${college.mulRank}</td>
                <td class="t2">${college.cName}</td>
                <td class="t3">${college.place}</td>
                <td class="t4">${college.variety}</td>
                <td class="t5">${college.type}</td>
            </tr>
            <% } %>            
            </tbody>            
        </table>     
        <table width="718px" style="margin:0 auto">
              <tr><td><div id="barcon" name="barcon"></div></td></tr>
        </table>   
        <div style="height:200px"></div>
        <jsp:include page="down.jsp"></jsp:include>
    </div>

</body>
</html>