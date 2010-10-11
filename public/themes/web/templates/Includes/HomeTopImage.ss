<div class="slider">
	<div class="items">
		<% if NewsItems %>
		<% control NewsItems %>
		<div>
			<img src="$NewsImage.URL" />
		</div>
		<% end_control %>
		<% else %>
		<% control Page(approach) %>
		<% control AllChildren %>
		<div>
			<% control TopImages %>
			<img src="$TopImage.URL" />
			<% end_control %>
		</div>
		<% end_control %>
		<% end_control %>
		<% end_if %>
	</div>
</div>
