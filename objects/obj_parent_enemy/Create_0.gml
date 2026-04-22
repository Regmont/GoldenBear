depth = 1;
hp = 10;
enemy_speed = 5;
dmg = 1;
creator = noone;

img = get_random_enemy_sprite();

if (x > room_width / 2)
{
	img = get_reversed(img);
}