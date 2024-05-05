/// @description Insert description here
// You can write your code in this editor

// Movement
if (keyboard_check(vk_down) or keyboard_check(ord("S"))) {
	move_in_direction(0, 1);
}
if (keyboard_check(vk_up) or keyboard_check(ord("W"))) {
	move_in_direction(0, -1);
}
if (keyboard_check(vk_left) or keyboard_check(ord("A"))) {
	move_in_direction(-1, 0);
}
if (keyboard_check(vk_right) or keyboard_check(ord("D"))) {
	move_in_direction(1, 0);
}
if (keyboard_check(vk_shift)){
	_sprint = true;
} else {
	_sprint = false;
}

if (mouse_check_button_pressed(mb_left))
{
	instance_create_layer(x, y, "Instances", obj_bullet)
}

if (keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_right)){
	slow_time();
}

player_update() // Do a tick