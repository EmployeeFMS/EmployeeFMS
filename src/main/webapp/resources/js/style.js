$(function(){
	$("#staffJs").on("click",function(e){
		e.preventDefault();
		$("#hide2").hide();
		$("#hide3").hide();
		$("#hide4").hide();
		$("#hide5").hide();
		$("#hide1").show();
	});
	
	$("#registerJs").on("click",function(e){
		e.preventDefault();
		$("#hide1").hide();
		$("#hide3").hide();
		$("#hide4").hide();
		$("#hide5").hide();
		$("#hide2").show();
	});
	
	$("#limitJs").on("click",function(e){
		e.preventDefault();
		$("#hide1").hide();
		$("#hide2").hide();
		$("#hide4").hide();
		$("#hide5").hide();
		$("#hide3").show();
	});
	
	$("#requestJs").on("click",function(e){
		e.preventDefault();
		$("#hide1").hide();
		$("#hide2").hide();
		$("#hide3").hide();
		$("#hide5").hide();
		$("#hide4").show();
	});
	
	$("#archiveJs").on("click",function(e){
		e.preventDefault();
		$("#hide1").hide();
		$("#hide2").hide();
		$("#hide3").hide();
		$("#hide4").hide();
		$("#hide5").show();
	});
	
	$("#empJs").on("click",function(e){
		e.preventDefault();
		$("#hide7").hide();
		$("#hide8").hide();
		$("#hide9").hide();
		$("#hide6").show();
	});
	
	$("#formJs").on("click",function(e){
		e.preventDefault();
		$("#hide6").hide();
		$("#hide8").hide();
		$("#hide9").hide();
		$("#hide7").show();
	});
	
	$("#updateJs").on("click",function(e){
		e.preventDefault();
		$("#hide6").hide();
		$("#hide7").hide();
		$("#hide9").hide();
		$("#hide8").show();
	});
	
	$("#commentJs").on("click",function(e){
		e.preventDefault();
		$("#hide6").hide();
		$("#hide7").hide();
		$("#hide8").hide();
		$("#hide9").show();
	});
	
	$(".toggle-btn").on("click",function(e){
		$("#side").classlist.toggle("active");
		
	});
});

