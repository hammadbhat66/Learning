// function ready(){
// var onRequest = new XMLHttpRequest();
// onRequest.onreadystatechange = function(){
//   var data = JSON.parse(onRequest.responseText);
//   console.log(data[0]);
// };
// onRequest.open("GET","https://learnwebcode.github.io/json-example/animals-1.json",true);

// onRequest.send();
// };

// $(document).ready(function(){
//     $("button").mousedown(function(){
//         $("p").fadeTo("slow",.25, function(){
//         	alert ("Hello FadeTo"+$("p").html());
//         });
        
//     });
// });

$(document).ready(function(){
	$("button").click(function(){
		var v= $("p").load("https://learnwebcode.github.io/json-example/animals-1.json");
		vv=v.toArray();
		
			});
});