$(document).ready(function(){
// select #flowplanes and make it scrollable. use circular and navigator plugins
	$(".scrollable, .slider").scrollable({ circular: false, mousewheel: false, easing: 'easeOutExpo', speed: 1100 });
	
//Add actions to expand the text
 /* $('.newscontent').expander({
    slicePoint:       200,  // default is 100
    expandText:         'more', // default is 'read more...'
    userCollapseText: 'less',
    userCollapse: true,  // default is true
    beforeExpand: function($thisEl) {
    	$('.scrollable').height('400px');},
    onCollapse: function($thisEl, byUser) {
    	$('.scrollable').height('220px');}	
  });
  */
	
});

