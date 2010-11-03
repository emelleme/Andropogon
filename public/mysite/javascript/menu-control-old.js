var $submenu=false;
var $topsubmenu=false;
var $currentitem = false;
var $pageitem = false;

jQuery.fn.slideFadeToggle = function(speed, easing, callback) { 
        return this.animate({opacity: '1', height: '100%'}, speed, 
easing, callback); 
}; 

$(document).ready(function(){
$pageitem = $('#'+jQuery.url.segment(0));
//console.log($currentitem);
 //Initialize 
/* To-do: Change the <h2> for each level 1 menu class to id */
//Get Current page
var currentpage = $('a.current').html();

//Level 1 onClick
	$('#menu h2 a').click(function(){
	var $selectedmenu = $(this).parent();
	if($selectedmenu.siblings('ul').children().children().eq(0).attr('id') == null){
		//console.log($submenu.children().children().eq(0));
		return true;
	}
	
		if($currentitem){
			$currentitem.attr('class','link');
		}else{
			if($topsubmenu){
				$.each($topsubmenu, function(key, value){
					$(value).attr('class','link');
					$(value).children('li').toggle('slow');
				});
			}
		}
		var $selectedmenu = $(this).parent();
		$currentitem = $(this);
		//console.log();
		//Fade out Content section
		$('#right-content').fadeOut('slow');
		$('#right-content-scroller').fadeOut('slow');
		$('.right-large').fadeOut('slow');
		$topsubmenu = $selectedmenu.siblings('ul');
		//Iterrate over the submenu items and 
		$.each($topsubmenu, function(key, value){
	
			$(value).attr('class','section');
			$(value).children('li').toggle('slow');
		});
	
		if($(this).attr('class') != 'current'){
			var a = $('.current');
			//change class to current
			$(this).attr('class','current');
			//Change Top Image
			$.get('/home/getTopImage/'+$selectedmenu.attr('id'), function(data){
				$('#gallery').hide().html(data).fadeIn();
			});
			if($(this).attr('href') == 'firm'){
				$.get('/home/getPageContent/'+$(this).attr('href'), function(data){
					$('.right-content-scroller').removeClass('right-content-scroller').addClass('right');
					$('.right-content').removeClass('right-content').addClass('right');
					$('.right').html(data).fadeIn();
				});
			}
		}
		return false;
	});

//Level 2 Click
	$('#menu ul li ul li a').click(function(){
		if($(this).siblings('ul').children().children().eq(0).attr('id') == null){
		
		return true;
		}
	
		if($submenu){
		$.each($submenu, function(key, value){
			$(value).attr('class','link');
			$.each($(value).children(), function(key, v){
				$(v).hide().attr('class','link');
			});
		});
		}
		var $selectedmenu = $(this).parent();
		if($currentitem){
		if($currentitem.attr('id') != $(this).attr('id')){
			$currentitem.attr('class','link');
		}
		}
		if($pageitem.parent().attr('id') != $(this).attr('id')){
			$pageitem.parent().attr('class','link');
			$pageitem.parent().parent().attr('class','link');
		}
		$currentitem = $(this);
		//Fade out Content section
		$('#right-content').fadeOut('slow');
		$('#right-content-scroller').fadeOut('slow');
		$('.right-large').fadeOut('slow');
		$submenu = $(this).siblings('ul');
		
		//Iterrate over the submenu items and 
		$.each($submenu, function(key, value){
			$(value).attr('class','section');
			$.each($(value).children(), function(key, v){
				$(v).hide().attr('class','section').fadeIn();
			});
		});
		
		if($(this).attr('class') != 'current'){
			//console.log($(this).attr('class'));
			var a = $('.current');
			//change class to current
			$(this).attr('class','current');
			//Change Top Image
			$.get('/home/getTopImage/'+$selectedmenu.attr('id'), function(data){
				$('#gallery').hide().html(data).fadeIn();
			});
		}
		//	value.children('li').hide().attr('class','section').fadeIn('slow');
		//}
		return false;
	});
});

