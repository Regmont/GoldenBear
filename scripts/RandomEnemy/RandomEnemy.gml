function get_random_enemy_sprite()
{
	var rand = round(random_range(0, 4));
	
	switch (rand)
	{
		case 0:
			return Sprite_default_enemy;
			break;
		case 1:
			return Sprite_blue_baby;
			break;
		case 2:
			return Sprite_black_baby;
			break;
		case 3:
			return Sprite_blackface;
			break;
		default:
			return Sprite_default_enemy;
			break;
	}
}

function get_reversed(img)
{
	switch(img)
	{
		case Sprite_default_enemy:
			return Sprite_default_enemy_2;
			break;
		case Sprite_blue_baby:
			return Sprite_blue_baby_reversed;
			break;
		case Sprite_black_baby:
			return Sprite_black_baby_reversed;
			break;
		case Sprite_blackface:
			return Sprite_blackface_reversed;
			break;
	}
}