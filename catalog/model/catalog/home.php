<?php
class ModelCatalogHome extends Model {
	public function addNewsletterSubscriber($email) {
		
		$get_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "newsletter_subscriber WHERE email = '".$this->db->escape($email)."' ");
		if($get_query->num_rows > 0){
			return '0';
		} else {
		
			$ip = $this->get_client_ip();
			
			$query = $this->db->query("INSERT INTO " . DB_PREFIX . "newsletter_subscriber (email, ip, status, date_added) VALUES ('$email','$ip','1',NOW()) ");

			return 1;
		}
	}
	
	// Function to get the client IP address
	public function get_client_ip() {
		$ipaddress = '';
		if (getenv('HTTP_CLIENT_IP'))
			$ipaddress = getenv('HTTP_CLIENT_IP');
		else if(getenv('HTTP_X_FORWARDED_FOR'))
			$ipaddress = getenv('HTTP_X_FORWARDED_FOR');
		else if(getenv('HTTP_X_FORWARDED'))
			$ipaddress = getenv('HTTP_X_FORWARDED');
		else if(getenv('HTTP_FORWARDED_FOR'))
			$ipaddress = getenv('HTTP_FORWARDED_FOR');
		else if(getenv('HTTP_FORWARDED'))
		   $ipaddress = getenv('HTTP_FORWARDED');
		else if(getenv('REMOTE_ADDR'))
			$ipaddress = getenv('REMOTE_ADDR');
		else
			$ipaddress = 'UNKNOWN';
		return $ipaddress;
	}
	
}