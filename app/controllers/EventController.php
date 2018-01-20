<?php
class EventController extends Controller {
	

	public function Create()
	{
		
		$input = Input::all();	
		$filename = "";
		//   14/02/2017
		$ex1 = explode("/",$input['startDate']);
		$ex2 = explode("/",$input['endDate']);

		if (Input::hasFile('coverImage'))
		{
    		//$filename = Input::file('coverImage')->getClientOriginalName();
    		
			$file_time = time();
    		$extension = Input::file('coverImage')->getClientOriginalExtension();

    		$filename = $file_time.".".$extension;

    		$path = "../../../../images/upload/";
    		$upload_success  = Input::file('coverImage')->move($path, $filename);
    		
		}

		$input['startDate'] = $ex1['2']."-".$ex1['1']."-".$ex1['0'];
		$input['endDate'] = $ex2['2']."-".$ex2['1']."-".$ex2['0'];

		$check_return = 0;	
		$error_msg = "";

		if($input["name"] == "")
		{
			$check_return = 1;
			$error_msg = "name empty";

		}

		if($check_return == "")
		{
			$input['coverImage'] = $filename;

			$sm = new EventModel;
			$sm->fill($input);
			$sm->save();

			$id_return = $sm->id;

			return '{"status":"OK" , "event_id": "'.$id_return.'" , "msg" : "Success"}';

		}else{

			return '{"status":"NOK" , "event_id": "" , "msg" : "'.$error_msg.'"}';

		}

		
	}


	public static function EventCheckedIn($event_id,$user_id)
	{
		$checkin = new CheckinModel;
		$input['user_id'] = $user_id;
		$input['event_id'] = $event_id;
		$checkin->fill($input);
		$checkin->save();

		$data_detail = EventModel::where('id', '=', $event_id )->first();
		$data_add = $data_detail->checkInCount + 1 ;
		$data_update = Array();
		$data_update['id'] = $event_id;
		$data_update['checkInCount'] = $data_add;
		$event = EventModel::find($data_update['id']);
		$event->fill($data_update);
		$event->update();

		return '{"status":"OK"}';


	}


	public function Edit()
	{
		$input = Input::all();	

		$ex1 = explode("/",$input['startDate']);
		$ex2 = explode("/",$input['endDate']);

		$input['startDate'] = $ex1['2']."-".$ex1['1']."-".$ex1['0'];
		$input['endDate'] = $ex2['2']."-".$ex2['1']."-".$ex2['0'];

		
		if (Input::hasFile('coverImage'))
		{
    		//$filename = Input::file('coverImage')->getClientOriginalName();
    		
			$file_time = time();
    		$extension = Input::file('coverImage')->getClientOriginalExtension();

    		$filename = $file_time.".".$extension;

    		$path = "../../../../images/upload/";
    		$upload_success  = Input::file('coverImage')->move($path, $filename);
    		$input['coverImage'] = $filename;
		}

		$event = EventModel::find($input['id']);
		$event->fill($input);
		$event->update();

		return '{"status":"OK"}';

	}


	public static function EventAddParticipant($event_id , $user_id)
	{

		$participant = new EventParticipantModel;
		$input['user_id'] = $user_id;
		$input['event_id'] = $event_id;
		$participant->fill($input);
		$participant->save();

		return '{"status":"OK"}';


	}

	public static function EventParticipant($event_id)
	{

		$data = EventParticipantModel::where("event_id","=",$event_id)->orderBy('id', 'ASC')->get(array('id', 'event_id','user_id'));
		$data_all = '{"items":'.$data.'}';

		return $data_all;


		//return '{"status":"OK"}';


	}




	public static function EventDelete($event_id)
	{

		$data = EventModel::where('id', '=', $event_id)->
						delete();

		return '{"status":"OK"}';

	}


	public function Search()
	{
		$page = 1;
		$limit = 100;

		$input = Input::all();	
		$keyword = $input["keyword"];
		/*$userId = $input["userId"];
		$dateType = $input["dateType"];
		$date = $input["date"];
		$rangeType = $input["rangeType"];
		$latitude = $input["latitude"];
		$longitude = $input["longitude"];
 		$cateType = $input["cateType"];
 		$type = $input["type"];

        */

		
		$event_search_sql = EventModel::where('name','LIKE','%'.$keyword.'%')->
							//orwhere('description','LIKE','%'.$keyword.'%')->
							where('private','=',0);
		
	
		//$result = DB::select("select * from event  where ( name like '%".$keyword."%' or description like '%".$keyword."%') and private = '0' ")->get();

				
		$result = CommonFunction::resultPaging(
					$page, $limit, $event_search_sql->count(),
					$event_search_sql->
					select('event.*')->
					take($limit)->skip(($page-1)*$limit)->get()
				);

		return $result;

	}


