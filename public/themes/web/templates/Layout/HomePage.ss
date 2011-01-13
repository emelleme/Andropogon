<div class="right-content-scroller" id="right-content-scroller">
<% require javascript(mysite/javascript/scroller.js) %>

<!-- "previous page" action --> 
<a class="prev leftscroll_mini disabled"></a>
<!-- "next page" action --> 
<a class="next rightscroll_mini"></a>
<!-- root element for scrollable -->
<div class="scrollable">
	<!-- wrapper for scrollable items -->
	<div class="newsitems">

	<% if newsItems %>
	<% control newsItems %>
		<div>
			<h2>$Title</h2>
			<span>$Date.NiceUS </span>
			<div class="newscontent">$NewsContent</div>
		</div>
	<% end_control %>
	<% else %>
	<% control Page(home) %>
	<% control AllChildren %>
		<div>
			<h2>$Title</h2>
			<span>$Date.NiceUS </span>
			<div class="newscontent">$Content</div>
		</div>
	<% end_control %>
	<% end_control %>
	<% end_if %>
		
	</div>
</div>

 
 
<br clear="all" /> 
</div>
