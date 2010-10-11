<% require javascript(mysite/javascript/links.js) %>
 <div class="right-large">
<div>
		<h2>$Title</h2>
		$Content
		<ul>
		<% control Collaborators %>
		<li><a href="$URL">$Name</a></li>
		<% end_control %>
		</ul>
		
</div>
</div>