	public function Tomorrow()
	{
		$date_now = date("Y-m-d");

		$d=strtotime("tomorrow");
		$tomorrow =  date("Y-m-d", $d);

		$data_tomorrow = EventModel::where("startDate","=",$tomorrow)->orderBy('id', 'desc')->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime','favoriteCount','viewCount','checkInCount'));

		$data_all = '{"items":'.$data_tomorrow.'}';

		return $data_all;

	}


	public function Nexthour()
	{
		$date_now = date("Y-m-d");

		$d=strtotime("tomorrow");
		$tomorrow =  date("Y-m-d", $d);

		$time_now = date("H:m");
		$time_next_hour = date('H', strtotime('1 hour')).":00";
	

	/*	$data_all_next_hour = EventModel::where("startDate","=",$date_now)->
		where("startTime",'>=',$time_next_hour)
		->where("startTime","<=",$time_next_hour)
		->where("private","=",0)
		->orwhere("userId","=",24)
		->orderBy('id', 'desc')
		->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime','favoriteCount','viewCount','checkInCount'));
	*/

		$data_all_next_hour = DB::select("select `id`, `name`, `description`, `avenueName`, `avanueAddress`, `latitude`, `longitude`, `coverImage`, `facebook`, `twitter`, `line`, `website`, `host`, `categoryId`, `status`, `private`, `share`, `userId`, `startDate`, `endDate`, `time`, `startTime`, `endTime`, `favoriteCount`, `viewCount`, `checkInCount` from `event` where `startDate` = '$date_now' and `startTime` >= '$time_next_hour' and `startTime` <= '$time_next_hour' and (`private` = 0 or `userId` = '24' ) order by `id` desc");

		$data_all_next_hour = json_encode($data_all_next_hour);

		$data_all = '{"items":'.$data_all_next_hour.'}';

	

		return $data_all;


	}


	
	public function Upcoming()
	{
		
		$limit = 100;
		
		$page = 1;

		$d=strtotime("tomorrow");
		$tomorrow =  date("Y-m-d", $d);

		$date_now = date("Y-m-d");
		$time_now = date("H:m");


		/*$result = CommonFunction::resultPaging(
						$page, $limit, EventModel::count(),
						EventModel::where("startDate",">=",$tomorrow)->orderBy('id', 'desc')->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime'))

					);
		*/

		$result = CommonFunction::resultPaging(
						$page, $limit, EventModel::count(),
						EventModel::where("startDate",">=",$date_now)->
						//where("endDate","<=",$date_now)->
						where("endTime", ">",$time_now)->where("startTime","<",$time_now)->where("private","=","0")->orderBy('id', 'desc')->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime'))

					);
		

//dd(DB::getQueryLog());

		return $result;



		//$data_now = EventModel::where("startDate","=",$date_now)->where("endTime", ">",$time_now)->where("startTime","<",$time_now)->orderBy('id', 'desc')->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime'));


	}


	public static function getEventDetail($event_id)
	{
		$data = EventModel::where('id', '=', $event_id)->
							get();
							
		if (count($data) > 0 && $data[0]->userId > 0) {
			$ownerData = EventUserModel::where('id', '=', $data[0]->userId)->first();
			unset($ownerData->password);
			$data[0]['ownerData'] = $ownerData;
		} else {
			$data[0]['ownerData'] = new stdClass();
		}
		
		$data_detail = EventModel::where('id', '=', $event_id )->first();

		$data_add = $data_detail->viewCount + 1 ;
		
		$data_update = Array();
		$data_update['id'] = $event_id;
		$data_update['viewCount'] = $data_add;
		$event = EventModel::find($data_update['id']);
		$event->fill($data_update);
		$event->update();

		return '{"items":'.$data."}";			
	}



