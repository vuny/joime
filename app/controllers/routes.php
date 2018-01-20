<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', function()
{
	echo "Hi, Guest.";
	//header("Location: signin.html")
	//return View::make('hello');
});

/*
$user = array(
            'title' => Input::get('title'),
            'detail' => Input::get('detail'),
            'category_id' => Input::get('category_id'),
            'image' => Input::get('image'),
            'start_date' => Input::get('start_date'),
            'end_date' => Input::get('end_date'),
            'time' => Input::get('time'),
            'status' => Input::get('status')

        );
*/



//*********** Facebook Login **************//

Route::get("/fblogin/{data}", function($data) {
	return js_thai_encode(EventUserController::FacebookLogin($data));
});


Route::get("user/facebookLogin/{data}", function($data) {
	return js_thai_encode(EventUserController::FacebookLogin($data));
});


//Route::match(['get', 'post'], 'user/facebookLogin', ['uses' => 'EventUserController@FacebookLogin']);

//***********  Send Email Subscri **************//
//Route::post('subscri/create', ['uses' =>'SubscriController@Create']);
Route::match(['get', 'post'], 'subscri/create', ['uses' => 'SubscriController@Create']);

Route::match(['get', 'post'], 'subscri/del', ['uses' => 'SubscriController@Del']);



//************* Event Route **************//
Route::post('event/create', ['uses' =>'EventController@Create']);

Route::post('/event/edit', ['uses' =>'EventController@Edit']);

Route::match(['get', 'post'], 'user/event/block', ['uses' => 'EventUserController@EventBlock']);

Route::match(['get', 'post'], 'user/event/unblock', ['uses' => 'EventUserController@EventUnBlock']);

Route::match(['get', 'post'], 'user/event/request', ['uses' => 'EventUserController@EventRequest']);



Route::get("/event/del/{event_id}", function($event_id) {
	return js_thai_encode(EventController::EventDelete($event_id));
});

/*Route::get("/event/list/{page}", function($page) {
	return js_thai_encode(EventController::getEventList($page));
});
*/

/*
Route::get("/event/list/{type}/{page}", function($type,$page) {
	return js_thai_encode(EventController::getEventList($type,$page));
});
*/

Route::get("/event/list/{sat}/{sun}", function($sat,$sun) {
	return js_thai_encode(EventController::getEventListAll($sat,$sun));
});


Route::get("/event/list", function() {
	return js_thai_encode(EventController::getEventListAll('a','b'));
});


Route::match(['get', 'post'], 'event/search', ['uses' =>'EventController@Search']);



Route::post('/event/searchfilter', ['uses' =>'EventController@SearchFilter']);



//Route::post('/event/upcoming', ['uses' =>'EventController@Upcoming']);
Route::match(['get', 'post'], 'event/upcoming', ['uses' => 'EventController@Upcoming']);

Route::match(['get', 'post'], 'event/now', ['uses' => 'EventController@Upcoming']);


Route::get("/event/detail/{event_id}", function($event_id) {
	return js_thai_encode(EventController::getEventDetail($event_id));
});



//****************************************//


//************* User Route ****************//


Route::post('/user/create', ['uses' =>'EventUserController@Create']);

Route::post('/user/login', ['uses' =>'EventUserController@Login']);

Route::post('/user/edit', ['uses' =>'EventUserController@Edit']);


Route::get("/user/del/{user_id}", function($user_id) {
	return js_thai_encode(EventUserController::UserDelete($user_id));
});

Route::get("/user/list/{page}", function($page) {
	return js_thai_encode(EventUserController::getUserList($page));
});



Route::get("/user/favorite/list/{id}", function($id) {
	return js_thai_encode(EventUserController::getUserFavorite($id));
});

Route::post('/user/favorite/add', ['uses' =>'EventUserController@FavoriteAdd']);


Route::match(['get', 'post'], 'user/favorite/delete', ['uses' => 'EventUserController@FavoriteDel']);


Route::get("/user/event/list/{event_type}/{id}", function($event_type,$id) {
	return js_thai_encode(EventUserController::getUserEventList($event_type,$id));
});


Route::get("/user/notice/{id}", function($id) {
	return js_thai_encode(EventUserController::getUserNotice($id));
});

Route::get("/user/event/approve/{event_id/{user_id}", function($event_id,$user_id) {
	return js_thai_encode(EventUserController::getUserEventApprove($event_id,$user_id));
});

Route::get("/user/suggestion/list/{user_id}", function($id) {
	return js_thai_encode(EventUserController::getUserSuggestion($id));
});

Route::get("/user/suggestion/detail/{suggestion_id}", function($suggestion_id) {
	return js_thai_encode(EventUserController::getUserSuggestionDetail($suggestion_id));
});


Route::post('/user/suggestion/add', ['uses' =>'EventUserController@SuggestionCreate']);


Route::get("/user/suggestion/del/{suggestion_id}", function($suggestion_id) {
	return js_thai_encode(EventUserController::getUserSuggestionDel($suggestion_id));
});


//*****************************************//




function js_thai_encode($data)
{	// fix all thai elements


	$sv = Request::server('SERVER_SOFTWARE');
	
	if (strpos($sv,"Ubuntu") !== false)
	{		
		
	}
	else
	{
		return $data;
	}

	if (is_array($data))
	{
		foreach($data as $a => $b)
		{
			if (is_array($data[$a]))
			{
				$data[$a] = js_thai_encode($data[$a]);
			}
			else if (is_object($data[$a]))
			{
				$vars = array_keys(get_object_vars($data[$a]));
				foreach($vars as $var)
				{
					$data[$a]->$var = js_thai_encode($data[$a]->$var);
				}
			}
			else
			{
				$data[$a] = iconv("tis-620","utf-8",$b);
			}
		}
	}
	else if (is_object($data))
	{
		$vars = array_keys(get_object_vars($data));
		foreach($vars as $var)
		{
			$data->$var = js_thai_encode($data->$var);
		}
	}
	else
	{
		$data =iconv("tis-620","utf-8",$data);
	}
	return $data;

}

//TaskSchedule::runTask();

