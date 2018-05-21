<?php
class ControllerInformationTnc extends Controller {

	public function index() {
		$data = array();
		$this->response->setOutput($this->load->view('information/tnc', $data));
	}
}
