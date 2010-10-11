<?php

class BackgroundImage extends DataObject{
	static $db = array(
	);
	
	static $has_one = array(
		'BgImage' => 'Image',
		'Page' => 'Page'
	);
	
	public function getCMSFields_forPopup()
	{        
		return new FieldSet(
		    new ImageField('BgImage')
		);
	}
}

class BackgroundImage_File extends Image{
	static $has_many = array(
		'BgImage' => 'BgImage'
	);
}


?>
