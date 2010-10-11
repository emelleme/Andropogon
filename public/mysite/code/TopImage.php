<?php

class TopImage extends DataObject{
	static $db = array(
		'Caption' => 'Varchar(255)',
		'isVideo' => 'Boolean',
		'VideoCode' => 'HTMLText'
	);
	
	static $has_one = array(
		'TopImage' => 'Image',
		'Page' => 'Page'
	);
	
	public function getCMSFields_forPopup()
	{        
		return new FieldSet(
		    new TextField('Caption', 'Caption'),
		    new CheckBoxField('isVideo', 'Does this link to a video?'),
		    new TextAreaField('VideoCode', 'Embed Code'),
		    new ImageField('TopImage')
		);
	}
}

class TopImage_File extends Image{
	static $has_many = array(
		'TopImage' => 'TopImage'
	);
}


?>
