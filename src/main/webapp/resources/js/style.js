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
	
	$("#submitEmp").on("click",function(e){
		e.preventDefault();	
		$("#param").empty();
		console.log("inside");
		$.post("/FileManagement/registerEmployee",$("form").serialize(),function(data){
			$("#registerForm")[0].reset();
			document.getElementById("param").innerHTML = data;
			console.log("am back");
		});
	});
	
	$("#deptData").on("click",function(e){
		e.preventDefault();
		$.post("/FileManagement/limitAccess",$("form").serialize(),function(data){
			$("#limitForm")[0].reset();
			document.getElementById("limitResponse").innerHTML=data;
		});
	});
	
	$("#archiveSearch").on("click",function(e){
		e.preventDefault();
		$("#archiveDiv").hide();
		console.log("inside archive");
		$.post("/FileManagement/archiveSearch",$("form").serialize(),function(data){
			console.log("back");
			$("#archiveForm")[0].reset();
			document.getElementById("archiveResponse").innerHTML=data;
			$("#archiveDiv").show();
		});
	})
});

