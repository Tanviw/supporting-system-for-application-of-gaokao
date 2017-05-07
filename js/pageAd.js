
   $(function(){
   	var count = 0;
   	$(".tablist :checkbox").click(function(){
   		//alert($(this).is(":checked"));
   		var txtvalue = $(this).parent().next().text();
   		if ($(".txtValue").val() == ""){
   			if ($(this).is(":checked") == true){
   				var txtalso = $.trim(txtvalue);
   			} else {
   				var txtalso = "";
   			}
   		}
   		else {
   			if ($(this).is(":checked") == true){
   				var txtalso = $.trim($(".txtValue").val()) + "," + $.trim(txtvalue);
   			}
   			else {
   				var txtelse = $.trim($(".txtValue").val());
   				var txtnow = $.trim(txtvalue);
   				var reg1 = "," + txtnow;
   				var reg2 = txtnow + ",";
   				var reg3 = txtnow;
   				var txtelse = txtelse.replace(reg1, "").replace(reg2, "").replace(reg3, "");
   				var txtalso = txtelse;
   			}
   		}
   		$(".txtValue").val(txtalso);
   		count++;

   	});
   });
