/*
$( function(){
$('#loginForm form input[type=submit]').click(
								function(){
									alert("提交表单事件！"); 
									//alert($("input[name='user.password']").val());
									 $.ajax({
										type:'POST',
										url:'login.action',
										//dataType:'text',
										data:{
											"user.id":$("#loginForm form input[name='user.id']").val(),
											"user.password":$("#loginForm form input[name='user.password']").val()
										},
										beforeSend:function(){
											alert("发送之前！");
										},
									    success:function(data){
									    	 var obj = $.parseJSON(json);
						                     var state_value = obj.result;
						                     if(state_value=="true"){  
						                            alert("true");  
						                     }else{  
						                            alert("false");  
						                     }  
									    	alert(data);
									    },
										error:function(xhr,errorText,errorType){
									    	alert(errorText+":"+xhr.status+errorType);
									    }
									}
											);
									
								}
										
								);
});
*/