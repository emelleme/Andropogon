<% if InSection(contact) %>
	<% control Page(contact) %>
	
	<ul>
		<li>
			<ul>
				<li>
				
					<ul>
						<li>
						<% control AllChildren %>
						<a id="$URLSegment" class="$LinkingMode" href="$URLSegment">$MenuTitle</a>
						<% end_control %>
						</li>
					</ul>
					
				</li>
		  	</ul>
	  	</li>
  	</ul>
  	<% end_control %>
<% end_if %>
<% if Menu(1) %>
	<% control Menu(1) %>
	<ul>
		<li><h2 id="page_$ID"><a id="$URLSegment" class="$LinkingMode abc" href="$URLSegment">$MenuTitle</a></h2>
		
		<% control Children %>
			<ul>
				<li id="page_$ID" class="$Parent.LinkingMode">
			  	
				<a id="$URLSegment" class="$LinkingMode" href="$URLSegment">$MenuTitle</a>
					<% if URLSegment = staff %>
						<p></p>
					<% else %>
				  		<ul>
							<li id="page_$ID" class ="$LinkingMode">
							<% control Children %>
							<a id="$URLSegment" class="$LinkingMode" href="$URLSegment">$MenuTitle</a>
							<% end_control %>
							</li>
						</ul>
						<div class="clear"> </div>
					<% end_if %>
				</li>
		  	</ul>
	  	<% end_control %>
	  
	  	<div class="clear"> </div>
		</li>
	</ul>
	<% end_control %>
<% end_if %>


<div class="clear"> </div>
