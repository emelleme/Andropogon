swf_id = "moogaloop";

$(document).ready(function() {
	
	
	api = flashembed("#inner-box", {
		src: "http://vimeo.com/moogaloop.swf",
		width: 900,
		height: 293,
		quality: 'best',
		id:"moogaloop" }, {
			clip_id: '17921503',
			show_portrait:0,
			show_title: 0,
			show_byline: 0,
			autoplay:1,
			js_api: 1,
			hd_off:0,
			fp_version:10,
			portrait:0,
			js_onLoad: 'vimeo_player_loaded',
			js_swf_id: 'moogaloop'
		});
	
		
	$("#box").overlay({
 
	// custom top position
	top: 20,
	effect: 'apple',
 
	// some mask tweaks suitable for facebox-looking dialogs
	mask: {
 
		// you might also consider a "transparent" color for the mask
		color: '#fff',
 
		// load mask a little faster
		loadSpeed: 200,
 
		// very transparent
		opacity: 0.5
	},
 
	// disable this for modal dialog-type of overlays
	closeOnClick: true,
 
	// load it immediately after the construction
	load: true
 
});
});

 function vimeo_player_loaded() {
                       moogaloop = $('#moogaloop');
                       var m = api.getApi();
		m.api_setLoop('true');
               }

function vimeo_on_finish(swf_id){
	//Repeat Video
	var playerframe = $(swf_id);
	playerframe.api("api_play");
}
 
