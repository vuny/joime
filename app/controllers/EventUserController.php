<?php
class EventUserController extends Controller {
	

	public function Create()
	{
		
		$input = Input::all();	
		$check_return = 0;
		$error_msg = "";

		if($input["email"] == "" || $input["password"] == "")
		{
			$check_return = 1;
			$error_msg = "email or password empty";

		}else if (filter_var($input["email"], FILTER_VALIDATE_EMAIL) === false) {
			$check_return = 1;
			$error_msg = "email invalid";
		}

		if($check_return == 0)
		{
			$sm = new EventUserModel;
			$sm->fill($input);
			$sm->save();
			$id_return = $sm->id;
			return '{"status":"OK" , "user_id": "'.$id_return.'", "msg":""}';
		}else{

			return '{"status":"NOK" , "user_id": "", "msg":"'.$error_msg.'"}';

		}
	}

	public function Edit()
	{	
		$input = Input::all();	

		if (Input::hasFile('image'))
		{
    		//$filename = Input::file('coverImage')->getClientOriginalName();
			$file_time = time();
    		$extension = Input::file('image')->getClientOriginalExtension();

    		$filename = $file_time.".".$extension;

    		$path = "../../../../images/upload/";
    		$upload_success  = Input::file('image')->move($path, $filename);
    		$input["image"] = $filename;

    		
		}

		$user = EventUserModel::find($input['id']);
		$user->fill($input);
		$user->update();

		return '{"status":"OK"}';
	}


	public function Login()
	{
		$input = Input::all();

		$username = $input["email"];
		$password = $input["password"];

		$deviceToken = @$input['deviceToken'];

		$data = EventUserModel::where('email', '=', $username)->
						where('password','=',$password)->						
						get();

		if (count($data) > 0)
		{
			$data1 = $data->toArray();
			$user_id =  $data1['0']['id'];

			// updateUserDeviceToken($user_id, $deviceToken);

			$user = EventUserModel::find($user_id);
			$user->fill(array('deviceToken' => $deviceToken));
			$user->update();

			return '{"status":"OK" , "user_id": "'.$user_id.'", "item" : '.$data.'}';
		}else{
			return '{"status":"NOK" , "user_id": "Username or Password Incorrect"}';
		}	
	}

	public static function Info($user_id) {
		
		$id = $user_id;

		$data = EventUserModel::where('id', '=', $id)->first();

		if(count($data) > 0) {
			unset($data['password']);
			return '{"status":"OK" , "item" : '.$data.'}';
		}else{
			return '{"status":"NOK" , "user_id": "Username or Password Incorrect"}';
		}

	}


	public static function FacebookLogin()
	{
		//$ex = explode("&",$data);
		// facebookId=10000000&name=userxxx&email=email@mail.com&hash=sdsdifogogo

		/*$facebookId = explode("=",$ex[0]);
		$name = explode("=",$ex[1]);
		$email = explode("=",$ex[2]);
		$hash = explode("=",$ex[3]);
		$facebookId = $facebookId[1];
		$name = $name[1];
		$email = $email[1];
		$hash = $hash[1];

		*/
		$input = Input::all();	
		$facebookId = $input["facebookId"];
		$name = $input["name"];
		$email = $input["email"];
		$hash = $input["hash"];
		$deviceToken = @$input["deviceToken"];

		$data = EventUserModel::where('email','=',$email)->						
						get();

		if (count($data) > 0)
		{
			$data1 = $data->toArray();
			$user_id =  $data1['0']['id'];

			$user = EventUserModel::find($user_id);
			$user->fill(array('deviceToken' => $deviceToken));
			$user->update();
		//	return '{"status":"OK" , "user_id": "'.$user_id.'", "item" : '.$data.'}';
		}else{
		//	return '{"status":"NOK" , "user_id": "Username or Password Incorrect"}';
		}

		return '{"status":"OK" , "user_id": "'.$user_id.'", "item" : '.$data.'}';

	}

	public static function UserDelete($user_id)
	{

		$data = EventUserModel::where('id', '=', $user_id)->
						delete();

		return '{"status":"OK"}';

	}

	public static function getUserList($page)
	{
		
		if($page=="") $page = 1;
		
		$limit = 10;
		
		$result = CommonFunction::resultPaging(
						$page, $limit, EventUserModel::count(),
						EventUserModel::take($limit)->skip(($page-1)*$limit)->get(array('id', 'name','email', 'status','type','password','phone','facebookId'))
					);

		return $result;


	}

