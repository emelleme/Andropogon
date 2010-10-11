<?php

class Collaborator extends DataObject
{
	static $db = array (
		'Name' => 'Text',
		'URL' => 'VarChar'
	);
 
	static $has_one = array (
		'CollaboratorsPage' => 'CollaboratorsPage'
	);
 
	public function getCMSFields_forPopup()
	{
		
		return new FieldSet(
			new TextField('Name'),
			new TextField('URL')
		);
	}
}
