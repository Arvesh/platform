<?php 
/**
* Default client Controller
*/
class Site extends CI_Controller
{

	private static $instance;
	
	function index()
	{
		
	}

	/**
	 * Singleton that bypasses the constructor
	 * @tutorial  $something::getInstance();
	 * @return object
	 */
	static function getInstance(){
		
		if (self::$instance === NULL) {
			
			self::$instance = new Site();
		}

		return $instance;

	}
}