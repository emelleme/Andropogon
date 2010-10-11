<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
  <head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<link href='http://fonts.googleapis.com/css?family=Nobile' rel='stylesheet' type='text/css'>
		
		<% require themedCSS(style) %> 
		<% require themedCSS(form) %>
		<% require javascript(http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js) %>
		<% require javascript(mysite/javascript/jquery.easing.1.3.js) %>
		<% require javascript(mysite/javascript/easySlider1.5.js) %> 
		<% require javascript(mysite/javascript/topimage.scroll.js) %>
		<% require javascript(http://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js) %>
		<!--[if IE 6]>
			<style type="text/css">
			 @import url(themes/web/css/ie6.css);
			</style> 
		<![endif]-->
	</head>
<body>
	<div class="main">
  <div class="header">
    
  </div>
  <div class="top_sup">
   
  </div>
  
  
  <div class="clr"></div>
  <div class="body">
    <div class="body_resize">
      
      <div class="full">
       $Layout
      </div>
      <div class="clr"></div>
    </div>
  </div>
</div>
<div class="footer">
  <div class="footer_resize">
    <% include Footer %>
     <% include SearchForm %>
    <div class="clr"></div>
  </div>
</div>
</body>
</html>
