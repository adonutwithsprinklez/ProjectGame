/// @description Insert description here
// You can write your code in this editor

// Don't draw if not visible
if (!_visible) exit;

display_variable(0, "Game Speed", obj_game_manager.gv_game_speed);
display_variable(1, "Game Time Elapse", obj_game_manager.get_game_time_seconds());
display_variable(2, "Game Delta", obj_game_manager.get_game_time_delta());

display_variable(4, "Player Slow Time Activated", obj_player.slow_time_activated);
display_variable(5, "Player Slow Time Duration Left", obj_player.slow_time_duration_left);
display_variable(6, "Player Game Speed", obj_player.get_player_speed());

