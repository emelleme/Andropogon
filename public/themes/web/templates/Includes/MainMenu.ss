<% require javascript(mysite/javascript/menu-control.js) %>
	<% if Menu(1) %>
		<% control Menu(1) %>
		<ul>
			<li><h2 id="page_$ID"><a id="$URLSegment" class="$LinkingMode abc" href="$URLSegment">$MenuTitle</a></h2>
			<% control Children %>
				<ul>
					<li id="page_$ID" class="$Parent.LinkingMode">
				  	
					<a id="$URLSegment" class="$LinkingMode" href="$URLSegment">$MenuTitle</a>
					
				  		<ul>
				  			
							<li id="page_$ID" class ="$LinkingMode">
							<% control Children %>
							<a id="$URLSegment" class="$LinkingMode" href="$URLSegment">$MenuTitle</a>
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
