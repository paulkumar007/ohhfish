<?php
class ModelCatalogEmailManager extends Model
{
    public function sendEmail($data, $template, $sendto='', $custom_content='', $sendfrom = array()) {

			
		$template_data = $this->getEmailContent($template);
		if($template_data){
			$subject = html_entity_decode($template_data['subject'], ENT_QUOTES, 'UTF-8');
			
			if($custom_content != '') {
				$content = html_entity_decode($custom_content, ENT_QUOTES, 'UTF-8');
			} else {
				$content = html_entity_decode($template_data['content'], ENT_QUOTES, 'UTF-8');
			}

			$smtp_username = $this->config->get('config_mail_smtp_username');
			$smtp_password = $this->config->get('config_mail_smtp_password');

			if(empty($sendto)) {
				$sendto = $this->config->get('config_email');
			}

			if($sendfrom){
				$sender_email = $sendfrom['sender_email'];
				$sender_name = $sendfrom['sender_name'];
			}else{
				$sender_email = $this->config->get('config_email');
				if($sendto == $sender_email){
					$sender_email = 'info@fishgeniee.com';
					$smtp_username = 'info@fishgeniee.com';
					$smtp_password = 'password@123';
				}
				$sender_name = $this->config->get('config_name');
			}
			
			foreach($data as $key => $value){
				$subject = str_replace("[$key]", $value, $subject);
				$content = str_replace("[$key]", $value, $content);
			}
			
			$mail = new PHPMailer();
			$mail->IsSMTP();
			$mail->Mailer = $this->config->get('config_mail_protocol');
			$mail->Host = $this->config->get('config_mail_smtp_hostname');
			$mail->Port = $this->config->get('config_mail_smtp_port'); // 8025, 587 and 25 can also be used. Use Port 465 for SSL.
			$mail->SMTPAuth = true;
			$mail->SMTPSecure = 'ssl';
			$mail->CharSet = 'UTF-8';
			$mail->Username = $smtp_username;
			$mail->Password = $smtp_password;

			$mail->From = $smtp_username;
			$mail->FromName = "FISHGENIEE";
			$mail->AddAddress($sendto, " ");
			$mail->IsHTML(true); 
			$mail->Subject = $subject;
			$mail->Body = $content;
			//$mail->WordWrap = 50; 

			if($mail->Send()){
				return true;
			} else {
				echo 'Message was not sent.';
				echo 'Mailer error: ' . $mail->ErrorInfo;
				exit;
			}
			
			/*
			$mail	= new Mail();
			$mail->protocol  = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->hostname  = $this->config->get('config_mail_smtp_hostname');
			$mail->username  = $smtp_username;
			$mail->password  = $smtp_password;
			$mail->port      = $this->config->get('config_mail_smtp_port');
			$mail->timeout   = $this->config->get('config_mail_smtp_timeout');
			$mail->setTo($sendto);
			$mail->setFrom($sender_email);
			$mail->setSender($sender_name);
			$mail->setSubject($subject);
			$mail->setHTML($content);

			//echo $content;
			$mail->send();
			return true;
			*/
			
			
		}else{
			$this->db->query('INSERT INTO ' . DB_PREFIX . 'message_log(title, text, date_added) values("Email FAILED", "' . $this->db->escape($template. ":". $sendto) . '" ,NOW())');
		}
		return false;
    }


    public function getEmailContent($id) {
		$sql = "SELECT * FROM " . DB_PREFIX . "email_manager em LEFT JOIN " . DB_PREFIX . "email_manager_description emd ON em.email_manager_id=emd.email_manager_id WHERE em.code = '" . $this->db->escape($id) . "' AND emd.language_id = '" . (int)$this->config->get('config_language_id') . "'";
        $query = $this->db->query($sql);
			
        return $query->row;
    }


    public function addEnquiry($title,$data) {

        $clientuseripadd = $_SERVER['REMOTE_ADDR'];

		$enquiry = '';
		if(isset($data['enquiry'])){
			$enquiry .= $this->db->escape($data['enquiry']);
		}
		if(isset($data['webpage'])){
			$enquiry .= '<br/><br/>Webpage : '.$this->db->escape($data['webpage']);
		}
		
		$lname = (isset($data['lastname'])?$data['lastname']:'');
		$mobile = (isset($data['mobile'])?$data['mobile']:'');
		$address = (isset($data['address'])?$data['address']:'');
		
      	$this->db->query("INSERT INTO " . DB_PREFIX . "enquiry SET
            name = '" . $this->db->escape($data['name'])."',
            lname = '" . $this->db->escape($lname)."',
            subject='".$title."',
            email='". $this->db->escape($data['email'])."',
            text='". $enquiry."',
            phone='". $this->db->escape($mobile)."',
            address='". $this->db->escape($address)."',
            enquiry_type_id='". (int)$data['enquiry_type_id']."',
            ip='".$clientuseripadd."'");
			
        $enquiry_id = $this->db->getLastId();
        return $enquiry_id;
      	}
}

?>