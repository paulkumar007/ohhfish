<?php
class ControllerInformationPrivacy extends Controller {

	public function index() {
		$this->response->setOutput($this->load->view('information/privacy', $data));
	}
}