	public static function getEventDetailbyUser($event_id,$user_id)
	{
		$data = EventModel::where('id', '=', $event_id)->
							//where('userId','=',$user_id)->
							get();
		if (count($data) > 0 && $data[0]->userId > 0) {
			$ownerData = EventUserModel::where('id', '=', $data[0]->userId)->first();
			unset($ownerData->password);
			$data[0]['ownerData'] = $ownerData;
		} else {
			$data[0]['ownerData'] = new stdClass();
		}

		$data_checkin = CheckinModel::where("user_id","=",$user_id)->
									  where("event_id","=",$event_id)->
									  count();
		if($data_checkin)
		{
			$data[0]['checkedIn'] = 1;
		}else{
			$data[0]['checkedIn'] = 0;
		}

		$data_fav = FavoriteModel::where("user_id","=",$user_id)->
								   where("event_id","=",$event_id)->
								   count();
		if($data_fav)
		{
			$data[0]['favorite'] = 1;
		}else{
			$data[0]['favorite'] = 0;
		}

		return '{"items":'.$data."}";			
	}


	public static function getEventListAllbyUser($sat,$sun,$user_id)
	{

		// empty sat sun = a b

		$date_now = date("Y-m-d");

		$d=strtotime("tomorrow");
		$tomorrow =  date("Y-m-d", $d);

		$time_now = date("H:m");
		//$time_next_hour = date('H:m', strtotime('1 hour'));
        $time_next_hour = date('H', strtotime('1 hour')).":00";

		

		//$data_now = EventModel::where("startDate","=",$date_now)->where("endTime", ">",$time_now)->where("startTime","<",$time_now)->where("private","=",0)->orderBy('id', 'desc')->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime','favoriteCount','viewCount','checkInCount'));



		$data_now = DB::select("select `id`, `name`, `description`, `avenueName`, `avanueAddress`, `latitude`, `longitude`, `coverImage`, `facebook`, `twitter`, `line`, `website`, `host`, `categoryId`, `status`, `private`, `share`, `userId`, `startDate`, `endDate`, `time`, `startTime`, `endTime`, `favoriteCount`, `viewCount`, `checkInCount` from `event` where ( `startDate` <= '$date_now' and `endDate` >= '$date_now') and ( `endTime` > '$time_now' and `startTime` < '$time_now' ) and ( `private` = 0 or userId = '$user_id') order by `id` desc");


		foreach ($data_now as $value)
		{
			$check_block = EventBlockModel::where("user_id","=",$user_id)->where("event_id","=",$value->id)->get();

			if(count($check_block) > 0)
			{

				//unset($data_next_hour[$x_u]);
				unset($value);
			}


		} 
    	

		//------------------- Block ------------------//
		/*
		for($x_u = 0 ; $x_u < count($data_now) ; $x_u++)
		{
			$check_block = EventBlockModel::where("user_id","=",$user_id)->where("event_id","=",$data_now[$x_u]['id'])->get();

			if(count($check_block) > 0)
			{

				unset($data_now[$x_u]);
			}

			
		}
		*/

		foreach ($data_now as $value)
		{
			$check_private = EventModel::where("private","=",1)->where("id","=",$value->id)->where("userId","!=",$user_id)->get();

			if(count($check_private) > 0)
			{

				unset($value);

			}

		}

		/*
		for($x_u = 0 ; $x_u < count($data_now) ; $x_u++)
		{
			$check_private = EventModel::where("private","=",1)->where("id","=",$data_now[$x_u]['id'])->where("userId","!=",$user_id)->get();

			if(count($check_private) > 0)
			{

				unset($data_now[$x_u]);

			}
	
		}
		*/

		/*$data_next_hour = EventModel::where("startDate","=",$date_now)->
		where("startTime",'>=',$time_next_hour)
		->where("startTime","<=",$time_next_hour)
		->orderBy('id', 'desc')->where("private","=",0)->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime','favoriteCount','viewCount','checkInCount'));

		*/
		$data_next_hour = DB::select("select `id`, `name`, `description`, `avenueName`, `avanueAddress`, `latitude`, `longitude`, `coverImage`, `facebook`, `twitter`, `line`, `website`, `host`, `categoryId`, `status`, `private`, `share`, `userId`, `startDate`, `endDate`, `time`, `startTime`, `endTime`, `favoriteCount`, `viewCount`, `checkInCount` from `event` where ( `startDate` <= '$date_now' and `endDate` >= '$date_now') and `startTime` >= '$time_next_hour' and `startTime` <= '$time_next_hour' and (`private` = 0 or `userId` = '$user_id' ) order by `id` desc");

	
		//------------------- Block ------------------//
		foreach ($data_next_hour as $value)
		{
			$check_block = EventBlockModel::where("user_id","=",$user_id)->where("event_id","=",$value->id)->get();

			if(count($check_block) > 0)
			{

				//unset($data_next_hour[$x_u]);
				unset($value);
			}


		} 
    	


		/*
		for($x_u = 0 ; $x_u < count($data_next_hour) ; $x_u++)
		{
			
			$check_block = EventBlockModel::where("user_id","=",$user_id)->where("event_id","=",$data_next_hour[$x_u]['id'])->get();

			if(count($check_block) > 0)
			{

				unset($data_next_hour[$x_u]);
			}
	
		}
		*/
		foreach ($data_next_hour as $value)
		{
			$check_private = EventModel::where("private","=",1)->where("id","=",$value->id)->where("userId","!=",$user_id)->get();

			if(count($check_private) > 0)
			{

				unset($value);

			}

		}
		/*
		for($x_u = 0 ; $x_u < count($data_next_hour) ; $x_u++)
		{
			$check_private = EventModel::where("private","=",1)->where("id","=",$data_next_hour[$x_u]['id'])->where("userId","!=",$user_id)->get();

			if(count($check_private) > 0)
			{

				unset($data_next_hour[$x_u]);

			}
	
		}
		*/



		$data_tomorrow = EventModel::where("startDate","=",$tomorrow)->orderBy('id', 'desc')->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime','favoriteCount','viewCount','checkInCount'));

		//------------------- Block ------------------//
		for($x_u = 0 ; $x_u < count($data_tomorrow) ; $x_u++)
		{
			$check_block = EventBlockModel::where("user_id","=",$user_id)->where("event_id","=",$data_tomorrow[$x_u]['id'])->get();

			if(count($check_block) > 0)
			{

				unset($data_tomorrow[$x_u]);
			}
	
		}

		for($x_u = 0 ; $x_u < count($data_tomorrow) ; $x_u++)
		{
			$check_private = EventModel::where("private","=",1)->where("id","=",$data_tomorrow[$x_u]['id'])->where("userId","!=",$user_id)->get();

			if(count($check_private) > 0)
			{

				unset($data_tomorrow[$x_u]);

			}
	
		}

		

		$data_upcoming = EventModel::where("startDate",">",$tomorrow)->orderBy('event.id', 'desc')->get();

		//------------------- Block ------------------//
		for($x_u = 0 ; $x_u < count($data_upcoming) ; $x_u++)
		{
			$check_block = EventBlockModel::where("user_id","=",$user_id)->where("event_id","=",$data_upcoming[$x_u]['id'])->get();

			if(count($check_block) > 0)
			{

				unset($data_upcoming[$x_u]);
			}
	
			
		}
		
		for($x_u = 0 ; $x_u < count($data_upcoming) ; $x_u++)
		{
			$check_private = EventModel::where("private","=",1)->where("id","=",$data_upcoming[$x_u]['id'])->where("userId","!=",$user_id)->get();

			if(count($check_private) > 0)
			{

				unset($data_upcoming[$x_u]);

			}
	
		}


		//------------------- Private ---------------//

		$data_next_hour = json_encode($data_next_hour);

		$data_now = json_encode($data_now);


		$data_all_now = '{"GroupId":"1","GroupName":"Now","eventList":'.$data_now."},";
		$data_all_next_hour = '{"GroupId":"2","GroupName":"Next Hour","eventList":'.$data_next_hour."},";
		$data_all_tomorrow = '{"GroupId":"3","GroupName":"Tomorrow","eventList":'.$data_tomorrow."},";
		$data_all_upcoming = '{"GroupId":"4","GroupName":"Coming soon","eventList":'.$data_upcoming."}";


		$data_all = '{"items":['.$data_all_now.$data_all_next_hour.$data_all_tomorrow.$data_all_upcoming.']}';

		return $data_all;

	}

