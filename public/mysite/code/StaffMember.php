<?php

class StaffMember extends DataObject
{
	static $db = array (
		'Title' => 'Text',
		'FirstName' => 'Varchar',
		'LastName' => 'Varchar',
		'Position' => 'Text',
		'YearStarted' => 'Varchar',
		'Description' => 'HTMLText',
		'PersonalUrl' => 'Varchar'
	);
 
	static $has_one = array (
		'StaffPage' => 'StaffPage',
		'StaffImage' => 'Image'
	);
 
	public function getCMSFields_forPopup()
	{
		
		return new FieldSet(
			new TextField('FirstName','First Name'),
			new TextField('LastName', 'Last Name'),
			new TextField('Title'),
			new TextField('Position'),
			new TextField('YearStarted'),
			new TextField('PersonalUrl', 'Personal URL (e.g. andropogon.com/staff/todd) NO SPACES allowed. Only "-"'),
			new SimpleHTMLEditorField('Description','Description'),
			new ImageField('StaffImage')
		);
	}
}
