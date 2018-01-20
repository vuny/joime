<?php

class SubscriController extends Controller {
	
	public function Create()
	{
		$input = Input::all();	
		
		$input["token"] = mt_rand(10000000000,99999999999);
		
		$subscri = new SubscriModel();
		$subscri->fill($input);
		$subscri->save();

		//===========  Setup Email ==============//
		// Read File

		$url_unsub = "http://joime.io/unsubconfirmed.html?email=".$input['email']."&token=".$input['token'];


		$total_msg = "";
		$filename = "../../../../subscri.txt";
		$objFopen = fopen($filename, 'r');
		if ($objFopen) {
		    while (!feof($objFopen)) {
		        $msg_txt = fgets($objFopen, 4096);
		        $total_msg = $total_msg.$msg_txt;
		    }
		    fclose($objFopen);
		}

		$total_msg = str_replace("[email]", $input['email'], $total_msg);
		$total_msg = str_replace("[url_unsub]", $url_unsub , $total_msg);

		
		//=======================================//


		$headers[] = 'MIME-Version: 1.0';
		$headers[] = 'Content-type: text/html; charset=UTF-8';
		$headers[] = 'From: Joime! <no-reply@joime.io>';

		$subject = "Confirmed subscription to Joime!";

		mail($input['email'], $subject, nl2br($total_msg), implode("\r\n", $headers));

		//=======================================//

		$result = array(
        		'code' => '200',
        		'message' => 'Success'
        );

		return '{"data":'.json_encode($result).'}';

	}

	public function Del()
	{
		$input = Input::all();	
		$email = $input["email"];
		$token = $input['token'];
		
		SubscriModel::where('email', '=', $email)
					  ->where('token','=',$token)
					  ->delete();

		$result = array(
        		'code' => '200',
        		'message' => 'Success'
        );

		return '{"data":'.json_encode($result).'}';

	}
}