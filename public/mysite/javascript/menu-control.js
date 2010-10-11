jQuery.fn.slideFadeToggle = function(speed, easing, callback) { 
        return this.animate({opacity: '1', height: '100%'}, speed, 
easing, callback); 
}; 

$(document).ready(function(){

/*
	$("#menu h2 a").click(function() { 
		$test = $(this).attr('href');
		$('div.items').fadeOut('fast');
		$('.items div img').css('display: none');
		$('.items div').html('<img src="/assets/Projects/Academic/ACADEMIC-BASEalt.jpg">');
		$('div.items').fadeIn('fast');
		var $submenuitems = $(this).parent().siblings();
		//$submenuitems.children().removeClass('link');
		var $submenuli = $submenuitems.children();
		$submenuli.fadeIn('slow');
		$('#menu ul li h2').each(function(i,domEl) {
			if($(this).attr('class') != $test){
				$(this).siblings().fadeOut();
			}else{
			
			}
		})
		//$submenuitems.slideToggle();
		return false;
	});
*/
});
