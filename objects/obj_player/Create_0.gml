/// @description Insert description here
// You can write your code in this editor

// Variables
_sprint = false;
_angle = 0;
_rspeed = 190.0; //The higher the values, the faster the rotation
_dir = 0; //Direction used only for rotation

// SLOW TIME VARIABLES
slow_time_activated = false;
slow_time_duration_left = 0;

// Functions

function get_player_speed() {
	spd = _player_speed;
	
	// TODO: Future modifers here
	if (slow_time_activated){
		fh = slow_time_duration_left > (slow_time_duration-2);
		bh = slow_time_duration_left < 2;
		spd = spd * 5;
	}
	
	return spd;
}

function move_in_direction(_horizontal_speed, _vertical_speed){
	move_spd = _walk_speed;
	if (_sprint) move_spd = _sprint_speed;
	
	x += _horizontal_speed * move_spd * _player_speed * obj_game_manager.get_game_time_delta(true, false);
	y += _vertical_speed * move_spd * _player_speed * obj_game_manager.get_game_time_delta(true, false);
}

function slow_time(){
	if slow_time_activated return;
	slow_time_activated = true;
	slow_time_duration_left = slow_time_duration;
}

function slow_time_tick(){
	dt = obj_game_manager.get_game_time_delta(true, false);
	
	slow_time_duration_left -= dt;
	if (slow_time_duration_left <= 0){
		slow_time_activated = false;
		slow_time_duration_left = 0;
	}
}

function player_update(){
	if (obj_game_manager.is_paused()) {
		exit;
	}
	
	slow_time_tick();
	
	pd = point_direction(x, y, mouse_x, mouse_y);
	dd = angle_difference(image_angle, pd);
	image_angle -= min(abs(dd), _rspeed) * sign(dd);
}