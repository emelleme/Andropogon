<?php

class Approach extends DataObject
{
	static $db = array (
		'Title' => 'Text',
		'Content' => 'HTMLText'
	);
 
	static $has_one = array (
		'ApproachPage' => 'ApproachPage',
		'ApproachImage' => 'Image'
	);
 
	public function getCMSFields_forPopup()
	{
		return new FieldSet(
			new TextField('Title'),
			new SimpleHTMLEditorField('Content','Article Content'),
			new ImageField('ApproachImage')
		);
	}
}
