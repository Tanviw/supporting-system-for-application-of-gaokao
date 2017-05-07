<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>

	<title>登录/注册</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-social.css" rel="stylesheet" type="text/css">	
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">
    <link href="css/colrank.css" rel='stylesheet' type='text/css' />
    <link href="css/nav.css" rel='stylesheet' type='text/css' />
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
    <link href="css/lbt.css" rel='stylesheet' type='text/css' />
    <script src="js/lbt.js"></script>
	<script src="js/uploadPreview.js" type="text/javascript"></script>
		
</head>
<body class="templatemo-bg-image-1">
<script type="text/javascript">
						function openLogin(){
							document.getElementById("login-1").style.display="";
							document.getElementById("login-2").style.display="";
							document.getElementById("f1").style.display="";
							document.getElementById("re-1").style.display="none";
							document.getElementById("re-2").style.display="none";
							document.getElementById("f2").style.display="none";
							}
						function closeLogin(){
							document.getElementById("login-1").style.display="none";
							document.getElementById("login-2").style.display="none";
							document.getElementById("f1").style.display="none";
							document.getElementById("re-1").style.display="";
							document.getElementById("re-2").style.display="";
							document.getElementById("f2").style.display="";
							}
						//登录表单是否填全？
						function checkEmpty1()  
						{  
						    if(document.getElementById("user.id1").value==""  
						        ||document.getElementById("user.password1").value==""  )  
						    {  
						        alert("请填完表单之后再进行提交！");  
						        return false;  
						    }  
						    else  
						    {  
						        return true;  
						    }  
						}  
						//注册表单是否填全？
						function checkEmpty2()  
						{  
							var re =  /^[0-9a-zA-Z]*$/g;//字母数字组合
						    if(document.getElementById("user.id2").value==""  
						        ||document.getElementById("user.password2").value==""  )  
						    {  
						        alert("用户名或密码不能为空！");  
						        return false;  
						    } 
							//字母和数字组合
						    else if(!re.test(document.getElementById("user.id2").value))
						    {
						    	alert("用户名只能由数字和字母组成！");
						    	return false;
						    }
						    else if(document.getElementById("user.id2").value.length<5)
						    {
						    	alert("用户名长度至少为5位");
						    	return false;
						    }
						    else if(document.getElementById("user.password2").value!=document.getElementById("user.password3").value)
						    {
						    
						    	alert("两次密码不一致！");
						    	return false;
						    }
						    else if(document.getElementById("user.password2").value.length<5)
						    {
						    	alert("密码长度至少为5位");
						    	return false;
						    }
						    else if(!document.getElementById("confirmRegis").checked)
						    {
						    	alert("请同意注册！");
						    	return false;
						    }
						    else if(document.getElementById("r1").checked)
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
								 var filevalue=document.form2.pic.value;
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
						    else if(document.getElementById("r2").checked)
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
								 var filevalue=document.form2.pic.value;
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
						//不同身份不同信息填写
					    function moreInfo(){ 
					        var cName = document.getElementById("input1");
					        var mName = document.getElementById("input2");
					        var sYear = document.getElementById("input3");
					        var career = document.getElementById("input4");
					        var type = document.getElementById("input5");
					        var name=document.getElementById("input6");
					        var picture=document.getElementById("input7");
					        var px335=document.getElementById("px335");
					        //var picHint=document.getElementById("picHint");
					        if (document.getElementById("r1").checked || document.getElementById("r2").checked) {  
					        	cName.style.display='block';
				        		mName.style.display='block';
				        		type.style.display='none';
				        		name.style.display='none';
					        	career.style.display='none';
					        	sYear.style.display='block';
					        	picture.style.display='block';
					        	px335.style.display='none';
					        	if(document.getElementById("r2").checked){
							        picHint.innerHTML="请上传相关证明以待审核！(如：工作证等,最大：1M,支持格式：gif,jpeg,jpg,bmp,png)";	
					        		cName.style.display='block';
					        		mName.style.display='none';
					        		type.style.display='block';
					        		name.style.display='block';
						        	career.style.display='block';
						        	sYear.style.display='none';
							    }
					        	else{
					        		picHint.innerHTML="请上传相关证明以待审核！(如：学生证、校园一卡通、毕业证书等,最大：1M,支持格式：gif,jpeg,jpg,bmp,png)";
					        	}
					        }
					        else{
					        	cName.style.display='none';
					        	mName.style.display='none';
					        	type.style.display='none';
					        	sYear.style.display='none';
					        	career.style.display='none';
					        	name.style.display='none';
					        	picture.style.display='none';
					        	px335.style.display='block';
					        }
					      
					      
					    }   

						//上传图片预览
					    window.onload = function () { 
						
				            new uploadPreview({ UpBtn: "up_img", DivShow: "imgdiv", ImgShow: "imgShow" });
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
			</script>						


     <s:set var="msg" value="#request.msg"></s:set>
     <s:if test="#msg != null">
		<script>
		   var msg= "<s:property value='#request.msg'/>";
		   alert(msg);
		</script>
	 </s:if>

	 <div class="header-top">
	    <div class="inner">
			<div class="siteLogo">
			<a href="index.jsp"></a>
			</div>
            <div class="navT">
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
				  <!--  <a href="" class="log login">登录</a>
                  <a href="" class="log signUp" onclick="return false;">登录/注册</a>-->
            </div>
              
        
        </div>
	</div>

	    <div class="container">
	   
		<div class="col-md-12">	
		<%String from=request.getParameter("from"); %>
		<%//request.setAttribute("uri", request.getParameter("uri")); %>
			<form id=f1 class="form-horizontal templatemo-login-form-2" role="form" action="login" method="post" onsubmit="return checkEmpty1()">
					<input type=hidden name="from" value="<%=from %>"/>
					<div class="col-md-6" style="text-align:center;background-color: rgba(13,13,13,0.25);">
						<a href="javascript:openLogin();">
						    <font size=15px color=#fff>登录</font>
						</a>
					</div>
					<div class="col-md-6" style="text-align:center;background-color: rgba(13,13,13,0.25);">					
						<a href="javascript:closeLogin();">
						    <font size=15px color=#fff>注册</font>
						</a>
					</div>
				
					<div id=login-1 class="templatemo-one-signin col-md-6">
				        <div class="form-group">
				          <div class="col-md-12">		          	
				            <label for="username" class="control-label">用户名</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-user"></i>
				            	<input type="text" class="form-control" name="user.id" id="user.id1" placeholder="">
				            </div>		            		            		            
				          </div>              
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <label for="password" class="control-label">密码</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-lock"></i>
				            	<input type="password" class="form-control" name="user.password" id="user.password1" placeholder="">
				            </div>
				          </div>
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <div class="checkbox">
				                <label>
				                  <!--  <input type="checkbox"> 记住我-->
				                </label>
				            </div>
				          </div>
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <input type="submit" value="登录" class="btn btn-warning">
				          </div>
				        </div>
				        <div class="form-group">
				          	<div class="col-md-12">
				        		<!-- <a href="forgot-password.html" class="text-center">无法登陆?</a>-->
				       	 	</div>
				    	</div>
					</div>
					<div id=login-2 class="templatemo-other-signin col-md-6" style="background-color: rgba(13,13,13,0.25);">
						<div style="height:30px"></div>
						<label class="margin-bottom-15">
							忘记密码请联系：usstbcnf@usst.edu.cn 
						</label>
						<label class="margin-bottom-15">
							没有账号，请点击注册
						</label>
						<div style="height:170px"></div> 						
					</div>  
					
					

			</form>
			
			<form name="form2" id="f2" class="form-horizontal templatemo-login-form-2" role="form" 
			action="register" method="post" style="display:none"
			  onSubmit="return checkEmpty2()" enctype="multipart/form-data">
			        <input type=hidden name="from" value="<%=from %>"/>
					<div class="col-md-6" style="text-align:center;background-color: rgba(13,13,13,0.25);"">
						<a href="javascript:openLogin();">
						    <font size=15px color=#fff>登录</font>
						</a>
					</div>
					<div class="col-md-6" style="text-align:center;background-color: rgba(13,13,13,0.25);"">					
						<a href="javascript:closeLogin();">
						    <font size=15px color=#fff>注册</font>
						</a>
					</div>
			        <div id=re-1 class="templatemo-one-signin col-md-6" style="display:none">
				        <div class="form-group">
				          <div class="col-md-12">		          	
				            <label for="username" class="control-label">用户名</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-user"></i>
				            	<input type="text" class="form-control" id="user.id2" 
				            	name="user.id" placeholder="由5-10位数字和字母组成" maxlength=10>
				            </div>		            		            		            
				          </div>              
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <label for="password" class="control-label">密码</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-lock"></i>
				            	<input type="password" class="form-control" id="user.password2" name="user.password" 
				            	  maxlength=20 placeholder="5-20位字符组成">
				            </div>
				          </div>
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <label for="password" class="control-label">确认密码</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-lock"></i>
				            	<input type="password" class="form-control" id="user.password3" placeholder="">
				            </div>
				          </div>
				        </div>
				        <div style="height:30px"></div>
				        <div>
				        <span>身份选择:</span>
						<input type=radio id="r0" name="user.duty" checked="checked" value="1" onclick="moreInfo()"/>
						<span style="color:#FFFFFF">高考生</span>
						<input type=radio id="r1" name="user.duty" value="2" onclick="moreInfo()"/>
						<span style="color:#FFFFFF">学长学姐</span>
						<input type=radio id="r2" name="user.duty" value="3" onclick="moreInfo()"/>
						<span style="color:#FFFFFF">老师</span>
				        </div>
				        <div style="height:30px"></div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <div class="checkbox">
				                <label>
				                  <input type="checkbox" checked="true" id="confirmRegis"> 同意注册
				                </label>
				            </div>
				          </div>
				        </div>
				        <div style="height:30px"></div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <input type="submit" value="注册" class="btn btn-warning">
				          </div>
				        </div>
				        <div style="height:30px"></div>
					</div>
					<div id=re-2 class="templatemo-other-signin col-md-6" style="display:none;background-color: rgba(13,13,13,0.25);">
					    
						<div id="moreInfo">
						<div style="display:none" id="input1">
						<label class="control-label">所在大学</label>
						<input type="text" class="form-control" name="user.cName" id="user.cName"  placeholder="请输入学校全称"/>
						<div style="height:20px"></div>
						</div>
						<div style="display:none" id="input2">
						<label class="control-label">所在专业</label>
						<input type="text" class="form-control" name="user.mName" id="user.mName" placeholder="请输入专业全称"/>
						<div style="height:20px"></div>
						</div>
						<div style="display:none" id="input3">
						<label class="control-label">入学年份</label>
						<input type="text" class="form-control" name="user.sYear" id="user.sYear" />
						<div style="height:20px"></div>
						</div>
						<div style="display:none" id="input4">
						<label class="control-label">学校职位</label>
						<input type="text" class="form-control" name="user.career" id="user.career"/>
						<div style="height:20px"></div>
						</div>
						<div style="display:none" id="input5">
						<label class="control-label">擅长领域</label>
						<input type="text" class="form-control" name="user.type" id="user.type"/>
						<div style="height:20px"></div>
						</div>
						<div style="display:none" id="input6">
						<label class="control-label">真实姓名</label>
						<input type="text" class="form-control" name="user.name" id="user.name"/>
						<div style="height:20px"></div>
						</div>
						<div style="display:none" id="input7">
						<span id="picHint"></span>
                        <div id="imgdiv"><img id="imgShow"  width="200px" height="120px"/></div>
                        <input type="file" id="up_img" name="pic"/>
						</div>
						</br>
						</br>
						
						<label class="margin-bottom-15">
							注册须知 
						</label>
						<label class="margin-bottom-15">
							高考生只需填写账户和密码即可注册
						</label>
						<label class="margin-bottom-15">
							学长学姐、老师请填写个人信息并上传有效证件以待审核
						</label>
						<div id="px335" style="height:335px"></div>
					    </div>   
				</div>
			</form>			
		</div>				 	   		      
	</div>
	<div style="height:170px"></div>
    <jsp:include page="down.jsp"/>		
</body>

</html>