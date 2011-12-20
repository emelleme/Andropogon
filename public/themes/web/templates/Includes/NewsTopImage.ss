<% if TopImageCount != 1 %>
<a class="prev leftscroll disabled"></a>
<% require javascript(mysite/javascript/topimage.scroll.js) %>
<% require javascript(mysite/javascript/video.js) %>
<% end_if %>

<div class="slider">
	<div class="items">
		<% if TopImages %>
		
			<% control TopImages %>
				<% if VideoEnabled %>
					<div class="top-image-video">
					<img src="$TopImage.URL" rel="#video_$ID" />
				<% else %>
					<div>
					<img id="topImage" src="$TopImage.URL" />
					
				<% end_if %>
				<span id="caption"><p>$Caption</p></span>
				</div>
			<% end_control %>
		<% else %>
				<% if VideoEnabled %>
					<div class="top-image-video">
					<img src="$NewsItemImage.URL" rel="#video_$ID" />
				<% else %>
					<div>
					<img id="topImage" src="$NewsItemImage.URL" />
					
				<% end_if %>
			
		<% end_if %>
	</div>
	<% if TopImages %>
		<% control TopImages %>
			<% if VideoEnabled %>
				<div class="apple_overlay black" id="video_$ID"> 
				$Vimeohtml
				</div> 
			<% end_if %>
		<% end_control %>
	<% else %>
		<% control TopImage %>
			<% if VideoEnabled %>
				<div class="apple_overlay black" id="video_$ID"> 
				$Vimeohtml
				</div> 
			<% end_if %>
		<% end_control %>
	<% end_if %>
				
</div>

