<?php 

/**
* Base Model that every model should || would inherit
*/
class BaseModel extends CI_Model
{
	
	private $data = array();

	private static $instance;


	/**
	 * Magic setter
	 * @example $newobject->newProperty = "value to be set"
	 * @param string $key 
	 * @param mixed $value 
	 * @return void
	 */

	function __set($key,$value){
		
		$this->data[$key] = $value;
	}



	/**
	 * Magic getter
	 * @example $newobject->newName
	 * @param string $name 
	 * @return mixed
	 */
	function __get($name){

		return $this->data[$name];
	}

	/**
	 * Model Singleton
	 * @return object
	 */

	final public static function getInstance(){
		
		if (self::$instance === NULL) {
			
			self::$instance = new BaseModel;
		}

		return self::$instance;
	}

	function __call($name , $args){
		
	}
}