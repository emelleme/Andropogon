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
					<% if LinkingMode = current %>
						<ul style="margin-left: 220px;width:35em">
						<% control Children %>
						<li style="width:10em"><a href="$URLSegment" name="$Title" title="$Position" <% control TopImages %> rel="$TopImage.URL" <% end_control %> class="employee">$Title</a></li>
						<% end_control %>
					</ul>
					<% end_if %>
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
