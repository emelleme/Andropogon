
<% if TopImageCount != 1 %>
<a class="prev leftscroll disabled"></a>
<% require javascript(mysite/javascript/topimage.scroll.js) %>
<% end_if %>
<div class="slider">
	<div class="items">
		<% if TopImages %>
		
		<% control TopImages %>
		<% if isVideo %>
		<div class="top-image-video">
			
				<img src="$TopImage.URL" rel="#embedded_video" />
			<% else %>
		<div>
				<img src="$TopImage.URL" />
			<% end_if %>
			<span id="caption"><p>$Caption</p></span>
			<% if isVideo %>
			<div class="apple_overlay" id="embedded_video">
			$VideoCode
			</div>
			<% end_if %>
		</div>
		<% end_control %>
		<% else %>
			<% control TopImage %>
		<div>
			<img src="$TopImage.URL" />
		</div>
		<% end_control %>
		<% end_if %>
	</div>
	
</div>


<% if TopImageCount != 1 %>
<a class="next rightscroll"></a>
<% end_if %>
