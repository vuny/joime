<?php

class EventParticipantModel extends Eloquent
{
	protected $table = "event_participant";

	protected $fillable = [
					'id'
					,'event_id'
					,'user_id'
				
	];
	public $timestamps = true;
	
}