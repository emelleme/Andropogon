var activeframe = '';
$(document).ready(function() {
	//$("#triggers img[rel]").overlay({effect: 'apple'});
	
var ifrm = $('object');
$.each(ifrm, function(i, v){
	$(v).attr('id','vid_'+i);
	$(v).children('embed').attr('id','vid_'+i);
	console.log(v);
});

	
$(".top-image-video img[rel]").overlay({effect: 'apple',// some mask tweaks suitable for facebox-looking dialogs
	mask: {
 
		// you might also consider a "transparent" color for the mask
		color: '#000',
 
		// load mask a little faster
		loadSpeed: 200,
 
		// very transparent
		opacity: 0.85,
		onLoad: function(){
			var topvideos = $(".top-image-video img[rel]");
			$.each(topvideos,function(i,v){
				var api = $(v).data("overlay");
				var test = api.isOpened();
				if(test == true){
					//Get Iframe
					var overlaycode = api.getOverlay();
					var object = $(overlaycode).children('object').eq(0);
					var frameid = $(object).attr('id');
					
					//Play Video
					activeframe = object;
					//object.children('embed').eq(0).api_play();
					console.log(object.children('embed').eq(0));
					
				}
			});
		}
	}});

//Set actions on open/close of overlay

// select the overlay element - and "make it an overlay"
$("#photo2").overlay({
 
	// custom top position
	top: 20,
	effect: 'apple',
 
	// some mask tweaks suitable for facebox-looking dialogs
	mask: {
 
		// you might also consider a "transparent" color for the mask
		color: '#000',
 
		// load mask a little faster
		loadSpeed: 200,
 
		// very transparent
		opacity: 0.5
	},
 
	// disable this for modal dialog-type of overlays
	closeOnClick: false,
 
	// load it immediately after the construction
	load: false
 
});
});
