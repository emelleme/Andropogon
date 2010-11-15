<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
  <head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<script type="text/javascript" src="http://fast.fonts.com/jsapi/98b7e864-ea2e-45b1-ba09-43c14cbc05ca.js"></script>
		<script type="text/javascript" src="mysite/javascript/jquery.tools.min.js"></script>
		<% require themedCSS(style) %> 
		<% require themedCSS(form) %> 
		<% require themedCSS(Scroller) %> 
		<% require themedCSS(overlay) %> 
		<% require javascript(mysite/javascript/jquery.easing.1.3.js) %>
		<% require javascript(mysite/javascript/links.js) %>
		<% require javascript(mysite/javascript/video.js) %>
		<!--[if IE 6]>
			<style type="text/css">
			 @import url(themes/web/css/ie6.css);
			</style> 
		<![endif]-->
		<!--[if lt IE 7]>
	<style> 
	div.apple_overlay {
		background-image:url(http://static.flowplayer.org/tools/img/overlay/overlay_IE6.gif);
		color:#fff;
	}
	
	/* default close button positioned on upper right corner */
	div.apple_overlay div.close {
		background-image:url(http://static.flowplayer.org/tools/img/overlay/overlay_close_IE6.gif);
	
	}	
	</style>
	<![endif]-->
	<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-19064930-1']);
  _gaq.push(['_setDomainName', '.andropogon.com']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
	</head>
<body>
<div class="main">
  
  	<div class="slider_top">
    <div class="header_text">
      	<div id="gallery" class="gallery">
      	<% if URLSegment = staff %>
      		<% include StaffTopImage %>
      	<% else %>
       		<% include TopImage %>
       	<% end_if %>
      	</div>
      	<div class="clr"></div>
	</div>
  	</div>
		<div class="clr"></div>
  
	<div class="body">
    	<div class="body_resize">
      		<div class="left">
      		<div id="menu">
       		<% include MainMenu %>
    		</div>
      		</div>

       		$Layout
    	</div>
    	<div class="clr"></div>
  </div>
  
</div>

<div class="footer">
  <div class="footer_resize">
    <% include Footer %>
    <div class="clr"></div>
  </div>
</div>
</body>
</html>