	public static function getEventListAll($sat,$sun)
	{

		// empty sat sun = a b

		$date_now = date("Y-m-d");

		$d=strtotime("tomorrow");
		$tomorrow =  date("Y-m-d", $d);

		$time_now = date("H:m");
		$time_next_hour = date('H:m', strtotime('1 hour'));

		

		$data_now = EventModel::where("startDate","=",$date_now)->where("endTime", ">",$time_now)->where("startTime","<",$time_now)->orderBy('id', 'desc')->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime','favoriteCount','viewCount','checkInCount'));

		//print_r(DB::getQueryLog());


		$data_next_hour = EventModel::where("startDate","=",$date_now)->
		where("startTime",'>=',$time_next_hour)
		->where("startTime","<=",$time_next_hour)
		->orderBy('id', 'desc')->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime','favoriteCount','viewCount','checkInCount'));

		//print_r(DB::getQueryLog());




		$data_tomorrow = EventModel::where("startDate","=",$tomorrow)->orderBy('id', 'desc')->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime','favoriteCount','viewCount','checkInCount'));


		$data_upcoming = EventModel::where("startDate",">",$tomorrow)->orderBy('id', 'desc')->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime','favoriteCount','viewCount','checkInCount'));




		$data_all_now = '{"GroupId":"1","GroupName":"Now","eventList":'.$data_now."},";
		$data_all_next_hour = '{"GroupId":"2","GroupName":"Next Hour","eventList":'.$data_next_hour."},";
		$data_all_tomorrow = '{"GroupId":"3","GroupName":"Tomorrow","eventList":'.$data_tomorrow."},";
		$data_all_upcoming = '{"GroupId":"4","GroupName":"Coming soon","eventList":'.$data_upcoming."}";


		$data_all = '{"items":['.$data_all_now.$data_all_next_hour.$data_all_tomorrow.$data_all_upcoming.']}';

		return $data_all;

	}

