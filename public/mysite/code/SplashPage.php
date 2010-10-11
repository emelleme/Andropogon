<?php
class SplashPage extends Page {

	public static $db = array(
	);

	public static $has_many = array(
		'BgImages' => 'BackgroundImage'
	);
	
	public function getCMSFields() {
	$fields = parent::getCMSFields();
	
	
	$manager = new ImageDataObjectManager(
			$this, // Controller
			'BgImages', // Source name
			'BackgroundImage', // Source class
			'BgImage', // File name on DataObject
			null, // Headings 
			'getCMSFields_forPopup' // Detail fields (function name or FieldSet object)
			// Filter clause
			// Sort clause
			// Join clause
		);
		$fields->removeFieldFromTab("Root.Content","ImageGallery");
	$fields->addFieldToTab("Root.Content.BackgroundImages",new HeaderField('ImageGalleryHeader','Upload Image(s) for this Page.'));
    $fields->addFieldToTab("Root.Content.BackgroundImages",$manager);
	return $fields;
	
	return $fields;
  }

}
class SplashPage_Controller extends Page_Controller {

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
		//Requirements::themedCSS('form'); 
	}
	
	function BGImage() { 
				return DataObject::get_one('BackgroundImage', null, false, 'RAND()'); 
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
}
