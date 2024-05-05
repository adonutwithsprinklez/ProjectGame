/// @description Insert description here
// You can write your code in this editor

DEBUG = true;

// Local variables
_game_time = 0; // Game time is stored in seconds, useful for setting events
                // that occur at X time
_game_time_precise = 0; // This stores the delta time each step until it
                        // reaches 1, then it increments _game_time

// Global variables
gv_game_speed = 1.0;


// Local functions


/*------
START UP
-------*/

if DEBUG instance_create_layer(0, 0, "HUD", obj_debug_display);


// Global functions
function get_game_time_delta(_convert_time=false, _include_player=true) {
	time = delta_time * gv_game_speed;
	if _include_player time = time / obj_player.get_player_speed();
	if _convert_time time = time/1000000;
	return time;
}

function get_game_time_seconds(_precise=true){
	if _precise return _game_time + (_game_time_precise/1000000);
	return _game_time;
}