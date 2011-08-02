$(document).ready(function() {
	$('.right-large a').click(function(){
     this.target = "_blank";
	});
	$('.right a').click(function(){
     this.target = "_blank";
	});
	
	//Site Search
	$('a#searchlink').click(function(){
		//Get Query string
		var q = $("#sitesearch").attr('value');
		window.open('http://sites.google.com/a/andropogon.us/andropogon/system/app/pages/customSearch?q='+q+'&scope=cse-goog_921493327');
		return false;
	});
	
	$('input#sitesearch').keyup(function(event){
		//Get Query string
		
		if(event.keyCode == '13'){
			var q = $(this).attr('value');
			window.open('http://sites.google.com/a/andropogon.us/andropogon/system/app/pages/customSearch?q='+q+'&scope=cse-goog_921493327');
		}
	});
	
	//Social Icons Hover Action
	$(".rollover").css({'opacity':'0'});
	
});
