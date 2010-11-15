<div class="slider">
	<div class="items">
		<% control Page(staff) %>
			<% control AllChildren %>
			<div>
				<% control TopImages %>
					<% if VideoEnabled %>
						<div class="top-image-video">
						<img src="$TopImage.URL" rel="#video_$ID" />
					<% else %>
						<div>
						<img src="$TopImage.URL" />
					
					<% end_if %>
					</div>
				<% end_control %>
			</div>
			<% end_control %>
		<% end_control %>
	</div>
	
	<% control Page(staff) %>
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
</div>
