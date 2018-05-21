<?php
class ControllerInformationPrivacy extends Controller {

	public function index() {
		$data = array();
		$this->response->setOutput($this->load->view('information/privacy', $data));
	}
}
