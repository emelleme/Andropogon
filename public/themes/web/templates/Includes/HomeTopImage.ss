<div class="slider">
	<div class="items">
		<% if URLSegment != home %>
		
			<% control TopImages %>
				<% if VideoEnabled %>
					<div class="top-image-video">
					<img src="$TopImage.URL" rel="#video_$ID" />
				<% else %>
					<div>
					<img src="$TopImage.URL" />
					
				<% end_if %>
				<span id="caption"><p>$Caption</p></span>
				</div>
			<% end_control %>
		<% else %>
		
		<% control Page(home) %>
			<% control AllChildren %>
			<div>
					<div class="top-image-video">
						<img src="$NewsItemImage.URL" rel="#video_$ID" />
					</div>
			</div>
			<% end_control %>
		<% end_control %>
		<% end_if %>
	</div>
	
	<% if NewsItems %>
	
		<% control NewsItems %>
			<% if VideoEnabled %>
				<div class="apple_overlay black" id="video_$ID"> 
				$Vimeohtml
				</div> 
			<% end_if %>
		<% end_control %>
		
	<% else %>
	
		<% control Page(approach) %>
			<% control AllChildren %>
			<% control TopImages %>
				<% if VideoEnabled %>
					<div class="apple_overlay black" id="video_$ID"> 
					$Vimeohtml
					</div> 
				<% end_if %>
			<% end_control %>
			<% end_control %>
		<% end_control %>
		
	<% end_if %>
</div>
