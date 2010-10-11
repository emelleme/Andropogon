<% require javascript(mysite/javascript/menu-control.js) %>
	<% if Menu(1) %>
		<% control Menu(1) %>
		<ul>
			<li><h2 class="$URLSegment"><a class="$LinkingMode" href="$URLSegment">$MenuTitle</a></h2>
			<% control Children %>
				<ul>
					<li class="$Parent.LinkingMode">
				  	
					<a class="$LinkingMode" href="$URLSegment">$MenuTitle</a>
					
				  		<ul>
							<li class ="$LinkingMode">
							<% control Children %>
							<a class="$LinkingMode" href="$URLSegment">$MenuTitle</a>
							<% end_control %>
							</li>
						</ul>
					
						
					</li>
			  	</ul>
		  	<% end_control %>
		  	<div class="clear"> </div>
			</li>
		</ul>
		<% end_control %>
	<% end_if %>
		<div class="clear"> </div>
