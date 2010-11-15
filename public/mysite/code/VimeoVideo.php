<?php

class VimeoVideo extends DataObject{
	static $db = array(
		'VideoTitle' => 'Varchar(255)',
		'title' => 'Boolean',
		'byline' => 'Boolean',
		'portrait' => 'Boolean',
		'html' => 'Text',
		'Author' => 'Varchar(255)',
		'Width' => 'Int',
		'Height' => 'Int',
		'Duration' => 'Int',
		'Description' => 'Text',
		'thumbnail_url' => 'Varchar(255)',
		'thumbnail_width' => 'Int',
		'thumbnail_height' => 'Int',
		'color' => 'Varchar',
		'autoplay' => 'Boolean'
		
		
	);
	
	static $has_many = array(
		'TopImages' => 'TopImage'
	);
	
	public function onBeforeWrite() {
			// check on first write action, aka "database row creation" (ID-property is not set)
		if(!$this->ID) {
		
		}
	 
		// check on every write action
		if(!$this->record['PageID']) {
		    //user_error('Cannot save player without a valid team-connection', E_USER_ERROR);
		    //exit();
		}
	}

	
	public function getCMSFields_forPopup()
	{        
		return new FieldSet(
		    new HeaderField('VimeoHeader', 'Vimeo Video Config'),
		    new TextField('ID', 'Video ID'),
		    new CheckBoxField('title', 'Show Title in video?'),
		    new CheckBoxField('portrait', 'Show Portrait in Video?'),
		    new CheckBoxField('autoplay', 'Auto Play video on load?'),
		    new CheckBoxField('color', 'Color of video controls?(hex format; leave off \'#\'')
		    
		);
	}
}
