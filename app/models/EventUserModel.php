<?php

class EventUserModel extends Eloquent
{
	protected $table = "user";

	protected $fillable = [
					'name'
					,'email'
					,'type'
					,'password'
					,'status'
					,'created_at'
					,'updated_at'
					,'phone'
					,'facebookId'
					,'image'
					, 'description'
					, 'contactWebsite'
					, 'contactMobile'
					, 'contactAddress'
					, 'contactFacebook'
					, 'contactTwitter'
					, 'contactLINE'
					, 'contactWhatsapp'
					, 'contactInstagram'
					, 'language'
					, 'shareContact'
					, 'activated'
	];
	public $timestamps = true;
	
	
	
}