<?php

class NewsItem extends DataObject
{
	static $db = array (
		'Title' => 'Text',
		'Date' => 'Date',
		'Author' => 'Text',
		'NewsContent' => 'HTMLText'
	);
 
	static $has_one = array (
		'HomePage' => 'HomePage',
		'NewsImage' => 'Image'
	);
 
	public function getCMSFields_forPopup()
	{
		$date = new DateField('Date','Date (e.g. 12/24/2012)');
		$date->setConfig('showcalendar', false);
		$date->setConfig('dmyfields',true);
		$date->setConfig('dateformat','MM-DD-YYYY');
		$date->setLocale('en-US');
		return new FieldSet(
			new TextField('Title'),
			$date,
			new TextField('Author'),
			new SimpleHTMLEditorField('NewsContent','Article Content'),
			new ImageField('NewsImage')
		);
	}
}
