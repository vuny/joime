<?php

class EventModel extends Eloquent
{
	protected $table = "event";

	protected $fillable = [
					'name'
					,'description'
					,'avenueName'
					,'avanueAddress'
					,'latitude'
					,'longitude'
					,'coverImage'
					,'facebook'
					,'twitter'
					,'line'
					,'website'
					,'host'
					,'categoryId'
					,'status'
					,'private'
					,'share'
					,'userId'
					,'startDate'
					,'endDate'
					,'time'
					,'startTime'
					,'endTime'
					,'avanueDirection'
					,'userId'
					,'favoriteCount'
					,'viewCount'
					,'checkInCount'
	];
	public $timestamps = true;
	
	public static function eventtype($eventtype)
	{
		//  eventtype 
		// 1 = upcoming
		// 2 = past
		// 3 = draft

		$datenow = date("Y-m-d");

		if($eventtype == 1)
		{

			return EventModel::where('startDate', '>', $datenow);

		}else if($eventtype == 2) {

			return EventModel::where('endDate', '<', $datenow);

		}else if($eventtype == 3) {

			return EventModel::where('status', '=', '0');
		}




	}

	
}