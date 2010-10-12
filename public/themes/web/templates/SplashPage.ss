<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
  <head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<link href='http://fonts.googleapis.com/css?family=Nobile' rel='stylesheet' type='text/css'>
		
		<% require themedCSS(style) %> 
		<% require javascript(http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js) %>
		<!--[if IE 6]>
			<style type="text/css">
			 @import url(themes/web/css/ie6.css);
			</style> 
		<![endif]-->
		<style>
		#featured-items {
background-color:#ffffff;
position:absolute;width:100%;height:100%;top:0%;left:-50%
overflow:hidden;

cursor: pointer;

}
#featured-items div{position:absolute;width:100%;height:100%;vertical-align:middle;text-align:center}
#featured-items img{min-height:50%;min-width:50%;top: 0% !important;width: 100% !important; left: 0%;margin:0 auto}
		</style>
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
  
  <div class="body">
   
  </div>
</div>

<div id="featured-items"><div style="overflow: hidden; width: 100%; height: 100%; position: relative;">
<% control BGImage %>
        <a href="home"><img src="$BgImage.URL" style="position: absolute; top: 0px; left: 0px;" /></a>
        <% end_control %>
        </div></div>
</body>
</html>
