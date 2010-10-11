<div class="gallery">
	<div id="slider">
		<% if TopImages %>
		<ul>
			<% control TopImages %>
			<li><img src="$TopImage.URL" /></li>
			<% end_control %>
		</ul>
		<% else %>

		<% end_if %>
	</div>
</div>
