/// @description Insert description here
// You can write your code in this editor

// Calculate gametime
_game_time_precise += get_game_time_delta();
if (_game_time_precise > 1000000) {
	_game_time_precise -= 1000000;
	_game_time += 1;
}

