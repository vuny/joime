<?php

class FavoriteModel extends Eloquent
{
	protected $table = "favorite";

	protected $fillable = [
					'event_id'
					,'user_id'
					
	];
	public $timestamps = true;
	
}