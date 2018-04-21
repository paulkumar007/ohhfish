<?php

class ControllerFeedOrderFeedCsv extends Controller {

	private $expire = 3600;
	
	public function u_htmlentities($string)
	{
		$entities = array(
			chr(38) => '&amp;', // &
			chr(39) => '&apos;', // '
			chr(34) => '&quot;', // "
			chr(62) => '&gt;', // >
			chr(60) => '&lt;', // <
		);

		return $string = str_replace(array_keys($entities), $entities, $string);

	}
	
	public function index() {
		$filename = DIR_DOWNLOAD . 'feed/order_feed_csv_' . $this->config->get('config_store_id') . '.csv';
		
		if (false) {
			//$output = file_get_contents($filename);  	
			
			$doc = new DOMDocument('1.0');
			$doc->preserveWhiteSpace = false;
			$doc->formatOutput = true;
			$doc->load($filename);
			  
			//$this->response->addHeader('Content-Encoding: UTF-8');
			$this->response->addHeader('Content-Type: application/rss+csv; charset=UTF-8');
			//$this->response->addHeader('Content-Type: application/rss+xml');
			$output = $doc->saveXML();
			
			$output = trim($output);

			$output = str_replace(array("\r\n", "\xEF", "\xBB", "\xBF", "\r", "\n", "\t", '  ', '    ', '    '), '', $output);
			$output = preg_replace('/^([\\W]+)<$/', '', $output);
			ob_start();
			echo $output;
			$output = ob_get_contents();
			ob_end_clean();
			$output = str_replace(array("\r\n", "\xEF", "\xBB", "\xBF", "\r", "\n", "\t", '  ', '    ', '    '), '', $output);
			$output = $this->sanitize_output($output);
			$output = trim($output);
			
			$output = preg_replace('/^([\\W]+)<$/', '', $output);
			/* header ( 'HTTP/1.1 200 OK' );
			  header ( 'Date: ' . date ( 'D M j G:i:s T Y' ) );
			  header ( 'Last-Modified: ' . date ( 'D M j G:i:s T Y' ) );
			  header('Content-Encoding: UTF-8');
			  header('Content-Type: application/rss+xml; charset=UTF-8');
			  header('Cache-Control: max-age=0');
			  //header('Content-Disposition: attachment; filename=Base.xml');
			  echo '<!DOCTYPE xml>'.$output;

			  //$doc->save('php://output'); */

			$this->response->setOutput(trim($output));
		} else {

			$this->load->model('catalog/category');

			$this->load->model('checkout/order');

			$this->load->model('tool/image');
			

			$output_arr = array();
			$output_arr[0] = array('ORDER_ID','PRODUCT_ID','PRODUCT_NAME','PRODUCT_MODEL','PRODUCT_QTY','PRODUCT_PRICE','DELIVERY_ADDRESS','DELIVERY_DATE','DELIVERY_TIME','CUSTOMER_NAME','EMAIL','TELEPHONE','PAYMENT_METHOD','ORDER_STATUS','ORDER_DATE');
			
			$orders = $this->model_checkout_order->getOrderProducts();

			if (!empty($orders)) {
				
				$p = 1;
				foreach ($orders as $order) {
						
						$order_status = $this->model_checkout_order->getOrderStatus($order['order_status_id']);
						//$order_total = $this->model_checkout_order->getOrderTotal($order['order_id']);
						//$order_options = $this->model_checkout_order->getOrderOptions($order['order_id']);
						//$order_product_arr = $this->model_checkout_order->getOrderProductIds($order['order_id']);
						
						$address = '';
						if($order['payment_address_1'] != ''){
							$address .= $order['payment_address_1'];
						}
						if($order['payment_address_2'] != ''){
							$address .= ', '.$order['payment_address_2'];
						}
						if($order['payment_city'] != ''){
							$address .= ', '.$order['payment_city'];
						}
						if($order['payment_postcode'] != ''){
							$address .= ', '.$order['payment_postcode'];
						}
						if($order['payment_country'] != ''){
							$address .= ', '.$order['payment_country'];
						}
						

						$output_arr[$p]['ORDER_ID'] = $order['order_id'];
						$output_arr[$p]['PRODUCT_ID'] = $order['product_id'];
						$output_arr[$p]['PRODUCT_NAME'] = $order['name'];
						$output_arr[$p]['PRODUCT_MODEL'] = $order['model'];
						$output_arr[$p]['PRODUCT_QTY'] = $order['quantity'];
						$output_arr[$p]['PRODUCT_PRICE'] = $order['price'];
						$output_arr[$p]['DELIVERY_ADDRESS'] = $address;
						$output_arr[$p]['DELIVERY_DATE'] = $order['ship_date'];
						$output_arr[$p]['DELIVERY_TIME'] = $order['ship_time'];
						$output_arr[$p]['CUSTOMER_NAME'] = $order['firstname'] .' '. $order['lastname'];
						$output_arr[$p]['EMAIL'] = $order['email'];
						$output_arr[$p]['TELEPHONE'] = $order['telephone'];
						$output_arr[$p]['PAYMENT_METHOD'] = $order['payment_method'];
						$output_arr[$p]['ORDER_STATUS'] = $order_status;
						$output_arr[$p]['ORDER_DATE'] = $order['date_added'];
						
					
					$p++;
					
				}
			}
			
			header('Content-Type: text/csv; charset=utf-8');
			header('Content-Disposition: attachment; filename=order_feed.csv');
			
			$fp = fopen('php://output', 'w');
			//$fp = fopen($filename, 'w');

			if(!empty($output_arr))
			{
				foreach($output_arr as $fields)
				{
					fputcsv($fp, $fields);
				}
			}
			
			fclose($fp);
		}
	}

