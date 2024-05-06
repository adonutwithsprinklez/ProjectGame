
if (keyboard_check_pressed(vk_escape)){
	_paused = !_paused;
}


// Exit if paused
if (_paused){
	exit;
}

// Calculate gametime
_game_time_precise += get_game_time_delta();
if (_game_time_precise > 1000000) {
	_game_time_precise -= 1000000;
	_game_time += 1;
}