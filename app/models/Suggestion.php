<?php

class SuggestionkModel extends Eloquent
{
	protected $table = "suggestion";

	protected $fillable = [
					'id'
					,'event_id'
					,'user_id'
					,'detail'
					
	];
	public $timestamps = true;
	
}