<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Home extends CI_Controller{
	public function _construct(){
		parent::_construct();
	}
	public function index(){
		$this->template->set('title','welcome user! | Sentra Project');
		$this->template->load('template','admin/index');
	}
}

?>