	public static function getUserFavorite($id)
	{
		
		$limit = 100;
		$page = 1;
		
		if($page=="") $page = 1;

		
		$result = CommonFunction::resultPaging(
						$page, $limit, FavoriteModel::join("event","event.id","=","favorite.event_id")->where('user_id', '=', $id)->count(),
						FavoriteModel::join("event","event.id","=","favorite.event_id")->where('user_id', '=', $id)->take($limit)->skip(($page-1)*$limit)->get(array('event_id','user_id','name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime','favoriteCount','viewCount','checkInCount'))
					);
		if (count($result)) {
			$ownerData = EventUserModel::where('id', '=', $id)->first();
			unset($ownerData->password);
			$result['ownerData'] = $ownerData;
		} else {
			$result['ownerData'] = new stdClass();
		}
		return $result;


	}

	public static function EventBlock()
	{
		$input = Input::all();	

		$fv = new EventBlockModel;
		$fv->fill($input);
		$fv->save();
		
		return '{"status":"OK"}';
	}

	public static function EventUnBlock()
	{
		$input = Input::all();	
		$eventId = $input["event_id"];
		$userId = $input["user_id"];

		$data = EventBlockModel::where('event_id', '=', $eventId)->
				where('user_id','=',$userId)->
				delete();
		
		return '{"status":"OK"}';

	}

	public static function EventRequest()
	{
		return '{"status":"OK"}';
	}

	public function FavoriteAdd()
	{
		$input = Input::all();	
		
		$fv = new FavoriteModel;
		$fv->fill($input);
		$fv->save();

		$data = EventModel::where('id', '=', $input['event_id'])->first();

		$data_plus = $data->favoriteCount + 1 ;

		$data_update = Array();
		$data_update['id'] = $input['event_id'];
		$data_update['favoriteCount'] = $data_plus;
		$event = EventModel::find($data_update['id']);
		$event->fill($data_update);
		$event->update();

		return '{"status":"OK"}';
	}

	public function FavoriteDel()
	{
		$input = Input::all();	
		$eventId = $input["event_id"];
		$userId = $input["user_id"];

		$data = FavoriteModel::where('event_id', '=', $eventId)->
				where('user_id','=',$userId)->
				delete();
		
		$data = EventModel::where('id', '=', $input['event_id'])->first();

		$data_sub = $data->favoriteCount - 1 ;
		
		$data_update = Array();
		$data_update['id'] = $input['event_id'];
		$data_update['favoriteCount'] = $data_sub;
		$event = EventModel::find($data_update['id']);
		$event->fill($data_update);
		$event->update();


		return '{"status":"OK"}';
	}


	public static function getUserEventList($event_type,$id)
	{

		// Event Type  Up Coming , Past , Draft
		// Page My Event  is Own Event
		
		$limit = 100;
		$page = 1;
		
		if($page=="") $page = 1;
		
		$date_now = date("Y-m-d");
		$result = CommonFunction::resultPaging(
						$page, $limit, EventModel::where('userId', '=', $id)->count(),
						EventModel::where("status","=",$event_type)->
						where("endDate",">=",$date_now)->where('userId', '=', $id)->take($limit)->skip(($page-1)*$limit)->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime'))
					);


		return $result;

	}
	
	public static function getUserNotice($id)
	{
		
			return '{"status":"OK"}';

	}

	public static function getUserEventApprove($event_id,$user_id)
	{
		
			return '{"status":"OK"}';

	}


	public static function getUserSuggestion($id)
	{
		
		$result = CommonFunction::resultPaging(
						$page, $limit, EventModel::where('userId', '=', $id)->count(),
						EventModel::where('user_id', '=', $id)->take($limit)->skip(($page-1)*$limit)->get(array('id', 'user_id','event_id', 'detail','created_at','updated_at'))
					);


		return $result;

	}

	public static function getUserSuggestionDetail($id)
	{
		
		$result = CommonFunction::resultPaging(
						$page, $limit, EventModel::where('id', '=', $id)->count(),
						EventModel::where('user_id', '=', $id)->take($limit)->skip(($page-1)*$limit)->get(array('id', 'user_id','event_id', 'detail','created_at','updated_at'))
					);


		return $result;

	}


	public function SuggestionCreate()
	{

		$input = Input::all();	
		
		$sg = new SuggestionModel;
		$sg->fill($input);
		$sg->save();
		
		return '{"status":"OK"}';

	}


	public static function getUserSuggestionDel($suggestion_id)
	{
		
		

		$data = SuggestionModel::where('id', '=', $suggestion_id)->delete();
		
		return '{"status":"OK"}';

	}


	

}