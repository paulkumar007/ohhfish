<?php
class ControllerInformationTnc extends Controller {

	public function index() {
		$this->response->setOutput($this->load->view('information/privacy', $data));
	}
}