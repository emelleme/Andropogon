
<% if TopImageCount != 1 %>
<a class="prev leftscroll disabled"></a>
<% require javascript(mysite/javascript/topimage.scroll.js) %>
<% end_if %>
<div class="slider">
	<div class="items">
		<% if TopImages %>
		
			<% control TopImages %>
				<% if VideoEnabled %>
					<div>
					<img src="$TopImage.URL" rel="#video_$ID" />
				<% else %>
					<div>
					<img src="$TopImage.URL" />
					
				<% end_if %>
				<span id="caption"><p>$Caption</p></span>
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
	<% if TopImages %>
			<% control TopImages %>
				<% if VideoEnabled %>
				<div class="apple_overlay black" id="#video_$ID"> 
				$Vimeohtml
			</div> 
				<% end_if %>
			<% end_control %>
		<% end_if %>
				
</div>


<% if TopImageCount != 1 %>
<a class="next rightscroll"></a>
<% end_if %>
