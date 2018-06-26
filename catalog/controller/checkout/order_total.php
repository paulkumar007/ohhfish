<?php
class ControllerCheckoutOrderTotal extends Controller {
	public function index() {
		// Totals
		$this->load->model('extension/extension');

		$totals = array();
		$taxes = $this->cart->getTaxes();
		$total = 0;
		
		// Because __call can not keep var references so we put them into an array. 			
		$total_data = array(
			'totals' => &$totals,
			'taxes'  => &$taxes,
			'total'  => &$total
		);
		
		// Display prices
		if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
			$sort_order = array();

			$results = $this->model_extension_extension->getExtensions('total');

			foreach ($results as $key => $value) {
				$sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
			}

			array_multisort($sort_order, SORT_ASC, $results);

			foreach ($results as $result) {
				if ($this->config->get($result['code'] . '_status')) {
					$this->load->model('extension/total/' . $result['code']);
					
					// We have to put the totals in an array so that they pass by reference.
					$this->{'model_extension_total_' . $result['code']}->getTotal($total_data);
				}
			}

			$sort_order = array();

			foreach ($totals as $key => $value) {
				$sort_order[$key] = $value['sort_order'];
			}

			array_multisort($sort_order, SORT_ASC, $totals);
		}

		$data['totals'] = array();
		$total_item = (int)$this->cart->countProducts();
		if($total_item == '1'){
			$display_item = "1 Item";
		} else {
			$display_item = $total_item." Items";
		}
			
		foreach ($totals as $total) {
			$data['totals'][] = array(
				'title' => str_replace(array("Sub-Total","Total","Handling Fee","Low Order Fee","Coupon (DISCOUNT)"),array("Price (".$display_item.")","Order Total","Delivery Cost","Delivery Cost","5% Discount on pre order"),$total['title']),
				'text'  => $this->currency->format($total['value'], $this->session->data['currency'])
			);
		}

		$this->response->setOutput($this->load->view('checkout/order_total', $data));
	}
}
