<?php
class StaffPage extends Page {

	public static $db = array(
	);

	public static $has_many = array(
		'StaffMembers' => 'StaffMember'
	);
	
	 static $allowed_children = array("StaffMemberPage");
	
	public function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->removeFieldFromTab("Root.Content", "ImageGallery");
	return $fields;
  }

}
class StaffPage_Controller extends Page_Controller {

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

		// Special function to check the url and render the page template with staff member info
		$url = Director::urlParams();
		$action = $url['Action'];
		
	}	
}
