<?php

class NewsItem extends DataObject
{
	static $db = array (
		'Title' => 'Text',
		'Date' => 'Date',
		'Author' => 'Text',
		'NewsContent' => 'HTMLText',
		'VideoCode' => 'HTMLText',
		'VimeoID' => 'Int',
		'Vimeohtml' => 'HTMLText',
		'VideoEnabled' => 'Boolean'
	);
 
	static $has_one = array (
		'HomePage' => 'HomePage',
		'NewsImage' => 'Image'
	);

	public function onBeforeWrite(){
		if($this->VimeoID) {
			$vurl = $this->VimeoID ? 'http://vimeo.com/'.$this->VimeoID  : rawurlencode('http://vimeo.com/7100569');
		$vwidth = "640";
		$vheight = "472";
		$vbyline = "false";
		$vtitle = 'false';
		$vportrait = 'false';
		$vcolor = 'e6e3e3';
		$vautoplay = 'false';
		$vapi = 'true';

		$vimeourl = "http://vimeo.com/api/oembed.xml?url=".$vurl
		."&width=".$vwidth
		."&height=".$vheight
		."&byline=".$vbyline
		."&title=".$vtitle
		."&portrait=".$vportrait
		."&color=".$vcolor
		."&autoplay=".$vautoplay
		."&api=".$vapi
		."&xhtml=true"
		."&iframe=false";
		$r = new RestfulService($vimeourl, 3600);
		$h = array();
		$response = $r->request($subURL = '', $method = "GET", $data = null,$h, $curlOptions = array());
		$status = $response->getStatusCode();
		if ($status != 200){
			//user_error($status.": ".$response->getStatusDescription().' Unable to load city services.', E_USER_ERROR);
			$this->Vimeohtml = null;
		}else{
			$data = strip_tags($response->getBody());
			$oembed = simplexml_load_string($response->getBody());
			//$this->VideoEnabled = 1;
			DB::query('UPDATE ' . $this->ClassName . ' SET Vimeohtml=\''.$oembed->html.'\''); 
		}

		}
		parent::onBeforeWrite();

	}
 
	public function getCMSFields_forPopup()
	{
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
		return new FieldSet(
			new TextField('Title'),
			$date,
			new TextField('Author'),
			new SimpleHTMLEditorField('NewsContent','Article Content'),
			new CheckBoxField('VideoEnabled', 'Link top image to Video?'),
			new TextField('VimeoID', 'Vimeo Video ID'),
	    	new LiteralField('EmbedCode', '<pVideo Status:<br> '.$embedcode.'</p>'),
			new ImageField('NewsImage', 'Top Image')
		);
	}
}
