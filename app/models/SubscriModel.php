<?php

class SubscriModel extends Eloquent
{
	protected $table = "subscri";

	protected $fillable = [
					'email',
					'token'
					
	];
	public $timestamps = true;	
	
}