	public function getFile($filename) {
		if (file_exists($filename)) {

			$time = filemtime($filename) + $this->expire;

			if ($time < time()) {
				unlink($filename);
			} else {
				return true;
			}
		}

		return false;
	}

	function sanitize_output($buffer) {
		$search = array(
			'/\>[^\S ]+/s', //strip whitespaces after tags, except space
			'/[^\S ]+\</s', //strip whitespaces before tags, except space
			'/(\s)+/s'  // shorten multiple whitespace sequences
		);
		$replace = array(
			'>',
			'<',
			'\\1'
		);
		$buffer = preg_replace($search, $replace, $buffer);
		return $buffer;
	}

	public function formatXmlString($xml) {

		// add marker linefeeds to aid the pretty-tokeniser (adds a linefeed between all tag-end boundaries)
		$xml = preg_replace('/(>)(<)(\/*)/', "$1\n$2$3", $xml);

		// now indent the tags
		$token = strtok($xml, "\n");
		$result = ''; // holds formatted version as it is built
		$pad = 0; // initial indent
		$matches = array(); // returns from preg_matches()
		// scan each line and adjust indent based on opening/closing tags
		while ($token !== false) :

			// test for the various tag states
			// 1. open and closing tags on same line - no change
			if (preg_match('/.+<\/\w[^>]*>$/', $token, $matches)) :
				$indent = 0;
			// 2. closing tag - outdent now
			elseif (preg_match('/^<\/\w/', $token, $matches)) :
				$pad--;
			// 3. opening tag - don't pad this one, only subsequent tags
			elseif (preg_match('/^<\w[^>]*[^\/]>.*$/', $token, $matches)) :
				$indent = 1;
			// 4. no indentation needed
			else :
				$indent = 0;
			endif;

			// pad the line with the required number of leading spaces
			$line = str_pad($token, strlen($token) + $pad, ' ', STR_PAD_LEFT);
			$result .= $line . "\n"; // add to the cumulative result, with linefeed
			$token = strtok("\n"); // get the next token
			$pad += $indent; // update the pad size for subsequent lines
		endwhile;

		return $result;
	}
	
}

?>