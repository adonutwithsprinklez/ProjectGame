
if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))) {
	selected_option-=1;
} else if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("D"))) {
	selected_option+=1;
}

if (selected_option < 0) {
	selected_option = 0;
} else if (selected_option > array_length(btns)-1){
	selected_option = array_length(btns)-1;
}

// Check for select
if (keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)) {
	switch (selected_option) {
		case 0: // New Game
			room_goto_next();
			break;
		case 1: // Load Game (TODO)
			break;
		case 2: // Quit Game
			game_end();
			break;
	}
}