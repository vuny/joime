<?php

class EventBlockModel extends Eloquent
{
	protected $table = "event_block";

	protected $fillable = [
					'event_id'
					,'user_id'
					
	];
	public $timestamps = true;
	
}