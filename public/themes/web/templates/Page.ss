<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
  <head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<script type="text/javascript" src="http://fast.fonts.com/jsapi/98b7e864-ea2e-45b1-ba09-43c14cbc05ca.js"></script>
		<script type="text/javascript" src="http://cdn.jquerytools.org/1.2.4/full/jquery.tools.min.js"></script>
		<% require themedCSS(style) %> 
		<% require themedCSS(form) %>
		<% require themedCSS(Scroller) %>
		<% require javascript(mysite/javascript/jquery.easing.1.3.js) %>
		<% require javascript(mysite/javascript/jquery.expander.js) %>
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
	</head>
<body>
<div class="main">
  
  	<div class="slider_top">
    <div class="header_text">
      	<div class="gallery">
       	<% include TopImage %>
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
