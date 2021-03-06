<?php
class ApproachPage extends HomePage {

	public static $db = array(
	);

	public static $has_many = array(
		'ApproachItem' => 'Approach'
	);
	
	public function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->removeFieldFromTab("Root.Content", "ImageGallery");
	$fields->removeFieldFromTab("Root.Content.Main", "Content");
	
	/*$fields->addFieldToTab("Root.Content.Main", new ImageDataObjectManager(
			$this,
			'ApproachItem',
			'Approach',
			'ApproachImage',
			array('Title' => 'Title','Created'=>'Date','Content' => 'Content'),
			'getCMSFields_forPopup'
		));*/
	//$fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("Content"));
	return $fields;
  }

}
class ApproachPage_Controller extends HomePage_Controller {

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
	}
	
	
				
}
