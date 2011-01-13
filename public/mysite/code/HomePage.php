<?php
class HomePage extends Page {

	public static $db = array(
	);

	public static $has_many = array(
	);
	
	public function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->removeFieldFromTab("Root.Content", "ImageGallery");
	
	 $fields->addFieldToTab("Root.Content.NewsItems", new ImageDataObjectManager(
			$this,
			'NewsItems',
			'NewsItem',
			'NewsImage',
			array('Title' => 'Title','Created'=>'Date','NewsContent' => 'NewsContent'),
			'getCMSFields_forPopup'
		));
	
	return $fields;
  }

}
class HomePage_Controller extends Page_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();
		ContentNegotiator::set_encoding('UTF-8');

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		//Requirements::themedCSS('layout'); 
		//Requirements::themedCSS('typography'); 
		//Requirements::themedCSS('form'); 
		$h = @$_GET['holiday'];
		if($h){
		Requirements::javascript('mysite/javascript/holiday-video.js');
		}
	}
	
	public function newsItems(){
	//$a = DataObject::get('SiteTree',"ClassName = 'NewsItem'",'Date Desc');
	//return $a;
	}
	
	public function getTopImage(){
		$params = Director::urlParams();
		$page = $params['ID'];
		$id = substr(strrchr($page, "_"), 1);
		$a = DataObject::get_one('TopImage', 'PageID = '.$id);
		$d = array(
			'TopImage' => $a
		);
		return $this->customise($d)->renderWith('TopImageAjax');
	}
	
	public function getPageContent(){
		$params = Director::urlParams();
		$page = $params['ID'];
		$a = DataObject::get_one('SiteTree', 'URLSegment = \''.$page.'\'');
		$d = array(
			'Content' => $a->Content
		);
		return $this->customise($d)->renderWith('ContentAjax');
	}

	
				
}
