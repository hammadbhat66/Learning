function ValidateForm(){
	var x=document.forms["myform"]["name"].value;
	if (x=="")
	{
		alert("Please fill out the name");
	
		return false;
	}

}
function ChangeText(){
	document.getElementById("header").innerHTML ="What is this";

}
function ChangeTextBack(){
	document.getElementById("header").innerHTML = "This is the New Page";
}