	public static function getEventList($type,$page)
	{

		/*
		1 = now
		2 = next hour
		3 = tomorrow
		4 = upcoming
		5 = ALL
		*/

		$date_now = date("Y-m-d");

		$d=strtotime("tomorrow");
		$tomorrow =  date("Y-m-d", $d);

		$time_now = date("H:m");
		$time_next_hour = date('H:m', strtotime('1 hour'));


		$limit = 100;
		
		if($page=="") $page = 1;

		
		if($type == 1)
		{
				$result = CommonFunction::resultPaging(
						$page, $limit, EventModel::count(),
						EventModel::take($limit)->skip(($page-1)*$limit)->where("private","=",0)->where("startDate","=",$date_now)->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime'))
				);

		}

		if($type == 2)
		{
				$result = CommonFunction::resultPaging(
						$page, $limit, EventModel::count(),
						EventModel::take($limit)->skip(($page-1)*$limit)->where("private","=",0)->where("startDate","=",$date_now)->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime'))
				);

		}

		if($type == 3)
		{
				$result = CommonFunction::resultPaging(
						$page, $limit, EventModel::count(),
						EventModel::take($limit)->skip(($page-1)*$limit)->where("private","=",0)->where("startDate","=",$tomorrow)->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime'))
				);


		}

		if($type == 4)
		{
				$result = CommonFunction::resultPaging(
						$page, $limit, EventModel::count(),
						EventModel::take($limit)->skip(($page-1)*$limit)->where("private","=",0)->where("startDate",">",$tomorrow)->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime'))
				);


		}

		
		if($type == 4)
		{
				$result = CommonFunction::resultPaging(
						$page, $limit, EventModel::count(),
						EventModel::take($limit)->skip(($page-1)*$limit)->where("private","=",0)->get(array('id', 'name','description', 'avenueName','avanueAddress','latitude','longitude','coverImage','facebook','twitter','line','website','host','categoryId','status','private','share','userId','startDate','endDate','time','startTime','endTime'))
				);


		}


		return $result;


	}

	public static function CheckAccessRight($event_id, $user_id) {
		$event = EventModel::where('id', '=', $event_id)->first();
		if (count($event) == 0) {
			return '{"success":false, "item":null}';
		} else if ($event->private == 1 && $event->user_id != $user_id) {
			$participant = EventParticipantModel::where("event_id", "=", $event_id)->where("user_id", "=", $user_id)->get();
			
			$event->hasAccess = (count($participant) > 0);

		} else {
			$event->hasAccess = true;
		}
		
		return '{"success":true, "item":' . $event . '}';
	}
	
}