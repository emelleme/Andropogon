<?php
class Page extends SiteTree {

	public static $db = array(
	);

	public static $has_many = array(
		'TopImages' => 'TopImage'
	);
	
	public function getCMSFields() {
	$fields = parent::getCMSFields();
	
	
	$manager = new ImageDataObjectManager(
			$this, // Controller
			'TopImages', // Source name
			'TopImage', // Source class
			'TopImage', // File name on DataObject
			array(
				'Caption' => 'Caption'
			), // Headings 
			'getCMSFields_forPopup' // Detail fields (function name or FieldSet object)
			// Filter clause
			// Sort clause
			// Join clause
		);
	$fields->addFieldToTab("Root.Content.ImageGallery",new HeaderField('ImageGalleryHeader','Upload Image(s) for this Page.'));
    $fields->addFieldToTab("Root.Content.ImageGallery",$manager);
	return $fields;
  }

}
class Page_Controller extends ContentController {

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
		if(isset($_GET['t'])){
SSViewer::set_theme('web');
}

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		//Requirements::themedCSS('layout'); 
		//Requirements::themedCSS('typography'); 
		Requirements::javascript('mysite/javascript/jquery.url.min.js'); 
	}
	public function MetaTags($includeTitle = true) {
		$tags = "";
		if($includeTitle === true || $includeTitle == 'true') {
			$tags .= "<title>" . Convert::raw2xml(($this->MetaTitle)
				? $this->MetaTitle
				: $this->Title) . "</title>\n";
		}

		$charset = ContentNegotiator::get_encoding();
		$tags .= "<meta http-equiv=\"Content-type\" content=\"text/html; charset=$charset\" />\n";
		if($this->MetaKeywords) {
			$tags .= "<meta name=\"keywords\" content=\"" . Convert::raw2att($this->MetaKeywords) . "\" />\n";
		}
		if($this->MetaDescription) {
			$tags .= "<meta name=\"description\" content=\"" . Convert::raw2att($this->MetaDescription) . "\" />\n";
		}
		if($this->ExtraMeta) { 
			$tags .= $this->ExtraMeta . "\n";
		} 

		$this->extend('MetaTags', $tags);

		return $tags;
	}
	
	public function TopImages(){
		$d = DataObject::get('TopImage', "PageID =".$this->ID, "TopImageID ASC");
		return $d;
	}
	public function TopImageCount(){
	
		@$d = DataObject::get('TopImage', 'PageID = '.$this->ID);
		if($d === Null)
			$count = 0;
		else
			$count = $d->Count();
		
		return $count;
	}
}
