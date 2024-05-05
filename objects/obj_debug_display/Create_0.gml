/// @description Insert description here
// You can write your code in this editor

_visible = obj_game_manager.DEBUG;


draw_set_font(font_default_18);

function setVisible(_visibility){
	_visibile = _visibility;
}

function display_variable(_num, _name, _val){
	draw_text(10, 10+(20*_num), _name + ": " + string(_val));
}