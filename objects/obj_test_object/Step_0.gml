/// @description Insert description here
// You can write your code in this editor

y += dir*spd*obj_game_manager.get_game_time_delta(true);

if (y > room_height or y <= 0) dir=dir*-1; // Bounce up and down (along the y axis)