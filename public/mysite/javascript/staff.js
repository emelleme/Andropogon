$(document).ready(function() {
	$('.employee').click(function(){
		var member = $(this).attr('name');
		var title = $(this).attr('title');
		var data = $(this).attr('rel');
		$('#top-image').hide('fast');
		$('.gallery').css('border', 'none');
	  // Load new image
	  if(data == ''){
	  $('#top-image').fadeIn('slow');
	  }else{
	  $('#top-image').html('<img src="'+data+'" />');
	  $('#top-image').fadeIn('slow');
	  }
	  //Change Title
	  $('#staff-title').html(member+", "+title);
		return false;
	});
});
