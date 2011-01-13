<?php

class NewsItemPage extends Page
{
	static $db = array (
		'Date' => 'Date',
		'Author' => 'Text',
		'NewsContent' => 'HTMLText',
		'VideoCode' => 'HTMLText',
		'VimeoID' => 'Int',
		'Vimeohtml' => 'HTMLText',
		'VideoEnabled' => 'Boolean'
	);
 
	static $has_one = array (
		'NewsItemImage' => 'Image'
	);
	
	public function onBeforeWrite(){
		
		parent::onBeforeWrite();

	}
 
	public function getCMSFields()
	{
		$fields = parent::getCMSFields();
		if($this->VimeoID){
			$embedcode = "<p style='color:green'>Video Successfully Added</p>";
		}else{
			$embedcode = 'No video ID added.';
		} 
		$date = new DateField('Date','Date (e.g. 12/24/2012)');
		$date->setConfig('showcalendar', false);
		$date->setConfig('dmyfields',true);
		$date->setConfig('dateformat','MM-DD-YYYY');
		$date->setLocale('en-US');
		
		$fields->addFieldToTab("Root.Content.Main",new DateField('Date','Date (e.g. 12/24/2012)'),'MenuTitle');
		$fields->removeFieldFromTab("Root.Content", "ImageGallery");
		$fields->addFieldToTab("Root.Content.TopImage",new FileUploadField('NewsItemImage', 'Top Image'));
		return $fields;
	}
}

class NewsItemPage_Controller extends Page_Controller {

}
