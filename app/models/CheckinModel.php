<?php

class CheckinModel extends Eloquent
{
	protected $table = "checkin";

	protected $fillable = [
					'event_id'
					,'user_id'
					
	];
	public $timestamps = true;
	
}