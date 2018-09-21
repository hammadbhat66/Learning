$(document).ready(function(){
	$("#tester").click(function(){
		$("#myModal").css({"display":"block"});
	});
	$(".close").click(function(){
		$("#myModal").css({"display":"none"});
	});
});